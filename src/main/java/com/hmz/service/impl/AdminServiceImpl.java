package com.hmz.service.impl;

import com.hmz.dao.AdminDao;
import com.hmz.entity.Admin;
import com.hmz.service.AdminService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class AdminServiceImpl implements AdminService {

    @Resource
    private AdminDao adminDao;

    public boolean adminLogin(Admin admin) {
        boolean login = adminDao.adminLogin(admin);
        if (login) {
            return true;
        } else
            return false;
    }
}
