package com.hmz.action;

import com.hmz.entity.Admin;
import com.hmz.entity.HotelOperator;
import com.hmz.service.AdminService;
import com.hmz.service.OperatorService;
import com.hmz.util.SuperAction;
import com.opensymphony.xwork2.ModelDriven;
import org.springframework.context.annotation.Scope;

import javax.annotation.Resource;

@Scope("prototype")
public class AdminAction extends SuperAction implements ModelDriven<Admin>{

    private Admin admin = new Admin();

    private String checkbox;

    public String getCheckbox() {
        return checkbox;
    }

    public void setCheckbox(String checkbox) {
        this.checkbox = checkbox;
    }
    @Resource
    private OperatorService operatorService;

    //前往管理员登陆页面
    public String toLogin() {
        return "toAdminLogin";
    }

    @Resource
    private AdminService adminService;

    public String login() {
        if (checkbox.equalsIgnoreCase("工作人员")) {
            HotelOperator hotelOperator = new HotelOperator();
            hotelOperator.setAccount(admin.getAccount());
            hotelOperator.setPassword(admin.getPassword());
            boolean login = operatorService.operatorLogin(hotelOperator);
            if (login) {
                return "operatorLoginSuccess";
            }
            else
                return "operatorLoginFail";
        }
        else {
            boolean login = adminService.adminLogin(admin);
            if (login) {
                return "adminLoginSuccess";
            }
            else
                return "adminLoginFail";
        }

    }

    public Admin getModel() {
        return admin;
    }
}
