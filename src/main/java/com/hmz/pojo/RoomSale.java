package com.hmz.pojo;

public class RoomSale {
    private String name;
    private String price;
    private String url;
    private String introduction;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public RoomSale() {
    }

    public RoomSale(String name, String price, String url, String introduction) {

        this.name = name;
        this.price = price;
        this.url = url;
        this.introduction = introduction;
    }
}
