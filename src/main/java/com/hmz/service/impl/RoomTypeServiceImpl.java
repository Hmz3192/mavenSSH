package com.hmz.service.impl;

import com.hmz.dao.RoomTypeDao;
import com.hmz.entity.RoomKind;
import com.hmz.service.RoomTypeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class RoomTypeServiceImpl implements RoomTypeService{

    @Resource
    private RoomTypeDao roomTypeDao;

    public List<RoomKind> getAllType() {
        List<RoomKind> allType = roomTypeDao.getAllType();
        return allType;
    }

    public void addType(RoomKind roomKind) {
        roomTypeDao.addType(roomKind);
    }

    public void delete(int roomId) {
        roomTypeDao.delete(roomId);
    }

    public RoomKind getOneByRoomId(Integer kindId) {
        return roomTypeDao.getOneByKind(kindId);
    }
}
