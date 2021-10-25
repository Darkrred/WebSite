package com.beans;

import java.util.Date;

public class Information {
    private String information_title;
    private String information_content;
    private int information_id;
    private Date information_time;

    public void setInformation_title(String information_title) { this.information_title = information_title; }
    public String getInformation_title() {
        return information_title;
    }
    public void setInformation_content(String information_content) {
        this.information_content = information_content;
    }
    public String getInformation_content() {
        return information_content;
    }
    public void setInformation_id(int information_id) { this.information_id = information_id; }
    public int getInformation_id() { return information_id; }
    public void setInformation_time(Date information_time) { this.information_time = information_time; }
    public Date getInformation_time() { return information_time; }
}
