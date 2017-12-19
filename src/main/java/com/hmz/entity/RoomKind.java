package com.hmz.entity;

import javax.persistence.*;

@Entity
@Table(name = "room_kind", schema = "hotelmanagement", catalog = "")
public class RoomKind {
    private int kindId;
    private String roomKind;
    private String introduction;

    @Id
    @Column(name = "kind_id", nullable = false)
    public int getKindId() {
        return kindId;
    }

    public void setKindId(int kindId) {
        this.kindId = kindId;
    }

    @Basic
    @Column(name = "room_kind", nullable = false, length = 255)
    public String getRoomKind() {
        return roomKind;
    }

    public void setRoomKind(String roomKind) {
        this.roomKind = roomKind;
    }

    @Basic
    @Column(name = "introduction", nullable = false, length = 255)
    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        RoomKind roomKind1 = (RoomKind) o;

        if (kindId != roomKind1.kindId) return false;
        if (roomKind != null ? !roomKind.equals(roomKind1.roomKind) : roomKind1.roomKind != null) return false;
        if (introduction != null ? !introduction.equals(roomKind1.introduction) : roomKind1.introduction != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = kindId;
        result = 31 * result + (roomKind != null ? roomKind.hashCode() : 0);
        result = 31 * result + (introduction != null ? introduction.hashCode() : 0);
        return result;
    }
}
