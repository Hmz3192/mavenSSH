package com.hmz.entity;

import javax.persistence.*;

@Entity
@Table(name = "hotel_room", schema = "hotelmanagement", catalog = "")
public class HotelRoom {
    private int roomId;
    private int hotelId;
    private String location;
    private int roomKind;
    private double price;
    private String usingState;
    private String registerTime;

    @Id
    @Column(name = "room_id", nullable = false)
    public int getRoomId() {
        return roomId;
    }

    public void setRoomId(int roomId) {
        this.roomId = roomId;
    }

    @Basic
    @Column(name = "hotel_id", nullable = false)
    public int getHotelId() {
        return hotelId;
    }

    public void setHotelId(int hotelId) {
        this.hotelId = hotelId;
    }

    @Basic
    @Column(name = "location", nullable = false, length = 255)
    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    @Basic
    @Column(name = "room_kind", nullable = false)
    public int getRoomKind() {
        return roomKind;
    }

    public void setRoomKind(int roomKind) {
        this.roomKind = roomKind;
    }

    @Basic
    @Column(name = "price", nullable = false, precision = 0)
    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    @Basic
    @Column(name = "using_State", nullable = false, length = 1)
    public String getUsingState() {
        return usingState;
    }

    public void setUsingState(String usingState) {
        this.usingState = usingState;
    }

    @Basic
    @Column(name = "register_time", nullable = false, length = 255)
    public String getRegisterTime() {
        return registerTime;
    }

    public void setRegisterTime(String registerTime) {
        this.registerTime = registerTime;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        HotelRoom hotelRoom = (HotelRoom) o;

        if (roomId != hotelRoom.roomId) return false;
        if (hotelId != hotelRoom.hotelId) return false;
        if (roomKind != hotelRoom.roomKind) return false;
        if (Double.compare(hotelRoom.price, price) != 0) return false;
        if (location != null ? !location.equals(hotelRoom.location) : hotelRoom.location != null) return false;
        if (usingState != null ? !usingState.equals(hotelRoom.usingState) : hotelRoom.usingState != null) return false;
        if (registerTime != null ? !registerTime.equals(hotelRoom.registerTime) : hotelRoom.registerTime != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result;
        long temp;
        result = roomId;
        result = 31 * result + hotelId;
        result = 31 * result + (location != null ? location.hashCode() : 0);
        result = 31 * result + roomKind;
        temp = Double.doubleToLongBits(price);
        result = 31 * result + (int) (temp ^ (temp >>> 32));
        result = 31 * result + (usingState != null ? usingState.hashCode() : 0);
        result = 31 * result + (registerTime != null ? registerTime.hashCode() : 0);
        return result;
    }
}
