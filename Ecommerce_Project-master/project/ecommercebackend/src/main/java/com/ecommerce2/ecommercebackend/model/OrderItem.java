package com.ecommerce2.ecommercebackend.model;

import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
//import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

public class OrderItem {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	@OneToOne(fetch=FetchType.EAGER)
	private Product product;
	private int ordQty;
	private float totalPrice;
	/*@ManyToOne
	private Order order;*/
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public int getOrdQty() {
		return ordQty;
	}
	public void setOrdQty(int ordQty) {
		this.ordQty = ordQty;
	}
	public float getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(float totalPrice) {
		this.totalPrice = totalPrice;
	}
	 
}
