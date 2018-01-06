package com.hmz.dao;

import com.hmz.entity.HotelOperator;

import java.util.List;

public interface OperatorDao {

    public boolean login(HotelOperator hotelOperator);

    public List<HotelOperator> queryAll();

    public void delete(int OperatorId);

    public void addOperator(HotelOperator operator);



}
