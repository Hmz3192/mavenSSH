package com.hmz.dao;

import com.hmz.entity.SaleRecord;

import java.util.List;

public interface SaleRecordDao {

    public SaleRecord getOneSaleRecord(Integer userId);

    List<SaleRecord> getAllBooking();

    void addOne(SaleRecord saleRecord);

    void changeState(SaleRecord saleRecord);

    SaleRecord getOneIn(Integer userId);

    void deleteOneBooking(Integer userId);

    SaleRecord getOneNoPay(Integer userId, String state);
}
