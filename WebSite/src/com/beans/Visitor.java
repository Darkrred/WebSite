package com.beans;

public class Visitor {
    private String name;
    private String tel_or_wx;
    private String classify;
    private String question;

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
}
