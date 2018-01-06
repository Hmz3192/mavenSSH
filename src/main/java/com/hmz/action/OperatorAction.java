package com.hmz.action;


import com.hmz.entity.HotelOperator;
import com.hmz.service.OperatorService;
import com.hmz.util.SuperAction;
import com.opensymphony.xwork2.ModelDriven;
import org.springframework.context.annotation.Scope;

import javax.annotation.Resource;
import java.util.List;

@Scope("prototype")
public class OperatorAction extends SuperAction implements ModelDriven<HotelOperator>{
    @Resource
    private OperatorService operatorService;

    private HotelOperator hotelOperator = new HotelOperator();

    public String login() {
        boolean login = operatorService.operatorLogin(hotelOperator);
        if (login) {
            return "operatorLoginSuccess";
        }
        else
            return "operatorLoginFail";
    }

    public String queryOperator() {
        List<HotelOperator> hotelOperators = operatorService.queryAll();
        SuperAction.getContextInstance().getSession().put("hotelOperators", hotelOperators);
        return "getOperator";
    }

    public String delete() {
        operatorService.delete(hotelOperator.getOperateId());
        return "userDeleteSuccess";
    }

    public String addOperator() {
        operatorService.addOperator(hotelOperator);
        return "addOperatorSuccess";
    }
    public HotelOperator getModel() {
        return hotelOperator;
    }
}
