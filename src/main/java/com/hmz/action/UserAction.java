package com.hmz.action;

import com.hmz.entity.User;
import com.hmz.service.UserService;
import com.hmz.util.SuperAction;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import javax.annotation.Resource;
import javax.servlet.ServletException;
import java.util.List;

/**
 * @Author Hu mingzhi
 * Created by ThinKPad on 2017/9/8.
 */
@Controller
@Scope("prototype")
public class UserAction extends SuperAction implements ModelDriven<User>{

    @Resource
    private UserService userService;
    private User user = new User();
    //登陆
    public String login() {
        boolean login = userService.login(user);
        if (login) {
            return SUCCESS;
        }
        else
            return "fail";
    }
    //查找所有酒店及房间
    public String queryAll( ) {
        ActionContext context=ActionContext.getContext();
        List<User> userList = userService.queryAll();
        //往request里放attribute
//        context.put("userList",userList);
        //往session里放
        context.getSession().put("userList",userList);
        return "querySuccess";
    }
    //删除酒店，房间
    public String delete() {

        Integer id = Integer.valueOf(request.getParameter("id"));
        boolean delete = userService.delete(id);
        return "delete_success";

    }
    //查找所有人
    public String queryList( ) {
        ActionContext context=ActionContext.getContext();
        List<User> userList = userService.queryAll();
        //往request里放attribute
//        context.put("userList",userList);
        //往session里放
        context.getSession().put("userList",userList);
        return "queryListSuccess";
    }
    //增加房间
    public String add() {
        userService.add(user);
        return "add_success";
    }
    //编辑房间
    public String edit() {
        Integer id = Integer.valueOf(request.getParameter("id"));
        User user = userService.queryOne(id);
        session.setAttribute("user", user);
        return "edit_success";
    }
    //更新房间
    public String update() {
        userService.updateOne(user);
        return "update_success";
    }
    //退出
    public String out() {
        session.invalidate();
        try {
            request.logout();
        } catch (ServletException e) {
            e.printStackTrace();
        }
        return "out_success";
    }

    public User getModel() {

        return user;
    }
}
