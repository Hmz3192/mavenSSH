package com.hmz.pojo;

public class BookingUser {

    private Integer id;
    private String roomKind;
    private String name;
    private String inDay;
    private String liveDay;
    private String state;

    public BookingUser() {
    }

    public Integer getId() {

        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getRoomKind() {
        return roomKind;
    }

    public void setRoomKind(String roomKind) {
        this.roomKind = roomKind;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getInDay() {
        return inDay;
    }

    public void setInDay(String inDay) {
        this.inDay = inDay;
    }

    public String getLiveDay() {
        return liveDay;
    }

    public void setLiveDay(String liveDay) {
        this.liveDay = liveDay;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public BookingUser(Integer id, String roomKind, String name, String inDay, String liveDay, String state) {

        this.id = id;
        this.roomKind = roomKind;
        this.name = name;
        this.inDay = inDay;
        this.liveDay = liveDay;
        this.state = state;
    }
}
