package com.raymondhalim.sg_train_route.service.impl;

import com.raymondhalim.sg_train_route.model.NetworkEntity;
import com.raymondhalim.sg_train_route.model.NetworkNode;
import com.raymondhalim.sg_train_route.model.NetworkRelationship;
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

}
