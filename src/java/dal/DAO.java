/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
vinh an cut
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Account;
import model.Category;
import model.Product;

/**
 *
 * @author Nguyen Phu Vinh
 */
public class DAO extends DBContext{
    public List<Product> getAllProduct(){
        List<Product> list = new ArrayList<>();
        String sql = "select * from product";
        try {
            PreparedStatement st=connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
             while(rs.next()){
                 Product p = new Product();
                 p.setId(rs.getInt(1));
                 p.setName(rs.getString(2));
                 p.setImage(rs.getString(3));
                 p.setPrice(rs.getDouble(4));
                 p.setCname(rs.getString(5));
                 list.add(p);
             }
        } catch (SQLException e) {
        }
        return list;
    }
    
    public List<Category> getAllCategory(){
        List<Category> list = new ArrayList<>();
        String sql = "select * from Category";
        try {
            PreparedStatement st=connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
             while(rs.next()){
                 Category c = new Category();
                 c.setCid(rs.getInt(1));
                 c.setCname(rs.getString(2));
                 list.add(c);
             }
        } catch (SQLException e) {
        }
        return list;
    }
    
    public List<Product> getProductByCID(String cid){
        List<Product> list = new ArrayList<>();
        String sql = "select * from product where cateID = ?";
        try {
            PreparedStatement st=connection.prepareStatement(sql);
            st.setString(1, cid);
            ResultSet rs = st.executeQuery();
             while(rs.next()){
                 Product p = new Product();
                 p.setId(rs.getInt(1));
                 p.setName(rs.getString(2));
                 p.setImage(rs.getString(3));
                 p.setPrice(rs.getDouble(4));
                 p.setCname(rs.getString(5));
                 list.add(p);
             }
        } catch (SQLException e) {
        }
        return list;
    }
    
    public Product getProductByID(String id){
        String sql = "select * from product where id = ?";
        try {
            PreparedStatement st=connection.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
             while(rs.next()){
                 Product p = new Product();
                 p.setId(rs.getInt(1));
                 p.setName(rs.getString(2));
                 p.setImage(rs.getString(3));
                 p.setPrice(rs.getDouble(4));
                 p.setCname(rs.getString(5));
                 return p;
             }
        } catch (SQLException e) {
        }
        return null;
    }
    
    public List<Product> searchByName(String txtsearch){
        List<Product> list = new ArrayList<>();
        String sql = "select * from product where [name] like ?";
        try {
            PreparedStatement st=connection.prepareStatement(sql);
            st.setString(1, "%" + txtsearch + "%");
            ResultSet rs = st.executeQuery();
             while(rs.next()){
                 Product p = new Product();
                 p.setId(rs.getInt(1));
                 p.setName(rs.getString(2));
                 p.setImage(rs.getString(3));
                 p.setPrice(rs.getDouble(4));
                 p.setCname(rs.getString(5));
                 list.add(p);
             }
        } catch (SQLException e) {
        }
        return list;
    }
    
    public Account login(String user, String pass){
        String sql = "select * from account where [user] = ? and pass = ?";
        try {
            PreparedStatement st=connection.prepareStatement(sql);
            st.setString(1, user);
            st.setString(2, pass);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                return new Account(rs.getInt(1),
                            rs.getString(2),
                            rs.getString(3),
                            rs.getInt(4));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    public Account checkAccountExist(String user){
        String sql = "select * from account where [user] = ?";
        try {
            PreparedStatement st=connection.prepareStatement(sql);
            st.setString(1, user);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                return new Account(rs.getInt(1),
                            rs.getString(2),
                            rs.getString(3),
                            rs.getInt(4));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    public void signup(String user, String pass){
        String sql = "insert into account values(?,?,0)";
        try {
            PreparedStatement st=connection.prepareStatement(sql);
            st.setString(1, user);
            st.setString(1, pass);
            st.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public List<Product> getProductBySellID(int id){
        List<Product> list = new ArrayList<>();
        String sql = "select * from product";
        try {
            PreparedStatement st=connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
             while(rs.next()){
                 Product p = new Product();
                 p.setId(rs.getInt(1));
                 p.setName(rs.getString(2));
                 p.setImage(rs.getString(3));
                 p.setPrice(rs.getDouble(4));
                 p.setCname(rs.getString(5));
                 list.add(p);
             }
        } catch (SQLException e) {
        }
        return list;
    }
    
    public void deleteProduct(String pid){
        String sql = "delete from product where id = ?";
        try {
            PreparedStatement st=connection.prepareStatement(sql);
            st.setString(1, pid);
            st.executeUpdate();
        } catch (SQLException e) {
        }
    }
    
    public void insertProduct(String name, String image, String price, String cname, String category, int sid){
        String sql = "INSERT [dbo].[product] ([name], [image], [price], [cname], [cateID], [sell_ID])"
                    + "VALUES(?,?,?,?,?,?)";
        try {
            PreparedStatement st=connection.prepareStatement(sql);
            st.setString(1, name);
            st.setString(2, image);
            st.setString(3, price);
            st.setString(4, cname);
            st.setString(5, category);
            st.setInt(6, sid);
            st.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public void editProduct(String name, String image, String price, String cname, String category, String pid){
        String sql = "update [dbo].[product] set [name] = ?, [image]= ?, [price]= ?, [cname]= ?, [cateID]= ? where id = ?";
        try {
            PreparedStatement st=connection.prepareStatement(sql);
            st.setString(1, name);
            st.setString(2, image);
            st.setString(3, price);
            st.setString(4, cname);
            st.setString(5, category);
            st.setString(6, pid);
            st.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public static void main(String[] args) {
        DAO dao = new DAO();
        List<Category> listC = dao.getAllCategory();
        List<Product> listP = dao.getProductBySellID(1);
        
        for(int i =0;i<listP.size();i++){
             System.out.println(listP.get(i).getName());

        }
        
    }
}
