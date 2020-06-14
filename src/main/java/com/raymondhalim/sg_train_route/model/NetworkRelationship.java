package com.raymondhalim.sg_train_route.model;

import java.util.Map;

public class NetworkRelationship {

    private Long id;
    private Long from;
    private String fromCode;
    private Long to;
    private String toCode;
    private Map<String, Object> properties;

    public NetworkRelationship(Long id, Long from, String fromCode, Long to, String toCode, Map<String, Object> properties) {
        this.id = id;
        this.from = from;
        this.fromCode = fromCode;
        this.to = to;
        this.toCode = toCode;
        this.properties = properties;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getFrom() {
        return from;
    }

    public void setFrom(Long from) {
        this.from = from;
    }

    public String getFromCode() {
        return fromCode;
    }

    public void setFromCode(String fromCode) {
        this.fromCode = fromCode;
    }

    public Long getTo() {
        return to;
    }

    public void setTo(Long to) {
        this.to = to;
    }

    public String getToCode() {
        return toCode;
    }

    public void setToCode(String toCode) {
        this.toCode = toCode;
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
