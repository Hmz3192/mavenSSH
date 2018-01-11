package com.hmz.entity;

import javax.persistence.*;

@Entity
@Table(name = "sale_record", schema = "hotelmanagement", catalog = "")
public class SaleRecord {
    private int id;
    private int userId;
    private Integer workerId;
    private Integer hotelId;
    private Integer roomId;
    private String operateTime;
    private String operateKind;
    private String startTime;
    private String endTime;
    private String moneyState;

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "user_id", nullable = false)
    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    @Basic
    @Column(name = "worker_id", nullable = true)
    public Integer getWorkerId() {
        return workerId;
    }

    public void setWorkerId(Integer workerId) {
        this.workerId = workerId;
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
    @Column(name = "room_id", nullable = true)
    public Integer getRoomId() {
        return roomId;
    }

    public void setRoomId(Integer roomId) {
        this.roomId = roomId;
    }

    @Basic
    @Column(name = "operate_time", nullable = false, length = 255)
    public String getOperateTime() {
        return operateTime;
    }

    public void setOperateTime(String operateTime) {
        this.operateTime = operateTime;
    }

    @Basic
    @Column(name = "operate_kind", nullable = false, length = 255)
    public String getOperateKind() {
        return operateKind;
    }

    public void setOperateKind(String operateKind) {
        this.operateKind = operateKind;
    }

    @Basic
    @Column(name = "start_time", nullable = false, length = 255)
    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    @Basic
    @Column(name = "end_time", nullable = false, length = 255)
    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    @Basic
    @Column(name = "money_state", nullable = false, length = 255)
    public String getMoneyState() {
        return moneyState;
    }

    public void setMoneyState(String moneyState) {
        this.moneyState = moneyState;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        SaleRecord that = (SaleRecord) o;

        if (id != that.id) return false;
        if (userId != that.userId) return false;
        if (workerId != null ? !workerId.equals(that.workerId) : that.workerId != null) return false;
        if (hotelId != null ? !hotelId.equals(that.hotelId) : that.hotelId != null) return false;
        if (roomId != null ? !roomId.equals(that.roomId) : that.roomId != null) return false;
        if (operateTime != null ? !operateTime.equals(that.operateTime) : that.operateTime != null) return false;
        if (operateKind != null ? !operateKind.equals(that.operateKind) : that.operateKind != null) return false;
        if (startTime != null ? !startTime.equals(that.startTime) : that.startTime != null) return false;
        if (endTime != null ? !endTime.equals(that.endTime) : that.endTime != null) return false;
        if (moneyState != null ? !moneyState.equals(that.moneyState) : that.moneyState != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + userId;
        result = 31 * result + (workerId != null ? workerId.hashCode() : 0);
        result = 31 * result + (hotelId != null ? hotelId.hashCode() : 0);
        result = 31 * result + (roomId != null ? roomId.hashCode() : 0);
        result = 31 * result + (operateTime != null ? operateTime.hashCode() : 0);
        result = 31 * result + (operateKind != null ? operateKind.hashCode() : 0);
        result = 31 * result + (startTime != null ? startTime.hashCode() : 0);
        result = 31 * result + (endTime != null ? endTime.hashCode() : 0);
        result = 31 * result + (moneyState != null ? moneyState.hashCode() : 0);
        return result;
    }

}
