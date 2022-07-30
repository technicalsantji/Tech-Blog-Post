/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

/**
 *
 * @author SANT JI
 */
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import sant.entity.Category;
import sant.entity.Post;
public class PostDao {
    
    Connection con;

    public PostDao(Connection con) {
        this.con = con;
    }
    public ArrayList<Category> getallcategory(){
        ArrayList<Category> list=new ArrayList<>();
        try {
            String q="select * from categoris";
            Statement st=this.con.createStatement();
            ResultSet rs=st.executeQuery(q);
            while (rs.next()) {                
                int cid=rs.getInt("cid");
                String category=rs.getString("cname");
                String description=rs.getString("description");
               
               Category t = new Category(cid, category, description);
               list.add(t);
            }
        } catch (SQLException e) {
        }
      return list;
    }
    public boolean savepost(Post p){
        boolean f=false;
        try {
            String q="insert into post(ptitle,pcontent,pcode,ppic,catid,uid) values(?,?,?,?,?,?)";
            PreparedStatement ps=this.con.prepareStatement(q);
            ps.setString(1,p.getPtitle());
            ps.setString(2,p.getPcontent());
            ps.setString(3,p.getPcode());
            ps.setString(4,p.getPpic());
            ps.setInt(5,p.getCatid()); 
            ps.setInt(6,p.getUid());
            ps.executeUpdate();
            f=true;
            
            
        } catch (Exception e) {
            e.printStackTrace();
        }
       return f;
    }
    
    public List<Post> getAllpost(){
        List<Post> list=new ArrayList<>();
        try {
            String q="select * from post";
            Statement stm=con.createStatement();
            ResultSet r=stm.executeQuery(q);
            while (r.next()) {  
                int pid=r.getInt("pid");
                String ptitle=r.getString("ptitle");
                String pcontent=r.getString("pcontent");
                String pcode=r.getString("pcode");
                String Ppic=r.getString("ppic");
                Timestamp pdate=r.getTimestamp("pdate");
                int catid=r.getInt("catid");
                int uid=r.getInt("uid");
                
                Post ps=new Post(pid, ptitle, pcontent, pcode, Ppic, pdate, catid, uid);
                list.add(ps);
                
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    public List<Post> getPostByCatid(int catid){
        List<Post> list=new ArrayList<>();
        try {
            String q="SELECT * FROM `post` WHERE catid=?";
           PreparedStatement pst=con.prepareStatement(q);
                pst.setInt(1, catid);
            ResultSet r=pst.executeQuery();
            while (r.next()) {  
                int pid=r.getInt("pid");
                String ptitle=r.getString("ptitle");
                String pcontent=r.getString("pcontent");
                String pcode=r.getString("pcode");
                String Ppic=r.getString("ppic");
                Timestamp pdate=r.getTimestamp("pdate");
                int uid=r.getInt("uid");
                
                Post ps=new Post(pid, ptitle, pcontent, pcode, Ppic, pdate, catid, uid);
                list.add(ps);
                
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
    public Post getPostByPid(int pid){
         Post post=null;
        try {
            String q="SELECT * FROM `post` WHERE pid=?";
           PreparedStatement pst=con.prepareStatement(q);
                pst.setInt(1, pid);
            ResultSet r=pst.executeQuery();
            while (r.next()) {  
                
                
                String ptitle=r.getString("ptitle");
                String pcontent=r.getString("pcontent");
                String pcode=r.getString("pcode");
                String Ppic=r.getString("ppic");
                Timestamp pdate=r.getTimestamp("pdate");
                int uid=r.getInt("uid");
                int catid=r.getInt("catid");
                
               post=new Post(pid, ptitle, pcontent, pcode, Ppic, pdate, catid, uid);
               
                
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return post;
    }
    
}
