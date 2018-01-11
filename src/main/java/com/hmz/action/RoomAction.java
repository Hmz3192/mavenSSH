package com.hmz.action;

import com.hmz.entity.HotelRoom;
import com.hmz.entity.RoomKind;
import com.hmz.pojo.RoomSale;
import com.hmz.service.RoomService;
import com.hmz.service.RoomTypeService;
import com.hmz.util.SuperAction;
import com.opensymphony.xwork2.ModelDriven;
import org.springframework.context.annotation.Scope;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Scope("prototype")
public class RoomAction extends SuperAction implements ModelDriven<HotelRoom> {

    private HotelRoom hotelRoom = new HotelRoom();

    @Resource
    private RoomService roomService;

    @Resource
    private RoomTypeService roomTypeService;

    public String getAllRoom() {
        List<HotelRoom> rooms = roomService.getAllRoom();

        //往request里放attribute
//        context.put("userList",userList);
        //往session里放
        System.out.println(rooms.get(0));
        SuperAction.getContextInstance().getSession().put("rooms",rooms);
        return "getAdminRoom";
    }


    public String addRoom() {
        roomService.addRoom(hotelRoom);
        return "addRoomSuccess";
    }
    public String delete() {
        roomService.delete(hotelRoom.getRoomId());
        return "roomDeleteSuccess";
    }

    public String getAllRoomInFont() {
        List<HotelRoom> rooms = roomService.getAllRoom();
        List<RoomSale> roomSales = new ArrayList<RoomSale>();
        for (HotelRoom room : rooms) {
            RoomSale roomSale = new RoomSale();
            RoomKind byType = roomTypeService.findByType(room.getRoomKind());

            roomSale.setIntroduction(byType.getIntroduction());
            roomSale.setName(byType.getRoomKind());
            roomSale.setPrice(String.valueOf(room.getPrice()));
            roomSale.setUrl(byType.getPic());

            roomSales.add(roomSale);

        }

        SuperAction.getContextInstance().getSession().put("roomSales", roomSales);
        return "getFontRoomSuccess";
    }




    public HotelRoom getModel() {
        return hotelRoom;
    }
}
