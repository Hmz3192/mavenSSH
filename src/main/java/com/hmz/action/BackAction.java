package com.hmz.action;

import com.hmz.entity.User;
import com.hmz.util.SuperAction;
import com.opensymphony.xwork2.ModelDriven;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

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
}
