package com.beans;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

public class DAO {
    public void InsertInformation(Information information) {
        Connection conn;
        Statement stat;
        try {
            String sql_query = "SELECT MAX(id) FROM information";
            conn = DBHelper.getConnection();
            stat = conn.createStatement();
            ResultSet rs = stat.executeQuery(sql_query); rs.next();
            int insert_id = rs.getInt("MAX(id)") + 1;
            String sql_insert = "INSERT INTO information(title, content, id, time) VALUES(?, ?, ?, now())";
            PreparedStatement ps = conn.prepareStatement(sql_insert);
            ps.setString(1, information.getInformation_title());
            ps.setString(2, information.getInformation_content());
            ps.setInt(3, insert_id);
            ps.executeUpdate();
            ps.close();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
    public ArrayList ShowInformation() {
        // SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        String sql_query = "SELECT * FROM information";
        Connection conn;
        Statement stat;
        ArrayList<Information> arrayList = new ArrayList<>();
        int i = 0;
        try {
            conn = DBHelper.getConnection();
            stat = conn.createStatement();
            ResultSet rs = stat.executeQuery(sql_query);
            for(; i < 5; i++) {
                rs.next();
                Information information = new Information();
                information.setInformation_title(rs.getString("title"));
                information.setInformation_content(rs.getString("content"));
                information.setInformation_time(rs.getDate("time"));
                information.setInformation_id(rs.getInt("id"));
                arrayList.add(information);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return arrayList;
    }
    public void DeleteInformation(int id) {
        String sql_query = "DELETE FROM information WHERE id = '"+id+"'";
        Connection conn;
        Statement stat;
        try {
            conn = DBHelper.getConnection();
            stat = conn.createStatement();
            stat.executeUpdate(sql_query);
            stat.close();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
    public void InsertVisitInfo(Visitor visitor) {
        Connection conn;
        Statement stat;
        try {
            String sql_query = "SELECT MAX(id) FROM visitor";
            conn = DBHelper.getConnection();
            stat = conn.createStatement();
            ResultSet rs = stat.executeQuery(sql_query); rs.next();
            int insert_id = rs.getInt("MAX(id)") + 1;
            String sql_insert = "INSERT INTO visitor(name, tel_or_wx, classify, question, id, time) VALUES(?, ?, ?, ?, ?, now())";
            PreparedStatement ps = conn.prepareStatement(sql_insert);
            ps.setString(1, visitor.getName());
            ps.setString(2, visitor.getTel_or_wx());
            ps.setString(3, visitor.getClassify());
            ps.setString(4, visitor.getQuestion());
            ps.setInt(5, insert_id);
            ps.executeUpdate();
            ps.close();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
    public ArrayList ShowOrder() {
        // SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        String sql_query = "SELECT * FROM visitor";
        Connection conn;
        Statement stat;
        ArrayList<Visitor> arrayList = new ArrayList<>();
        try {
            conn = DBHelper.getConnection();
            stat = conn.createStatement();
            ResultSet rs = stat.executeQuery(sql_query);
            while(rs.next()) {
                Visitor visitor = new Visitor();
                visitor.setName(rs.getString("name"));
                visitor.setTel_or_wx(rs.getString("tel_or_wx"));
                visitor.setClassify(rs.getString("classify"));
                visitor.setQuestion(rs.getString("question"));
                visitor.setVisitId(rs.getInt("id"));
                visitor.setDate(rs.getDate("time"));
                visitor.setTime(rs.getTime("time"));
                arrayList.add(visitor);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return arrayList;
    }
    public void DeleteOrder(int id) {
        String sql_query = "DELETE FROM visitor WHERE id = '"+id+"'";
        Connection conn;
        Statement stat;
        try {
            conn = DBHelper.getConnection();
            stat = conn.createStatement();
            stat.executeUpdate(sql_query);
            stat.close();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
}
