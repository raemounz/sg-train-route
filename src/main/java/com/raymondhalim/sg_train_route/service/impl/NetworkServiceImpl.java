package com.raymondhalim.sg_train_route.service.impl;

import com.raymondhalim.sg_train_route.model.NetworkEntity;
import com.raymondhalim.sg_train_route.model.NetworkNode;
import com.raymondhalim.sg_train_route.model.NetworkRelationship;
import com.raymondhalim.sg_train_route.model.NetworkShortestPath;
import com.raymondhalim.sg_train_route.service.NetworkService;
import org.neo4j.driver.Driver;
import org.neo4j.driver.Record;
import org.neo4j.driver.Session;
import org.neo4j.driver.types.Node;
import org.neo4j.driver.types.Relationship;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class NetworkServiceImpl implements NetworkService {

    static final String TOTAL_COST = "totalCost";
    static final String NODE_CODES = "nodeCodes";

    @Autowired
    private Driver driver;

    @Override
    public Map<String, Set<NetworkEntity>> getNetwork() throws Exception {
        Map<String, Set<NetworkEntity>> network = new HashMap<>();
        Set<NetworkEntity> nodes = new HashSet<>();
        Set<NetworkEntity> relationships = new HashSet<>();

        try (Session session = driver.session()) {
            String query = "MATCH (n)-[r]-(m) RETURN n,r,m";
            List<Record> records = session.run(query).list();
            for (Record record : records) {
                Map<String, Object> recordMap = record.asMap();
                Map<Long, NetworkNode> nodeMap = new HashMap<>();

                // Create nodes
                Arrays.asList("n", "m").forEach(nodeVariable -> {
                    if (nodeVariable != null && recordMap.get(nodeVariable) != null) {
                        Node node = (Node) recordMap.get(nodeVariable);
                        nodes.add(createNode(node, nodeMap));
                    }
                });

                // Create relationships
                Arrays.asList("r").forEach(relVariable -> {
                    if (relVariable != null && recordMap.get(relVariable) != null) {
                        Relationship relationship = (Relationship) recordMap.get(relVariable);
                        relationships.add(createRelationship(relationship, nodeMap));
                    }
                });
            }
            network.put("nodes", nodes);
            network.put("edges", relationships);
            return network;
        }
    }

    private NetworkEntity createNode(Node node, Map<Long, NetworkNode> nodeMap) {
        NetworkNode networkNode = new NetworkNode((String) node.asMap().get("code"), node.labels().iterator().next(),
                node.asMap());
        nodeMap.put(node.id(), networkNode);
        return networkNode;
    }

    private NetworkEntity createRelationship(Relationship relationship, Map<Long, NetworkNode> nodeMap) {
        NetworkNode startNode = nodeMap.get(relationship.startNodeId());
        NetworkNode endNode = nodeMap.get(relationship.endNodeId());
        return new NetworkRelationship(relationship.id(), startNode.getId(), endNode.getId(), relationship.asMap());
    }

    @Override
    public void initGraph() throws Exception {
        try (Session session = driver.session()) {
            String query = "CALL gds.graph.create('SGTrainNetwork', 'Station', 'CONNECTS_TO', {relationshipProperties: 'travel_time_min'})";
            session.run(query);
        }
    }

    private void updateShortestPath(NetworkShortestPath networkShortestPath, Double totalCost, Map<String, Object> recordMap) {
        networkShortestPath.setTotalCost(totalCost);
        @SuppressWarnings("unchecked")
        List<String> nodes = (List<String>) recordMap.get(NODE_CODES);
        networkShortestPath.setNodes(nodes);
    }

    @Override
    public NetworkShortestPath getShortestRoutes(String from, String to) throws Exception {
        try (Session session = driver.session()) {
            String query = String.join(" ", 
                "MATCH (source:Station {code: '%s'}), (target:Station {code: '%s'})",
                "CALL gds.beta.shortestPath.dijkstra.stream('SGTrainNetwork', {",
                    "sourceNode: id(source),",
                    "targetNode: id(target),",
                    "relationshipWeightProperty: 'travel_time_min'",
                "})",
                "YIELD index, sourceNode, targetNode, totalCost, nodeIds, costs",
                "RETURN",
                    "index,",
                    "gds.util.asNode(sourceNode).code AS sourceNodeCode,", 
                    "gds.util.asNode(targetNode).code AS targetNodeCode,", 
                    "totalCost,", 
                    "[nodeId IN nodeIds | gds.util.asNode(nodeId).code] AS nodeCodes,", 
                    "costs",
                "ORDER BY index"
            );

            NetworkShortestPath networkShortestPath = new NetworkShortestPath(0d, Collections.<String> emptyList());
            List<Record> recordsFromTo = session.run(String.format(query, from, to)).list();
            if (!recordsFromTo.isEmpty()) {
                Map<String, Object> recordMap = recordsFromTo.get(0).asMap();
                updateShortestPath(networkShortestPath, (Double) recordMap.get(TOTAL_COST), recordMap);
            }
            List<Record> recordsToFrom = session.run(String.format(query, to, from)).list();
            if (!recordsToFrom.isEmpty()) {
                Map<String, Object> recordMap = recordsToFrom.get(0).asMap();
                Double totalCostToFrom = (Double) recordMap.get(TOTAL_COST);
                if (networkShortestPath.getTotalCost().compareTo(0d) == 0 || totalCostToFrom.compareTo(networkShortestPath.getTotalCost()) < 0) {
                    updateShortestPath(networkShortestPath, totalCostToFrom, recordMap);
                }
            }
            
            return networkShortestPath;
        }
    }

}
