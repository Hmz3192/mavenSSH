package com.hmz.util;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.util.ServletContextAware;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.util.Scanner;

/**
 * @Author Hu mingzhi
 * Created by ThinKPad on 2017/9/8.
 */
public class SuperAction extends ActionSupport implements ServletRequestAware,
        ServletContextAware, ServletResponseAware {
    protected HttpServletRequest request;
    protected HttpServletResponse response;
    protected HttpSession session;
    protected ServletContext application;
    private ActionContext context;


    public void setServletRequest(javax.servlet.http.HttpServletRequest request) {
        this.request =request;
        this.session = this.request.getSession();
    }

    public void setServletResponse(javax.servlet.http.HttpServletResponse response) {
        this.response = response;
    }


    protected  static ActionContext getContextInstance() {
        return ActionContext.getContext();
    }

    public void setServletContext(javax.servlet.ServletContext application) {
        this.application = application;
    }


}
