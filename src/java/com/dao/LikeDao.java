/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LikeDao {

    Connection con;

    public LikeDao(Connection con) {
        this.con = con;
    }

    public boolean inserLikes(int pid, int uid) {
            boolean f=false;
        try {
            String q = "insert into likes(pid,uid) values(?,?)";
            PreparedStatement psmt = con.prepareStatement(q);
            psmt.setInt(1, pid);
             psmt.setInt(2, uid);
             psmt.executeUpdate();
             f=true;
        } catch (Exception e) {
        }
        return f;
    }
    public int countLikesOnPost(int pid){
        int count=0;
        try {
            String qString="select count(*) from likes where pid=?";
            PreparedStatement ps=con.prepareStatement(qString);
            ps.setInt(1, pid);
            ResultSet rs=ps.executeQuery();
            if (rs.next()) {
                count=rs.getInt("count(*)");
                
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
       return count;
    }
    public boolean isLikesByUser(int pid,int uid){
        boolean f=false;
        try {
            String q="select *from likes where pid=? and uid=?";
            PreparedStatement ps=con.prepareStatement(q);
            ps.setInt(1, pid);
            ps.setInt(2, uid);
         ResultSet rs=   ps.executeQuery();
            if(rs.next()){
                f=true;
            }
        } catch (Exception e) {
        }
        return f;
    }
    public boolean deleteLike(int pid,int uid){
        boolean f=false;
        try {
            PreparedStatement ps=con.prepareStatement("delete from likes where pid=? and uid=?");
            ps.setInt(1, pid);
            ps.setInt(2, uid);
               ps.executeUpdate();
           
                f=true;
          
        } catch (Exception e) {
        }
        return f;
    }
}
