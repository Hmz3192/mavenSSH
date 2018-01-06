package com.hmz.service;

import com.hmz.entity.SaleRecord;

import java.util.List;

public interface SaleRecordService {

    public SaleRecord getOne(Integer userId);

    List<SaleRecord> getAllBooking();
}
