package com.hmz.action;

import com.hmz.entity.Admin;
import com.hmz.entity.RoomKind;
import com.hmz.service.AdminService;
import com.hmz.util.SuperAction;
import com.opensymphony.xwork2.ModelDriven;
import org.springframework.context.annotation.Scope;

import javax.annotation.Resource;

@Scope("prototype")
public class AdminAction extends SuperAction implements ModelDriven<Admin>{

    private Admin admin = new Admin();

    //前往管理员登陆页面
    public String toLogin() {
        return "toAdminLogin";
    }

    @Resource
    private AdminService adminService;

    public String login() {
        boolean login = adminService.adminLogin(admin);
        if (login) {
            return "adminLoginSuccess";
        }
        else
            return "adminLoginFail";
    }



    public Admin getModel() {
        return admin;
    }
}
