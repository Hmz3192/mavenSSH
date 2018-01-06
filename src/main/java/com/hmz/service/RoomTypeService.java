package com.hmz.service;

import com.hmz.entity.RoomKind;

import java.util.List;

public interface RoomTypeService {

    public List<RoomKind> getAllType();

    public void addType(RoomKind roomKind);

    public void delete(int roomId);

    public RoomKind getOneByRoomId(Integer kindId);
}
