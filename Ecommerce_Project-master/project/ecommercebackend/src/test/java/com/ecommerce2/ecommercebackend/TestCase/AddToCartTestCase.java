package com.ecommerce2.ecommercebackend.TestCase;

import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecommerce2.ecommercebackend.Dao.CartItemDao;
import com.ecommerce2.ecommercebackend.Dao.CartDao;
import com.ecommerce2.ecommercebackend.Dao.UserDao;
import com.ecommerce2.ecommercebackend.model.Cart;
import com.ecommerce2.ecommercebackend.model.CartItem;
import com.ecommerce2.ecommercebackend.model.User;

public class AddToCartTestCase {
	/*@Autowired
	static AnnotationConfigApplicationContext context;
	@Autowired
	static CartDao cartdao;
	@Autowired
	static UserDao userdao;
	@Autowired
	static AddToCartDao cartitemdao;

	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com");
		context.refresh();
		cartdao = (CartDao) context.getBean("cartdao");
		userdao = (UserDao) context.getBean("userdao");
		cartitemdao = (AddToCartDao) context.getBean("cartitemdao");
	}*/
	@Autowired
	static AnnotationConfigApplicationContext context;
	@Autowired
	static UserDao userdao;
	@Autowired
	static CartItemDao cartitemdao;
	
	@BeforeClass
	public static void init(){
		System.out.println("Problem Occuring ");
		context = new AnnotationConfigApplicationContext();
		System.out.println("Problem Occuring 1 ");
		context.scan("com");
		System.out.println("Problem Occuring 2");
		context.refresh();
		System.out.println("Problem Occuring 3");
		userdao = (UserDao)context.getBean("userdao");
		System.out.println("Problem Occuring");
		cartitemdao = (CartItemDao)context.getBean("cartitemdao");
		System.out.println("Problem Occuring 4");
	}
	@Test
	public void getcart(){
		System.out.println("Problem Occuring Test");
		User user = userdao.getByUserName("biswas@gmail.com");
		System.out.println(user.getUserName());
		Cart cart = user.getCart();
		
		CartItem cartItem = new CartItem();
		cartItem.setOrderQty(1);
		cartItem.setTotalPrice(1200);
		cartItem.setCart(cart);
		Assert.assertEquals(true, cartitemdao.insert(cartItem));
		 
		
		
	}
}
