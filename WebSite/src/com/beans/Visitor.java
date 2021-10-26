package com.beans;

import java.sql.Time;
import java.time.DateTimeException;
import java.util.Date;

public class Visitor {
    private String name;
    private String tel_or_wx;
    private String classify;
    private String question;
    private int visitId;
    private Date date;
    private Time time;

    public void setName(String name) { this.name = name; }
    public String getName() {
        return name;
    }
    public void setTel_or_wx(String tel_or_wx) { this.tel_or_wx = tel_or_wx; }
    public String getTel_or_wx() { return tel_or_wx; }
    public void setClassify(String classify) { this.classify = classify; }
    public String getClassify() { return classify; }
    public void setQuestion(String question) { this.question = question; }
    public String getQuestion() { return question; }
    public void setVisitId(int visitId) { this.visitId = visitId; }
    public int getVisitId() { return visitId; }
    public void setDate(Date date) { this.date = date; }
    public Date getDate() { return date; }
    public void setTime(Time time) { this.time = time; }
    public Time getTime() { return time; }
}
