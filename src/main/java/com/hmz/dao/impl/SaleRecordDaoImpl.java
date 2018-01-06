package com.hmz.dao.impl;

import com.hmz.dao.SaleRecordDao;
import com.hmz.entity.SaleRecord;
import com.hmz.util.MyHibaernateTemplate;
import com.sun.org.apache.xpath.internal.operations.String;
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
}
