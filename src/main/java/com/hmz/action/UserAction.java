package com.hmz.action;

import com.hmz.entity.HotelRoom;
import com.hmz.entity.RoomKind;
import com.hmz.entity.SaleRecord;
import com.hmz.entity.User;
import com.hmz.pojo.BookingUser;
import com.hmz.pojo.UserSale;
import com.hmz.service.RoomService;
import com.hmz.service.RoomTypeService;
import com.hmz.service.SaleRecordService;
import com.hmz.service.UserService;
import com.hmz.util.SuperAction;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;
import org.springframework.context.annotation.Scope;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @Author Hu mingzhi
 * Created by ThinKPad on 2017/9/8.
 */
@Scope("prototype")
public class UserAction extends SuperAction implements ModelDriven<User>{

    @Resource
    private UserService userService;
    @Resource
    private SaleRecordService saleRecordService;
    @Resource
    private RoomService roomService;
    @Resource
    private RoomTypeService roomTypeService;
    private User user = new User();
    //登陆
    public String Userlogin() {
        boolean login = userService.login(user);
        if (login) {
            SuperAction.getContextInstance().getSession().put("user",user);
            return "userLoginSuccess";
        }
        else
            return "fail";
    }

    public String addUser() {
        SuperAction.getContextInstance().getSession().put("user",user);
        user.setVip(0);
        userService.add(user);
        return "add_success";
    }

    public String getBookingUser() {
        List<User> users = userService.queryAll();
        List<SaleRecord> allBooking = saleRecordService.getAllBooking();
        List<BookingUser> bookingUsers = new ArrayList<BookingUser>();
        for (SaleRecord saleRecord : allBooking) {
            BookingUser bookingUser = new BookingUser();
            User user = userService.queryOne(saleRecord.getUserId());
            RoomKind oneByRoomId = roomTypeService.getOneByRoomId(saleRecord.getHotelId());


            bookingUser.setId(user.getUserId());
            bookingUser.setInDay(saleRecord.getStartTime());
            Integer outDay = Integer.valueOf(saleRecord.getEndTime().substring(saleRecord.getEndTime().length()-2,saleRecord.getEndTime().length()));;
            Integer inDay = Integer.valueOf(saleRecord.getStartTime().substring(saleRecord.getStartTime().length()-2,saleRecord.getStartTime().length()));;
            System.out.println(outDay + "-" + inDay);
            Integer day = outDay - inDay;
            bookingUser.setLiveDay(String.valueOf(day));
            bookingUser.setName(user.getAccount());
            bookingUser.setRoomKind(oneByRoomId.getRoomKind());
            bookingUser.setState("未取消");
            bookingUsers.add(bookingUser);
        }
        SuperAction.getContextInstance().getSession().put("bookingUsers",bookingUsers);
        return "getBookUser";
    }


    public String getAllUser() {
        List<UserSale> userSales = new ArrayList<UserSale>();
        List<User> users = userService.queryAll();
        for (User user : users) {
            UserSale userSale = new UserSale();
            SaleRecord one = saleRecordService.getOne(user.getUserId());
            HotelRoom room = roomService.getOne(one.getRoomId());
            userSale.setId(user.getUserId());
            userSale.setInDay(one.getStartTime());
            userSale.setOutDay(one.getEndTime());
            Integer outDay = Integer.valueOf(one.getEndTime().substring(one.getEndTime().length()-2,one.getEndTime().length()));;
            Integer inDay = Integer.valueOf(one.getStartTime().substring(one.getStartTime().length()-2,one.getStartTime().length()));;
            System.out.println(outDay + "-" + inDay);
            Integer day = outDay - inDay;
            System.out.println(day + "");
            userSale.setMoney(String.valueOf(room.getPrice() * day));
            userSale.setName(user.getAccount());
            userSale.setRoomLocation(room.getLocation());
            userSale.setType(room.getRoomKind());
            userSale.setVip(user.getVip());
            userSale.setMonenyState(one.getMoneyState());
            userSale.setLiveState(one.getOperateKind());
            userSales.add(userSale);
        }
        //往request里放attribute
//        context.put("userList",userList);
        //往session里放
        SuperAction.getContextInstance().getSession().put("userSales",userSales);
        return "getUserSales";
    }


    //退出
    public String out() {
        SuperAction.getContextInstance().getSession().clear();
        try {
            request.logout();
        } catch (ServletException e) {
            e.printStackTrace();
        }
        return "user_out";
    }












    //————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

    public String queryAll( ) {
        ActionContext context=ActionContext.getContext();
        List<User> userList = userService.queryAll();
        //往request里放attribute
//        context.put("userList",userList);
        //往session里放
        context.getSession().put("userList",userList);
        return "querySuccess";
    }
    public String delete() {

        Integer id = Integer.valueOf(request.getParameter("id"));
        boolean delete = userService.delete(id);
        return "delete_success";

    }
    public String queryList( ) {
        ActionContext context=ActionContext.getContext();
        List<User> userList = userService.queryAll();
        //往request里放attribute
//        context.put("userList",userList);
        //往session里放
        context.getSession().put("userList",userList);
        return "queryListSuccess";
    }
    public String add() {
        userService.add(user);
        return "add_success";
    }
    public String edit() {
        Integer id = Integer.valueOf(request.getParameter("id"));
        User user = userService.queryOne(id);
        session.setAttribute("user", user);
        return "edit_success";
    }
    public String update() {
        userService.updateOne(user);
        return "update_success";
    }


    public User getModel() {

        return user;
    }
}
