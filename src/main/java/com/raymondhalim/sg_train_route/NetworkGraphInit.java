package com.raymondhalim.sg_train_route;

import com.raymondhalim.sg_train_route.service.NetworkService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

@Component
public class NetworkGraphInit implements CommandLineRunner {

    @Autowired
    private NetworkService networkService;

    @Override
    public void run(String... args) throws Exception {
        networkService.initGraph();
    }
    
}
