package com.hmz.service.impl;

import com.hmz.dao.SaleRecordDao;
import com.hmz.entity.SaleRecord;
import com.hmz.service.SaleRecordService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class SaleRecordServiceImpl implements SaleRecordService {

    @Resource
    private SaleRecordDao saleRecordDao;

    public SaleRecord getOne(Integer userId) {
        return saleRecordDao.getOneSaleRecord(userId);
    }

    public List<SaleRecord> getAllBooking() {
        return saleRecordDao.getAllBooking();
    }

    public void addOne(SaleRecord saleRecord) {
        saleRecordDao.addOne(saleRecord);
    }

    public void changeState(SaleRecord saleRecord) {
        saleRecordDao.changeState(saleRecord);
    }

    public SaleRecord getOneIn(Integer userId) {

        return saleRecordDao.getOneIn(userId);
    }

    public void deleteOneBooking(Integer userId) {
        saleRecordDao.deleteOneBooking(userId);
    }

    public SaleRecord getOneNoPay(Integer userId, String state) {
        return saleRecordDao.getOneNoPay(userId,state);
    }

}
