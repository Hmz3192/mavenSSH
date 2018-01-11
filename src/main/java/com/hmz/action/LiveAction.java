package com.hmz.action;

import com.hmz.entity.HotelRoom;
import com.hmz.entity.RoomKind;
import com.hmz.entity.SaleRecord;
import com.hmz.entity.User;
import com.hmz.service.RoomService;
import com.hmz.service.RoomTypeService;
import com.hmz.service.SaleRecordService;
import com.hmz.service.UserService;
import com.hmz.util.SuperAction;
import com.opensymphony.xwork2.ModelDriven;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;

public class LiveAction extends SuperAction implements ModelDriven<SaleRecord> {

    private SaleRecord saleRecord = new SaleRecord();
    private String userName;
    private String telephone;
    private String idCard;
    private String type;
    private String roomNum;
    private String inYear;
    private String inMon;
    private String inDay;
    private String day;

    @Resource
    private UserService userService;
    @Resource
    private RoomTypeService roomTypeService;
    @Resource
    private RoomService roomService;
    @Resource
    private SaleRecordService saleRecordService;

    public String liveIn() {
        SaleRecord saleRecord = new SaleRecord();
        User user = new User();
        user.setVip(0);
        user.setAccount(userName);
        user.setIdCard(idCard);
        user.setPassword("123456");
        user.setPhone(telephone);
        System.out.println(userName+"");
        User andAdd = userService.findAndAdd(user);

        RoomKind byType = roomTypeService.findByType(type);
        HotelRoom room = roomService.findByNum(roomNum);

        saleRecord.setUserId(andAdd.getUserId());
        saleRecord.setHotelId(byType.getKindId());
        saleRecord.setMoneyState("未付款");
        saleRecord.setStartTime(inYear + "." + inMon + "." + inDay);
        saleRecord.setRoomId(room.getRoomId());
        saleRecord.setOperateKind("入住中");
        saleRecord.setWorkerId(0);
        Integer endDay = Integer.valueOf(inDay) + Integer.valueOf(day);
        if (endDay < 10) {
            String endDay2 = "0" + String.valueOf(endDay);
            saleRecord.setEndTime(inYear + "." + inMon + "." + endDay2);
        }else
            saleRecord.setEndTime(inYear + "." + inMon + "." + endDay);

        SimpleDateFormat df = new SimpleDateFormat("HH:mm:ss");//设置日期格式
//        System.out.println(df.format(new Date()));// new Date()为获取当前系统时间
        saleRecord.setOperateTime(df.format(new Date()));
        saleRecordService.addOne(saleRecord);
        return "liveInSuccess";
    }


    public String liveOut() {
        User user = new User();
        user.setAccount(userName);
        User andAdd = userService.findAndAdd(user);
        SaleRecord one = saleRecordService.getOne(andAdd.getUserId());
        one.setOperateKind("已离开");
        saleRecordService.changeState(one);
        return "outSuccess";
    }

    //预订房间
    public String bookRoom() {
        SaleRecord saleRecord = new SaleRecord();
        User user = new User();
        user.setVip(0);
        user.setAccount(userName);
        user.setIdCard("");
        user.setPassword("123456");
        user.setPhone(telephone);
        System.out.println(userName+"");
        User andAdd = userService.findAndAdd(user);


        RoomKind byType = roomTypeService.findByType(type);
        saleRecord.setUserId(andAdd.getUserId());
        saleRecord.setHotelId(byType.getKindId());
        saleRecord.setMoneyState("未付款");
        saleRecord.setStartTime(inYear + "." + inMon + "." + inDay);
        saleRecord.setOperateKind("以预定");
        saleRecord.setWorkerId(0);
        Integer endDay = Integer.valueOf(inDay) + Integer.valueOf(day);
        if (endDay < 10) {
            String endDay2 = "0" + String.valueOf(endDay);
            saleRecord.setEndTime(inYear + "." + inMon + "." + endDay2);
        }else
            saleRecord.setEndTime(inYear + "." + inMon + "." + endDay);
        SimpleDateFormat df = new SimpleDateFormat("HH:mm:ss");//设置日期格式
        saleRecord.setOperateTime(df.format(new Date()));
        saleRecordService.addOne(saleRecord);
        SuperAction.getContextInstance().getSession().put("order", "true");

        return "BookSuccess";


    }

    //结账
    public String finishBook() {
        SaleRecord oldOne = saleRecordService.getOne(saleRecord.getUserId());
        oldOne.setOperateKind("已离开");
        oldOne.setMoneyState("已付款");
        saleRecordService.changeState(oldOne);
        return "finishBook";
    }


    //删除预定
    public String deleteBooking() {
        User user1 = (User) SuperAction.getContextInstance().getSession().get("user");
//        user.setAccount(userName);
        User andAdd = userService.findAndAdd(user1);
        saleRecordService.deleteOneBooking(andAdd.getUserId());
        SuperAction.getContextInstance().getSession().remove("order");
        return "deleteSuccess";
    }

    public SaleRecord getSaleRecord() {
        return saleRecord;
    }

    public void setSaleRecord(SaleRecord saleRecord) {
        this.saleRecord = saleRecord;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getRoomNum() {
        return roomNum;
    }

    public void setRoomNum(String roomNum) {
        this.roomNum = roomNum;
    }

    public String getInYear() {
        return inYear;
    }

    public void setInYear(String inYear) {
        this.inYear = inYear;
    }

    public String getInMon() {
        return inMon;
    }

    public void setInMon(String inMon) {
        this.inMon = inMon;
    }

    public String getInDay() {
        return inDay;
    }

    public void setInDay(String inDay) {
        this.inDay = inDay;
    }

    public String getDay() {
        return day;
    }

    public void setDay(String day) {
        this.day = day;
    }

    public SaleRecord getModel() {
        return saleRecord;
    }
}
