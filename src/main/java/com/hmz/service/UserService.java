package com.hmz.service;

import com.hmz.entity.User;

import java.util.List;

/**
 * @Author Hu mingzhi
 * Created by ThinKPad on 2017/9/8.
 */
public interface  UserService {

    public boolean login(User user);

    public List<User> queryAll();

    public boolean delete(int id);

    public void add(User user);

    public User queryOne(Integer id);

    public void updateOne(User user);

    public User findAndAdd(User user);


}
