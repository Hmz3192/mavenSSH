package com.hmz.action;

import com.hmz.entity.RoomKind;
import com.hmz.service.RoomTypeService;
import com.hmz.util.SuperAction;
import com.opensymphony.xwork2.ModelDriven;
import org.springframework.context.annotation.Scope;

import javax.annotation.Resource;
import java.util.List;

@Scope("prototype")
public class RoomTypeAction extends SuperAction implements ModelDriven<RoomKind> {

    private RoomKind roomKind = new RoomKind();
    @Resource
    private RoomTypeService roomTypeService;

    public String getAllType() {
        List<RoomKind> roomKinds = roomTypeService.getAllType();
        //往request里放attribute
//        context.put("userList",userList);
        //往session里放
        SuperAction.getContextInstance().getSession().put("roomKinds",roomKinds);
        return "toAdminRoomType";
    }

    public String addType() {
        roomTypeService.addType(roomKind);
        return "addTypeSuccess";
    }

    public String delete() {
        roomTypeService.delete(roomKind.getKindId());
        return "typeDeleteSuccess";
    }

    public RoomKind getModel() {
        return roomKind;
    }
}
