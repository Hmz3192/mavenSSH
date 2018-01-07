package com.hmz.action;

import com.hmz.util.SuperAction;
import org.springframework.context.annotation.Scope;

/**
 * @Author Hu mingzhi
 * Created by ThinKPad on 2018/1/5.
 */
@Scope("prototype")
public class BackAction extends SuperAction{




    //前往操作员界面
    public String toOperator() {
            return "toOperator";
    }
    //前往预定管理界面
    public String toBook() {
        return "toBook";
    }

    //前往客户管理界面
    public String toCustomer() {
        return "toCustomer";
    }

    //前往客户管理界面
    public String tochart() {


        return "tochart";
    }
    //前往管理员房间界面
    public String toAdminRoom() {
        return "toAdminRoom";
    }
    //前往管理员用户界面
    public String toAdminUser() {

        return "toAdminUser";
    }
    //前往管理员房间类型界面
    public String toAdminRoomType() {

        return "toAdminRoomType";
    }

    //前往houtai
    public String toBack() {

        return "toBack";
    }

}
