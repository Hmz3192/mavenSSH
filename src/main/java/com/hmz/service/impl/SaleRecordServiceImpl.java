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
        SaleRecord oneSaleRecord = saleRecordDao.getOneSaleRecord(userId);
            return oneSaleRecord;

    }

    public List<SaleRecord> getAllBooking() {
        return saleRecordDao.getAllBooking();
    }

}
