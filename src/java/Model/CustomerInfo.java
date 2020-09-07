/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author tien_do
 */
public class CustomerInfo {

    String CustomerName;
    String address;
    String Email;
    String Other;

    Connection con;
    Statement stm;
    ResultSet rs;

    public CustomerInfo() {
        try {
            con = (new DBContext()).getConnection();
            System.out.println("Connect successfully");
        } catch (Exception e) {
            System.out.println("Connect fail: " + e.getMessage());
        }
    }

    public CustomerInfo(String CustomerName, String address, String Email, String Other) {
        this.CustomerName = CustomerName;
        this.address = address;
        this.Email = Email;
        this.Other = Other;

        try {
            con = (new DBContext()).getConnection();
            System.out.println("Connect successfully");
        } catch (Exception e) {
            System.out.println("Connect fail: " + e.getMessage());
        }
    }

    public String getCustomerName() {
        return CustomerName;
    }

    public void setCustomerName(String CustomerName) {
        this.CustomerName = CustomerName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getOther() {
        return Other;
    }

    public void setOther(String Other) {
        this.Other = Other;
    }

    public void insert(String CustomerName, String address, String Email, String Other) throws Exception {
        try {
            stm = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String str = "Insert into [CustomerInfo] values (?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(str);

            ps.setString(1, CustomerName);
            ps.setString(2, address);
            ps.setString(3, Email);
            ps.setString(4, Other);

            ps.executeUpdate();
            ps.close();
            con.close();

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    public List<CustomerInfo> selectAll() throws Exception {
        List<CustomerInfo> lst = new ArrayList<>();

        try {
            stm = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String sql = "Select * from [CustomerInfo]";
            rs = stm.executeQuery(sql);
            while (rs.next()) {
                String CustomerName = rs.getString(1);
                String address = rs.getString(2);
                String Email = rs.getString(3);
                String Other = rs.getString(4);

                CustomerInfo kh = new CustomerInfo(CustomerName, address, Email, Other);
                lst.add(kh);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

        return lst;
    }

    // Lay ra thong tin cua 1 khach hang
    public CustomerInfo select1(String CustomerName) throws Exception {
        CustomerInfo kh = new CustomerInfo();

        try {
            stm = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String sql = "Select * from [CustomerInfo] where CustomerName = '" + CustomerName + "'";
            rs = stm.executeQuery(sql);

            while (rs.next()) {
                String CName = rs.getString(1);
                String address = rs.getString(2);
                String Email = rs.getString(3);
                String Other = rs.getString(4);

                kh = new CustomerInfo(CName, address, Email, Other);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

        return kh;
    }

    // Update thong tin cua khach hang
    public void update(String oCustomerName, String nCustomerName, String address, String Email, String Other) throws Exception {
        stm = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
        String sql = "Update [CustomerInfo] set CustomerName = '" + nCustomerName + "', address = '" + address + "', Email = '" + Email + "', Other = '" + Other + "' where CustomerName = '" + oCustomerName + "'";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.executeUpdate();
        ps.close();
        con.close();
    }
    
    // Xoa khach hang khoi db
    public void delete(String CustomerName) throws Exception {
        stm = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
        String sql = "Delete from [CustomerInfo] where CustomerName = ?";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, CustomerName);
        ps.execute();
        ps.close();
        con.close();
    }

}
