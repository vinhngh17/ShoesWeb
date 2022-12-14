/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Nguyen Phu Vinh
 */
public class Cart {
    private List<Item> items;
    
    public Cart(){
        items = new ArrayList<>();
    }

    public Cart(List<Item> items) {
        this.items = items;
    }

    public List<Item> getItems() {
        return items;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }
    
    private Item getItemById(int id){
        for(Item i : items){
            if(i.getProduct().getId() == id){
                return i;
            }
        }
        return null;
    }
    
    private Item getItemByIdSize(int id, int size){
        Item n = new Item();
        for(Item s : this.items){
           if(s.getProduct().getId() == id && s.getSize() == size){
               n = s;
           }
       }
       return n;
    }
    
    public int getQuantityById_Size(int id, int size){
        Item n = new Item();
        for(Item s : this.items){
           if(s.getProduct().getId() == id && s.getSize() == size){
               n = s;
           }
       }
       return n.getQuantity();
    }
    
    public void addItem(Item t){
        // da co o cart 
        Item n = new Item();
       for(Item s : this.items){
           if(s.getProduct().getId() == t.getProduct().getId() && s.getSize() == t.getSize()){
               n = s;
           }
       }
        if(getItemById(t.getProduct().getId()) != null && n.getSize() == t.getSize()){
                Item i = getItemByIdSize(t.getProduct().getId(), t.getSize());
                i.setQuantity(i.getQuantity() + t.getQuantity());
        }
        else{
            //chua co trong cart
            items.add(t);
        }
    }
    
    public int getSize(){
        return this.items.size();
    }
    
    public void removeItem(int id, int size){
        if(getItemByIdSize(id, size) != null){
            items.remove(getItemByIdSize(id, size));
        }   
    }
    
    public double getTotalMoney(){
        double t = 0;
        for(Item i : items)
            t += i.getQuantity() * i.getPrice();
        return t; 
    }
}
