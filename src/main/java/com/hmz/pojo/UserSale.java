package com.hmz.pojo;

public class UserSale {

    private Integer id;
    private String name;
    private String type;
    private String roomLocation;
    private String inDay;
    private String outDay;
    private String money;
    private Integer vip;
    private String liveState;
    private String monenyState;
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getRoomLocation() {
        return roomLocation;
    }

    public void setRoomLocation(String roomLocation) {
        this.roomLocation = roomLocation;
    }

    public String getInDay() {
        return inDay;
    }

    public void setInDay(String inDay) {
        this.inDay = inDay;
    }

    public String getOutDay() {
        return outDay;
    }

    public void setOutDay(String outDay) {
        this.outDay = outDay;
    }

    public String getMoney() {
        return money;
    }

    public void setMoney(String money) {
        this.money = money;
    }

    public Integer getVip() {
        return vip;
    }

    public void setVip(Integer vip) {
        this.vip = vip;
    }

    public UserSale() {
    }

    public UserSale(Integer id, String name, String type, String roomLocation, String inDay, String outDay, String money, Integer vip, String liveState, String monenyState) {
        this.id = id;
        this.name = name;
        this.type = type;
        this.roomLocation = roomLocation;
        this.inDay = inDay;
        this.outDay = outDay;
        this.money = money;
        this.vip = vip;
        this.liveState = liveState;
        this.monenyState = monenyState;
    }

    public String getLiveState() {

        return liveState;
    }

    public void setLiveState(String liveState) {
        this.liveState = liveState;
    }

    public String getMonenyState() {
        return monenyState;
    }

    public void setMonenyState(String monenyState) {
        this.monenyState = monenyState;
    }
}
