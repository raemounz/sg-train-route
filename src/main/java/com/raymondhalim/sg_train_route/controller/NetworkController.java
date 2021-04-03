package com.raymondhalim.sg_train_route.controller;

import com.raymondhalim.sg_train_route.model.NetworkEntity;
import com.raymondhalim.sg_train_route.service.NetworkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.*;

@RestController
@RequestMapping("/network")
public class NetworkController {

    @Autowired
    private NetworkService networkService;

    @GetMapping("/all")
    public Map<String, Set<NetworkEntity>> getNetwork() throws Exception {
        return networkService.getNetwork();
    }

}
