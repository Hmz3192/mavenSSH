package com.hmz.dao.impl;

import com.hmz.dao.AdminDao;
import com.hmz.entity.Admin;
import com.hmz.util.MyHibaernateTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class AdminDaoImpl extends MyHibaernateTemplate implements AdminDao{



    public boolean adminLogin(Admin admin) {
        String hql = "from Admin u where u.account = ? and u.password = ?";
        List<Admin> admins = (List<Admin>) this.template.find(hql, new Object[]{admin.getAccount(), admin.getPassword()});
        if (admins.size() > 0) {
            return true;
        } else
            return false;
    }





}
