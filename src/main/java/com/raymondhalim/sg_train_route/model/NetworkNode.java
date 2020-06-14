package com.raymondhalim.sg_train_route.model;

import java.util.Map;

public class NetworkNode {

    private Long id;
    private String type;
    private Map<String, Object> properties;

    public NetworkNode(Long id, String type, Map<String, Object> properties) {
        this.id = id;
        this.type = type;
        this.properties = properties;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Map<String, Object> getProperties() {
        return properties;
    }

    public void setProperties(Map<String, Object> properties) {
        this.properties = properties;
    }

    @Override
    public int hashCode() {
        return id.hashCode();
    }

    @Override
    public boolean equals(Object obj) {
        return obj instanceof NetworkNode && ((NetworkNode) obj).getId().equals(this.getId());
    }

}
