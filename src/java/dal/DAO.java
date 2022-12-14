/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import model.Account;
import model.Cart;
import model.Category;
import model.Product;
import model.Item;
import model.Order;
import model.OrderDetail;


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
                            rs.getString(4),
                            rs.getString(5),
                            rs.getInt(6));
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
                            rs.getString(4),
                            rs.getString(5),
                            rs.getInt(6));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    public void signup(String user, String pass, String name, String phone){
        String sql = "insert into account values(?,?,?,?,0)";
        try {
            PreparedStatement st=connection.prepareStatement(sql);
            st.setString(1, user);
            st.setString(2, pass);
            st.setString(3, name);
            st.setString(4, phone);
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
    
    public void insertProduct(String name, String image, String price, String cname, String cateID){
        String sql = "INSERT [dbo].[product] ([name], [image], [price], [cname], [cateID])"
                    + "VALUES(?,?,?,?,?)";
        try {
            PreparedStatement st=connection.prepareStatement(sql);
            st.setString(1, name);
            st.setString(2, image);
            st.setString(3, price);
            st.setString(4, cname);
            st.setString(5, cateID);
            
            st.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public void editProduct(String name, String image, String price, String cname, String cateID, String pid){
        String sql = "update [dbo].[product] set [name] = ?, [image]= ?, [price]= ?, [cname]= ?, [cateID]= ? where id = ?";
        try {
            PreparedStatement st=connection.prepareStatement(sql);
            st.setString(1, name);
            st.setString(2, image);
            st.setString(3, price);
            st.setString(4, cname);
            st.setString(5, cateID);
            st.setString(6, pid);
            st.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public void addOrder(Account a, Cart c){
        LocalDate date = java.time.LocalDate.now();
        String date1 = date.toString();
        try {
            // add vao order
            String sql = "insert into [order] values(?,?,?)";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, date1);
            st.setInt(2, a.getId());
            st.setDouble(3, c.getTotalMoney());
            st.executeUpdate();
            // lay id cua order vua add
            String sql1 = "select top 1 id from [order] order by id desc";
            PreparedStatement st1 = connection.prepareStatement(sql1);
            ResultSet rs = st1.executeQuery();
            // add vao bang orderline
            if(rs.next()){
                int oid = rs.getInt(1);
                for(Item i : c.getItems()){
                    String sql2 = "insert into [OrderLine] values(?,?,?,?,?)";
                    PreparedStatement st2 = connection.prepareStatement(sql2);
                    st2.setInt(1, oid);
                    st2.setInt(2, i.getProduct().getId());
                    st2.setInt(3, i.getQuantity());
                    st2.setInt(4, i.getSize());
                    st2.setDouble(5, i.getPrice());
                    st2.executeUpdate();
                }
            }
        } catch (Exception e) {
        }
    }
    
     public List<Account> getAllUser(){
        List<Account> list = new ArrayList<>();
        String sql = "select * from account";
        try {
            PreparedStatement st=connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
             while(rs.next()){
                 Account a = new Account();
                 a.setId(rs.getInt(1));
                 a.setUser(rs.getString(2));
                 a.setPass(rs.getString(3));
                 a.setName(rs.getString(4));
                 a.setPhone(rs.getString(5));
                 a.setIsAdmin(0);
                 list.add(a);
             }
        } catch (SQLException e) {
        }
        return list;
    }
    
    public void deleteUser(String uid){
        String sql = "delete from account where [uID] = ?";
        try {
            PreparedStatement st=connection.prepareStatement(sql);
            st.setString(1, uid);
            st.executeUpdate();
        } catch (SQLException e) {
        }
    }
    
    public List<Order> getAllOrder(){
        List<Order> list = new ArrayList<>();
        String sql = "select * from [order]";
        try {
            PreparedStatement st=connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
             while(rs.next()){
                 Order a = new Order();
                 a.setId(rs.getInt(1));
                 a.setDate(rs.getString(2));
                 a.setCusid(rs.getInt(3));
                 a.setTotalmoney(rs.getDouble(4));
                 list.add(a);
             }
        } catch (SQLException e) {
        }
        return list;
    }
    
    public List<OrderDetail> getOrderByOID(String oid){
        List<OrderDetail> list = new ArrayList<>();
        String sql = "select * from [orderline] where oid = ?";
        try {
            PreparedStatement st=connection.prepareStatement(sql);
            st.setString(1, oid);
            ResultSet rs = st.executeQuery();
             while(rs.next()){
                 OrderDetail p = new OrderDetail();
                 p.setOid(rs.getInt(1));
                 p.setPid(rs.getInt(2));
                 p.setQuantity(rs.getInt(3));
                 p.setSize(rs.getInt(4));
                 p.setPrice(rs.getDouble(5));
                 list.add(p);
             }
        } catch (SQLException e) {
        }
        return list;
    }
    
    public static void main(String[] args) {
        DAO dao = new DAO();
        List<Product> list = dao.getAllProduct();
        List<Product> listP = dao.getProductBySellID(1);
        
        for(int i =0;i<listP.size();i++){
             System.out.println(list.get(i).getName());

        }
    }
}
