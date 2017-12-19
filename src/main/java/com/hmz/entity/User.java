package com.hmz.entity;


import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

/**
 * @Author Hu mingzhi
 * Created by ThinKPad on 2017/9/8.
 */
@Entity
@Table(name = "user")
public class User {

    @Id
    @GeneratedValue(generator = "id")
    @GenericGenerator(name = "id", strategy = "native")
    private int id;
    @Column(name="number", length=255) // phone
    private String number;
    @Column(name="name", length=255)
    private String name;
    @Column(name="password", length=255)
    private String password;
    @Column(name="mes", length=255) //id_card
    private String mes;


    public User(int id, String number, String name, String password, String mes) {
        this.id = id;
        this.number = number;
        this.name = name;
        this.password = password;
        this.mes = mes;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getMes() {
        return mes;
    }

    public void setMes(String mes) {
        this.mes = mes;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", number='" + number + '\'' +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                ", mes='" + mes + '\'' +
                '}';
    }

    public User() {
    }
}
