package com.raymondhalim.sg_train_route.model;

import java.util.List;

public class NetworkShortestPath {
    private Double totalCost;
    private List<String> nodes;

    public NetworkShortestPath(Double totalCost, List<String> nodes) {
        this.totalCost = totalCost;
        this.nodes = nodes;
    }

    public Double getTotalCost() {
        return totalCost;
    }

    public void setTotalCost(Double totalCost) {
        this.totalCost = totalCost;
    }

    public List<String> getNodes() {
        return nodes;
    }

    public void setNodes(List<String> nodes) {
        this.nodes = nodes;
    }
}
