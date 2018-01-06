package com.hmz.util;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.util.Scanner;

/**
 * @Author Hu mingzhi
 * Created by ThinKPad on 2018/1/6.
 */
public class UserCounterListener implements ServletContextListener {
    //下面两个方法监听网站点击
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        Integer count = 0;
        ServletContext sc = servletContextEvent.getServletContext();
        try {
            Scanner in = new Scanner(new FileReader("E:\\Lab\\src.txt"));
            // 读取已经产生的人数信息，然后进行累加
            count = in.nextInt();
            System.out.println(count);
            in.close();
        }catch (FileNotFoundException e){
            e.printStackTrace();
        }
        sc.setAttribute("AccessCount", count);
    }

    public void contextDestroyed(ServletContextEvent servletContextEvent) {
        ServletContext sc = servletContextEvent.getServletContext();
        Integer count = (Integer) sc.getAttribute("AccessCount");
        try {
            PrintWriter out = new PrintWriter(new FileWriter("E:\\Lab\\src.txt"));// 将人数保存到文本文件
            System.out.println("count:" + count);
            out.print(count);
            out.flush();
            out.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
