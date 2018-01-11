package com.file;

import org.junit.Test;

import java.io.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class fileReWrite {

    @Test
    public void test1() {
        String count = "25";
        try {
            // 将人数保存到文本文件
//        PrintWriter out = new PrintWriter(new FileWriter("E:\\WorkSpace\\IdeaWorkSpace\\mavenSSH\\src\\main\\resources\\count.txt"));
//        System.out.println("count:" + count);
//        out.write(count);
//        out.flush();
//        out.close();

            File f = new File("E:\\WorkSpace\\IdeaWorkSpace\\mavenSSH\\src\\main\\resources\\count.txt");
            OutputStreamWriter write = new OutputStreamWriter(new FileOutputStream(f),"UTF-8");
            BufferedWriter writer=new BufferedWriter(write);
            writer.write(count);
            writer.close();
        }catch (IOException e) {
        e.printStackTrace();
    }


    }
    @Test
    public void test2() {
        SimpleDateFormat df = new SimpleDateFormat("HH:mm:ss");//设置日期格式
        System.out.println(df.format(new Date()));// new Date()为获取当前系统时间
    }

}
