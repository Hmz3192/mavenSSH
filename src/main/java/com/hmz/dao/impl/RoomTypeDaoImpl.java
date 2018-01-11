package com.hmz.dao.impl;

import com.hmz.dao.RoomTypeDao;
import com.hmz.entity.RoomKind;
import com.hmz.util.MyHibaernateTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class RoomTypeDaoImpl extends MyHibaernateTemplate implements RoomTypeDao {


    public List<RoomKind> getAllType() {
        String hql = "from RoomKind ";
        List<RoomKind> roomKinds = (List<RoomKind>) this.template.find(hql);
        return roomKinds;
    }

    public void addType(RoomKind roomKind) {
            this.template.save(roomKind);
    }

    public void delete(int id) {
        this.template.bulkUpdate("delete from RoomKind where kindId=" + id);
    }

    public RoomKind getOneByKind(Integer kindId) {
        List<RoomKind> userList = (List<RoomKind>) this.template.find("from RoomKind u where u.kindId = ?", new Integer(kindId));
        RoomKind user = userList.get(0);
        return user;

    }

    public RoomKind findByType(String type) {
        List<RoomKind> userList = (List<RoomKind>) this.template.find("from RoomKind u where u.roomKind = ?", type);
        RoomKind user = userList.get(0);
        return user;
    }


}
