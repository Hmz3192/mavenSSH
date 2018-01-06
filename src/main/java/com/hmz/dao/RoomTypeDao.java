package com.hmz.dao;

import com.hmz.entity.RoomKind;

import java.util.List;

public interface RoomTypeDao {

    public List<RoomKind> getAllType();

    public void addType(RoomKind roomKind);

    public void delete(int id);

    RoomKind getOneByKind(Integer kindId);

}
