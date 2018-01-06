package com.hmz.util;

import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;

@Repository
public class MyHibaernateTemplate {
    protected HibernateTemplate template;

    @Resource(name="hibernateTemplate")
    public void setTemplate(HibernateTemplate template) {
        this.template = template;
    }
}
