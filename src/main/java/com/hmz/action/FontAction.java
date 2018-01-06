package com.hmz.action;

import com.hmz.util.SuperAction;
import org.springframework.context.annotation.Scope;

@Scope("prototype")
public class FontAction extends SuperAction {

    //前往前台界面
    public String toIndex() {
        return "toIndex";
    }

    //前往展示界面
    public String toList() {
        return "toList";
    }
    //前往展示界面
    public String toUser() {


        return "toUser";
    }

    //前往前台登陆界面
    public String toLogin() {
        return "toLogin";
    }
}
