package com.ex.hd.domain;

public class Course {
    private int id;
    private String unitName;
    private int personNum;
    private int clickNum;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUnitName() {
        return unitName;
    }

    public void setUnitName(String unitName) {
        this.unitName = unitName;
    }

    public int getPersonNum() {
        return personNum;
    }

    public void setPersonNum(int personNum) {
        this.personNum = personNum;
    }

    public int getClickNum() {
        return clickNum;
    }

    public void setClickNum(int clickNum) {
        this.clickNum = clickNum;
    }

    @Override
    public String toString() {
        return "Course{" +
                "id=" + id +
                ", unitName='" + unitName + '\'' +
                ", personNum=" + personNum +
                ", clickNum=" + clickNum +
                '}';
    }
}
