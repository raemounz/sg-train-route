package com.raymondhalim.sg_train_route.model;

import java.util.Map;

public class NetworkRelationship {

    private Long id;
    private String from;
    private String to;
    private Map<String, Object> properties;

    public NetworkRelationship(Long id, String from, String to, Map<String, Object> properties) {
        this.id = id;
        this.from = from;
        this.to = to;
        this.properties = properties;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFrom() {
        return from;
    }

    public void setFrom(String from) {
        this.from = from;
    }

    public String getTo() {
        return to;
    }

    public void setTo(String to) {
        this.to = to;
    }

    public Map<String, Object> getProperties() {
        return properties;
    }

    public void setProperties(Map<String, Object> properties) {
        this.properties = properties;
    }

    @Override
    public int hashCode() {
        return id.hashCode() + from.hashCode() + to.hashCode();
    }

    @Override
    public boolean equals(Object obj) {
        return obj instanceof NetworkRelationship &&
                ((NetworkRelationship) obj).getId().equals(this.getId()) &&
                ((NetworkRelationship) obj).getFrom().equals(this.getFrom()) &&
                ((NetworkRelationship) obj).getTo().equals(this.getTo());
    }

}
