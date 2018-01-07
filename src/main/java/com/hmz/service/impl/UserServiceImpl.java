package com.hmz.service.impl;

import com.hmz.dao.UserDao;
import com.hmz.entity.User;
import com.hmz.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Author Hu mingzhi
 * Created by ThinKPad on 2017/9/8.
 */

@Service
public class UserServiceImpl implements UserService {


    @Resource
    private UserDao userDao;


    public boolean login(User user) {
        boolean login = userDao.login(user);
        if (login) {
            return true;
        } else
            return false;
    }

    public List<User> queryAll() {

        return userDao.queryAll();

    }

    public boolean delete(int id) {
        boolean delete = userDao.delete(id);
        if (delete) {
            return true;
        }
        return false;
    }

    public void add(User user) {
        userDao.add(user);

    }

    public User queryOne(Integer id) {
        return userDao.queryOne(id);
    }

    public void updateOne(User user) {
        userDao.updateOne(user);

    }

    public User findAndAdd(User user) {
        User andAdd = userDao.findAndAdd(user);
        return andAdd;
    }
}
