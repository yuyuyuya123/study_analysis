package com.ex.hd.domain;

public class GenderTime {
    private int id;
    private int snum;
    private String gender;
    private int timeId;//1,2,3,4分别代表4个时间段，从0开始，每隔三个小时为一个时间段
    private String timeStr;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getSnum() {
        return snum;
    }

    public void setSnum(int snum) {
        this.snum = snum;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public int getTimeId() {
        return timeId;
    }

    public void setTimeId(int timeId) {
        this.timeId = timeId;
    }

    public String getTimeStr() {
        if (timeId==1){
            timeStr="0-3";
        }else if (timeId==2){
            timeStr="4-6";
        }else if (timeId==3){
            timeStr="7-9";
        }else if (timeId==4){
            timeStr="10-12";
        }
        return timeStr;
    }

    public void setTimeStr(String timeStr) {
        this.timeStr = timeStr;
    }
}
