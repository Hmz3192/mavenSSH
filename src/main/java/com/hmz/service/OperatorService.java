package com.hmz.service;

import com.hmz.entity.HotelOperator;

import java.util.List;

public interface OperatorService {

    public boolean operatorLogin(HotelOperator hotelOperator);

    public List<HotelOperator> queryAll();

    public void delete(int OperatorId);

    public void addOperator(HotelOperator operator);


}
