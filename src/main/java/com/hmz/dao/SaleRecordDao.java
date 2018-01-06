package com.hmz.dao;

import com.hmz.entity.SaleRecord;

import java.util.List;

public interface SaleRecordDao {

    public SaleRecord getOneSaleRecord(Integer userId);

    List<SaleRecord> getAllBooking();

}
