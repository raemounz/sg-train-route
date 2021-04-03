package com.raymondhalim.sg_train_route.service;

import java.util.*;

import com.raymondhalim.sg_train_route.model.NetworkEntity;

public interface NetworkService {

    Map<String, Set<NetworkEntity>> getNetwork() throws Exception;

}
