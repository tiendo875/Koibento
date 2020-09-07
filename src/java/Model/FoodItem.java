/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author tien_do
 */
public class FoodItem {

    String Name;
    float Price;
    String Unit, Image;

    Connection con;
    Statement stm;
    ResultSet rs;

    public FoodItem() {
        try {
            con = (new DBContext()).getConnection();
            System.out.println("Connect success");
            stm = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);

        } catch (Exception e) {
            System.out.println("Connect fail:" + e.getMessage());
        }

    }

    public FoodItem(String Name, float Price, String Unit, String Image) {
        this.Name = Name;
        this.Price = Price;
        this.Unit = Unit;
        this.Image = Image;

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

    public float getPrice() {
        return Price;
    }

    public void setPrice(float Price) {
        this.Price = Price;
    }

    public String getUnit() {
        return Unit;
    }

    public void setUnit(String Unit) {
        this.Unit = Unit;
    }

    public String getImage() {
        return Image;
    }

    public void setImage(String Image) {
        this.Image = Image;
    }

    // Tao Chi tiet hoa don
    public void taoChiTietHoaDon(int userID, String orderDate) {
        try {
            stm = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String str = "Insert into [OrderItem] values ('" + userID + "','" + orderDate + "')";
            stm.executeUpdate(str);
            con.close();
        } catch (SQLException ex) {
        }

        //ps.close();
        //con.close();
    }

    // Tao hoa don
    public void taoHoaDon(int FoodId, int quantity, float amount) throws Exception {
        stm = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
        String str = "Insert into [Order] values ('" + FoodId + "','" + quantity + "','" + amount + "')";
        stm.executeUpdate(str);
        con.close();

    }

    // Them san pham vao bang tblMathang
    public void insert(String Name, float Price, String Unit, String image) {
        try {
            stm = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String str = "Insert into [FoodItem] values ('" + Price + "','" + image + "','" + Unit + "','" + Name + "')";
            stm.executeUpdate(str);
            con.close();
        } catch (Exception e) {
            System.out.println("Loi insert product: " + e);
        }

    }

    // Cap nhat thong tin san pham
    public void update(String Name, float Price, String Unit, String Image) throws Exception {
        stm = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
        String sql = "Update [FoodItem] set Price = '" + Price + "', ItemCategory = '" + Unit + "', Image = '" + Image + "' where Name = '" + Name + "'";
        stm.executeUpdate(sql);
        con.close();
    }

    // Xoa san pham
    public void delete(String Name) throws Exception {
        stm = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
        String sql = "Delete from [FoodItem] where MaHang = '" + Name + "'";
        stm.executeUpdate(sql);
        con.close();
    }

    // Tim kiem san pham bang ten
    public ArrayList<FoodItem> searchproduct(String FName) {
        ArrayList<FoodItem> lstpro = new ArrayList<>();

        try {
            stm = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strSelect = "Select * from [FoodItem] where Name like '%" + FName + "%'";
            rs = stm.executeQuery(strSelect);

            while (rs.next()) {
                String Name = rs.getString("Name"); //cot so 1
                float Price = rs.getFloat("Price"); //cot so 2
                String Unit = rs.getString("Unit");
                String Image = rs.getString("Image");
                FoodItem fi = new FoodItem(Name, Price, Unit, Image);
                lstpro.add(fi);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return lstpro;
    }

    public ArrayList<FoodItem> getAllFoodItems(){
        ArrayList<FoodItem> lstpro = new ArrayList<>();

        try {
            stm = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strSelect = "Select * from [FoodItem]";
            rs = stm.executeQuery(strSelect);

            while (rs.next()) {
                String Name = rs.getString("Name"); //cot so 1
                float Price = rs.getFloat("Price"); //cot so 2
                String Unit = rs.getString("Unit");
                String Image = rs.getString("Image");
                FoodItem fi = new FoodItem(Name, Price, Unit, Image);
                lstpro.add(fi);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return lstpro;
    }

    public ArrayList<FoodItem> SortDow() {
        ArrayList<FoodItem> lstpro = new ArrayList<>();

        try {
            stm = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strSelect = "Select * from [FoodItem]";
            rs = stm.executeQuery(strSelect);

            while (rs.next()) {
                String Name = rs.getString("Name"); //cot so 1
                float Price = rs.getFloat("Price"); //cot so 2
                String Unit = rs.getString("Unit");
                String Image = rs.getString("Image");
                FoodItem fi = new FoodItem(Name, Price, Unit, Image);
                lstpro.add(fi);
            }

            Collections.sort(lstpro, new Sortbyname());
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return lstpro;
    }

    private static class Sortbyname implements Comparator<FoodItem> {

        public int compare(FoodItem a, FoodItem b) {
            return (int) (a.Price - b.Price);
        }
    }
}
