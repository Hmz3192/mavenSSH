package com.hmz.dao.impl;

import com.hmz.dao.UserDao;
import com.hmz.entity.User;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Author Hu mingzhi
 * Created by ThinKPad on 2017/9/8.
 */
@Repository
public class UserDaoImpl implements UserDao{

    private HibernateTemplate template;

    @Resource(name="hibernateTemplate")
    public void setTemplate(HibernateTemplate template) {
        this.template = template;
    }

    public boolean login(User user) {
        String hql = "from User u where u.account = ? and u.password = ?";
         List<User>  userList = (List<User>) this.template.find(hql, new Object[]{user.getAccount(),user.getPassword()});
        if (userList.size() > 0) {
            return true;
        }else
            return false;

    }

    public List<User> queryAll() {
        String hql = "from User";
        List<User> userList = (List<User>) this.template.find(hql);
        return userList;
    }

    public boolean delete(int id) {
        int i = this.template.bulkUpdate("delete from User where userId=" + id);
        if (i == 1) {
            return true;
        }
        return false;
    }

    public void add(User user) {
        this.template.save(user);
    }

    public User queryOne(Integer id) {
        List<User> userList = (List<User>) this.template.find("from User u where u.userId = ?", new Integer(id));
        User user = userList.get(0);
        return user;
    }

    public void updateOne(User user) {
        this.template.update(user);

    }
}
