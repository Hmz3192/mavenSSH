package com.hmz.dao.impl;

import com.hmz.dao.OperatorDao;
import com.hmz.entity.HotelOperator;
import com.hmz.entity.HotelRoom;
import com.hmz.util.MyHibaernateTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class OperatorDapImpl extends MyHibaernateTemplate implements OperatorDao {


    public boolean login(HotelOperator hotelOperator) {
        String hql = "from HotelOperator u where u.account = ? and u.password = ?";
        List<HotelOperator> hotelOperators = (List<HotelOperator>) this.template.find(hql, new Object[]{hotelOperator.getAccount(), hotelOperator.getPassword()});
        if (hotelOperators.size() > 0) {
            return true;
        } else
            return false;
    }

    public List<HotelOperator> queryAll() {
        String hql = "from HotelOperator";
        List<HotelOperator> operators = (List<HotelOperator>) this.template.find(hql);
        return operators;
    }
    public void delete(int oparatorId) {
        this.template.bulkUpdate("delete from HotelOperator where operateId=" + oparatorId);

    }
    public void addOperator(HotelOperator hotelOperator) {
        this.template.save(hotelOperator);
    }

}
