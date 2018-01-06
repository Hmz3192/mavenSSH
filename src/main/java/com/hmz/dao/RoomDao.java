package com.hmz.dao;

import com.hmz.entity.HotelRoom;

import java.util.List;

public interface RoomDao {

    public List<HotelRoom> getAllRoom();

    public void addRoom(HotelRoom room);


    void delete(int roomId);

    public HotelRoom getOneRoom(Integer roomId);
}
