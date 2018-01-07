package com.hmz.util;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.io.*;
import java.util.Scanner;

public class UserCounterListener implements ServletContextListener {

    public void contextDestroyed(ServletContextEvent arg0){
      ServletContext sc = arg0.getServletContext();
      Integer count = (Integer) sc.getAttribute("AccessCount");
     try {
         // 将人数保存到文本文件
         PrintWriter out = new PrintWriter(new FileWriter("E:\\WorkSpace\\IdeaWorkSpace\\mavenSSH\\src\\main\\resources\\count.txt"));
         System.out.println("count:" + count);
         out.write(count+"");
         out.flush();
         out.close();
     }catch (IOException e) {
         e.printStackTrace();
     }
    }
    public void contextInitialized(ServletContextEvent arg0) {
    Integer count = 0;
    ServletContext sc = arg0.getServletContext();
    try {
        Scanner in = new Scanner(new FileReader("E:\\WorkSpace\\IdeaWorkSpace\\mavenSSH\\src\\main\\resources\\count.txt"));
        // 读取已经产生的人数信息，然后进行累加
        count = in.nextInt();
        System.out.println("count:" + count);
        in.close();
    } catch (FileNotFoundException e) {
        e.printStackTrace();
    }
        sc.setAttribute("AccessCount", count);
    }
}
