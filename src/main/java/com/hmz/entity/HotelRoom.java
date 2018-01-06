package com.hmz.entity;

import javax.persistence.*;

@Entity
@Table(name = "hotel_room", schema = "hotelmanagement", catalog = "")
public class HotelRoom {
    private int roomId;
    private Integer hotelId;
    private String location;
    private String roomKind;
    private double price;
    private int usingState;
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
    @Column(name = "hotel_id", nullable = true)
    public Integer getHotelId() {
        return hotelId;
    }

    public void setHotelId(Integer hotelId) {
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
    @Column(name = "room_kind", nullable = false, length = 255)
    public String getRoomKind() {
        return roomKind;
    }

    public void setRoomKind(String roomKind) {
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
    @Column(name = "using_State", nullable = false)
    public int getUsingState() {
        return usingState;
    }

    public void setUsingState(int usingState) {
        this.usingState = usingState;
    }

    @Basic
    @Column(name = "register_time", nullable = true, length = 255)
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

        HotelRoom room = (HotelRoom) o;

        if (roomId != room.roomId) return false;
        if (Double.compare(room.price, price) != 0) return false;
        if (usingState != room.usingState) return false;
        if (hotelId != null ? !hotelId.equals(room.hotelId) : room.hotelId != null) return false;
        if (location != null ? !location.equals(room.location) : room.location != null) return false;
        if (roomKind != null ? !roomKind.equals(room.roomKind) : room.roomKind != null) return false;
        if (registerTime != null ? !registerTime.equals(room.registerTime) : room.registerTime != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result;
        long temp;
        result = roomId;
        result = 31 * result + (hotelId != null ? hotelId.hashCode() : 0);
        result = 31 * result + (location != null ? location.hashCode() : 0);
        result = 31 * result + (roomKind != null ? roomKind.hashCode() : 0);
        temp = Double.doubleToLongBits(price);
        result = 31 * result + (int) (temp ^ (temp >>> 32));
        result = 31 * result + usingState;
        result = 31 * result + (registerTime != null ? registerTime.hashCode() : 0);
        return result;
    }
}
