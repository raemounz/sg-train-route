package com.raymondhalim.sg_train_route.service;

import java.util.*;

import com.raymondhalim.sg_train_route.model.NetworkEntity;
import com.raymondhalim.sg_train_route.model.NetworkShortestPath;

public interface NetworkService {

    Map<String, Set<NetworkEntity>> getNetwork() throws Exception;

    NetworkShortestPath getShortestRoutes(String from, String to) throws Exception;

    void initGraph() throws Exception;

}
