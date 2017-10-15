package com.ecommerce2.ecommercebackend.model;

import javax.persistence.Entity;
//import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
//import javax.persistence.OneToMany;
//import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="User_Order1")
public class Order {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	 private int id;
	 private int orderQty;
	 private float totalPrice;
	 @OneToOne
	 private Product product;
	 @OneToOne
	 private User user;
	 private String address;
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getOrderQty() {
		return orderQty;
	}
	public void setOrderQty(int orderQty) {
		this.orderQty = orderQty;
	}
	public float getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(float totalPrice) {
		this.totalPrice = totalPrice;
	}
	 
}
