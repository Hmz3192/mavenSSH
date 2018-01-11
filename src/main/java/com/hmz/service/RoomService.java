package com.hmz.service;

import com.hmz.entity.HotelRoom;

import java.util.List;

public interface RoomService {
    HotelRoom findByNum(String num);

    public List<HotelRoom> getAllRoom();

    public void addRoom(HotelRoom hotelRoom);

    public void delete(int roomId);

    public HotelRoom getOne(Integer roomId);
}
