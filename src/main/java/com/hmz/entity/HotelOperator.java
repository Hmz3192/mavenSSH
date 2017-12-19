package com.hmz.entity;

import javax.persistence.*;

@Entity
@Table(name = "hotel_operator", schema = "hotelmanagement", catalog = "")
public class HotelOperator {
    private int operateId;
    private String account;
    private String password;
    private Integer hotelId;
    private String rankValue;
    private String phone;
    private String idCard;

    @Id
    @Column(name = "operate_id", nullable = false)
    public int getOperateId() {
        return operateId;
    }

    public void setOperateId(int operateId) {
        this.operateId = operateId;
    }

    @Basic
    @Column(name = "account", nullable = false, length = 255)
    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    @Basic
    @Column(name = "password", nullable = false, length = 255)
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Basic
    @Column(name = "hotel_id", nullable = true)
    public Integer getHotelId() {
        return hotelId;
    }

    public void setHotelId(Integer hotelId) {
        this.hotelId = hotelId;
    }

    @Basic
    @Column(name = "rank_value", nullable = false, length = 1)
    public String getRankValue() {
        return rankValue;
    }

    public void setRankValue(String rankValue) {
        this.rankValue = rankValue;
    }

    @Basic
    @Column(name = "phone", nullable = true, length = 255)
    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Basic
    @Column(name = "id_card", nullable = false, length = 255)
    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        HotelOperator that = (HotelOperator) o;

        if (operateId != that.operateId) return false;
        if (account != null ? !account.equals(that.account) : that.account != null) return false;
        if (password != null ? !password.equals(that.password) : that.password != null) return false;
        if (hotelId != null ? !hotelId.equals(that.hotelId) : that.hotelId != null) return false;
        if (rankValue != null ? !rankValue.equals(that.rankValue) : that.rankValue != null) return false;
        if (phone != null ? !phone.equals(that.phone) : that.phone != null) return false;
        if (idCard != null ? !idCard.equals(that.idCard) : that.idCard != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = operateId;
        result = 31 * result + (account != null ? account.hashCode() : 0);
        result = 31 * result + (password != null ? password.hashCode() : 0);
        result = 31 * result + (hotelId != null ? hotelId.hashCode() : 0);
        result = 31 * result + (rankValue != null ? rankValue.hashCode() : 0);
        result = 31 * result + (phone != null ? phone.hashCode() : 0);
        result = 31 * result + (idCard != null ? idCard.hashCode() : 0);
        return result;
    }
}
