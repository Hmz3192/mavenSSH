package com.hmz.dao.impl;

import com.hmz.dao.RoomDao;
import com.hmz.entity.HotelRoom;
import com.hmz.entity.RoomKind;
import com.hmz.entity.User;
import com.hmz.util.MyHibaernateTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class RoomDaoImpl extends MyHibaernateTemplate implements RoomDao {
    public List<HotelRoom> getAllRoom() {
            String hql = "from HotelRoom";
            List<HotelRoom> rooms = (List<HotelRoom>) this.template.find(hql);
            return rooms;
        }

    public void addRoom(HotelRoom room) {
        this.template.save(room);
    }

    public void delete(int roomId) {
        this.template.bulkUpdate("delete from HotelRoom where roomId=" + roomId);

    }

    public HotelRoom getOneRoom(Integer roomId) {
        List<HotelRoom> rooms = (List<HotelRoom>) this.template.find("from HotelRoom u where u.roomId = ?", new Integer(roomId));
        HotelRoom hotelRoom = rooms.get(0);
        return hotelRoom;

    }

}
