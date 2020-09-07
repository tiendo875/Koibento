/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author tien_do
 */
public class Bills {

    String UserName, Name, Address, Phone, Email, Note;
    float Amount;

    Connection con;
    Statement stm;
    ResultSet rs;

    public Bills() {
        try {
            con = (new DBContext()).getConnection();
            System.out.println("Connect success");
            stm = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);

        } catch (Exception e) {
            System.out.println("Connect fail:" + e.getMessage());
        }
    }

    public Bills(String UserName, String Name, String Address, String Phone, String Email, String Note, float Amount) {
        this.UserName = UserName;
        this.Name = Name;
        this.Address = Address;
        this.Phone = Phone;
        this.Email = Email;
        this.Note = Note;
        this.Amount = Amount;
        try {
            con = (new DBContext()).getConnection();
            System.out.println("Connect success");
            stm = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);

        } catch (Exception e) {
            System.out.println("Connect fail:" + e.getMessage());
        }
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getUserName() {
        return UserName;
    }

    public void setUserName(String UserName) {
        this.UserName = UserName;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String Phone) {
        this.Phone = Phone;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getNote() {
        return Note;
    }

    public void setNote(String Note) {
        this.Note = Note;
    }

    public float getAmount() {
        return Amount;
    }

    public void setAmount(float Amount) {
        this.Amount = Amount;
    }

    public void insert(String Username, String billing_firstname, String billing_address, String billing_phone, String billing_formmail, String oder_comment, float Amount) {
        try {
            stm = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strSelect = "Insert into [Bills] values ('" + Username + "','" + billing_address + "','" + billing_phone + "','" + billing_formmail + "','" + oder_comment + "','" + Amount + "','" + billing_firstname + "')";
            stm.executeUpdate(strSelect);
            con.close();
        } catch (Exception e) {
            System.out.println("lỗi insert: " + e.getMessage());
        }
    }

    public boolean checkLogin(String username) {
        try {

            String strSelect = "Select * from [Bills] where Username='" + username + "'";
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            System.out.println("fail: " + e.getMessage());
        }
        return false;
    }

    public Bills getListAdress(String FName) throws Exception {
        Bills b = new Bills();
        System.out.println("zzzzzzzzzzzzzzzzzzzzzzzzzzzzz" + FName);

        try {
            stm = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strSelect = "Select * from [Bills] where UserName = '" + FName + "'";
            rs = stm.executeQuery(strSelect);

            while (rs.next()) {
                String Name = rs.getString("Name"); //cot so 1
                String Address = rs.getString("Address");
                String Phone = rs.getString("Phone");
                String Email = rs.getString("Email");
                b = new Bills(FName, Name, Address, Phone, Email, null, 0);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return b;
    }
}
