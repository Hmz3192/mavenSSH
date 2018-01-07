package com.hmz.service.impl;

import com.hmz.dao.RoomDao;
import com.hmz.entity.HotelRoom;
import com.hmz.service.RoomService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class RoomServiceImpl implements RoomService {

    @Resource
    private RoomDao roomDao;

    public HotelRoom findByNum(String num) {
        return roomDao.findByNum(num);
    }

    public List<HotelRoom> getAllRoom() {
        List<HotelRoom> allRoom = roomDao.getAllRoom();
        return allRoom;
    }

    public void addRoom(HotelRoom hotelRoom) {
        hotelRoom.setUsingState(0);
        roomDao.addRoom(hotelRoom);
    }

    public void delete(int roomId) {
        roomDao.delete(roomId);
    }

    public HotelRoom getOne(Integer roomId) {
        return roomDao.getOneRoom(roomId);
    }

}
