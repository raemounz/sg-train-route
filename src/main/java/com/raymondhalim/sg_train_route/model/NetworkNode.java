package com.raymondhalim.sg_train_route.model;

import java.util.Map;

public class NetworkNode extends NetworkEntity {

    private String id;
    private String type;

    public NetworkNode(String id, String type, Map<String, Object> properties) {
        this.id = id;
        this.type = type;
        this.properties = properties;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
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
