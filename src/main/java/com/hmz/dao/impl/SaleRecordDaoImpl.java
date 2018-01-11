package com.hmz.dao.impl;

import com.hmz.dao.SaleRecordDao;
import com.hmz.entity.SaleRecord;
import com.hmz.util.MyHibaernateTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class SaleRecordDaoImpl extends MyHibaernateTemplate implements SaleRecordDao {



    public SaleRecord getOneSaleRecord(Integer userId) {
        SaleRecord saleRecord = new SaleRecord();
        List<SaleRecord> saleRecords = (List<SaleRecord>) this.template.find("from SaleRecord u where u.userId = ?", new Integer(userId));
        if (saleRecords.size() > 0) {
            saleRecord = saleRecords.get(0);
        }

        return saleRecord;
    }

    public List<SaleRecord> getAllBooking() {
        List<SaleRecord> saleRecords = (List<SaleRecord>) this.template.find("from SaleRecord u where operateKind = ?", "以预定");
        return saleRecords;
    }

    public void addOne(SaleRecord saleRecord) {
        this.template.save(saleRecord);
    }

    public void changeState(SaleRecord saleRecord) {
        this.template.update(saleRecord);

    }

    public SaleRecord getOneIn(Integer userId) {
        SaleRecord saleRecord = new SaleRecord();
        List<SaleRecord> saleRecords = (List<SaleRecord>) this.template.find("from SaleRecord u where u.userId = ? and u.operateKind = ?", new Integer(userId),"入住中");
        if (saleRecords.size() > 0) {
            saleRecord = saleRecords.get(0);
        }
        return saleRecord;
    }

    public void deleteOneBooking(Integer userId) {
        this.template.bulkUpdate("delete from SaleRecord u where u.userId = ? and u.operateKind = ?", new Integer(userId),"以预定");
    }

    public SaleRecord getOneNoPay(Integer userId, String state) {
        SaleRecord saleRecord = new SaleRecord();
        List<SaleRecord> saleRecords = (List<SaleRecord>) this.template.find("from SaleRecord u where u.userId = ? and u.moneyState = ?", new Integer(userId), state);
        if (saleRecords.size() > 0) {
            saleRecord = saleRecords.get(0);
        }

        return saleRecord;
    }
}
