/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sant.entity;

public class Admin {
    private int aid;
    private String aname,aemail,aphone,apassword;

    public Admin(int aid, String aname, String aemail, String aphone, String apassword) {
        this.aid = aid;
        this.aname = aname;
        this.aemail = aemail;
        this.aphone = aphone;
        this.apassword = apassword;
    }

    public Admin(String aname, String aemail, String aphone, String apassword) {
        this.aname = aname;
        this.aemail = aemail;
        this.aphone = aphone;
        this.apassword = apassword;
    }

    public Admin() {
    }

    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }

    public String getAname() {
        return aname;
    }

    public void setAname(String aname) {
        this.aname = aname;
    }

    public String getAemail() {
        return aemail;
    }

    public void setAemail(String aemail) {
        this.aemail = aemail;
    }

    public String getAphone() {
        return aphone;
    }

    public void setAphone(String aphone) {
        this.aphone = aphone;
    }

    public String getApassword() {
        return apassword;
    }

    public void setApassword(String apassword) {
        this.apassword = apassword;
    }
    
}
