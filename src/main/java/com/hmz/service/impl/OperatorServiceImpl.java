package com.hmz.service.impl;

import com.hmz.dao.OperatorDao;
import com.hmz.entity.HotelOperator;
import com.hmz.service.OperatorService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class OperatorServiceImpl implements OperatorService {

    @Resource
    OperatorDao operatorDao;
    public boolean operatorLogin(HotelOperator hotelOperator) {
        boolean login = operatorDao.login(hotelOperator);
        if (login) {
            return true;
        } else
            return false;
    }

    public List<HotelOperator> queryAll() {

        return operatorDao.queryAll();
    }

    public void delete(int OperatorId) {
        operatorDao.delete(OperatorId);
    }

    public void addOperator(HotelOperator operator) {
        operatorDao.addOperator(operator);
    }
}
