/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Nguyen Phu Vinh
 */
public class OrderDetail {
    private int oid, pid;
    private int quantity;
    private int size;
    private double price;

    public OrderDetail() {
    }

    public int getOid() {
        return oid;
    }

    public void setOid(int oid) {
        this.oid = oid;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public OrderDetail(int oid, int pid, int quantity, int size, double price) {
        this.oid = oid;
        this.pid = pid;
        this.quantity = quantity;
        this.size = size;
        this.price = price;
    }

    
    
}
