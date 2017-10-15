package com.ecommerce2.ecommercebackend.DaoImpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ecommerce2.ecommercebackend.Dao.OrderItemsDao;
import com.ecommerce2.ecommercebackend.model.OrderItem;
@Repository("orderitemDao")
@Transactional
public class OrderItemDaoImpl implements OrderItemsDao{
	@Autowired
	SessionFactory sessionFactory;

	public boolean insert(OrderItem orderItem) {
		// TODO Auto-generated method stub
		try{
			System.out.println("Problem");
			sessionFactory.getCurrentSession().save(orderItem);
			
			return true;
		}catch(Exception e){
			return false;
		}
	}

	public boolean update(OrderItem orderItem) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean delete(OrderItem orderItem) {
		// TODO Auto-generated method stub
		return false;
	}

	public List<OrderItem> getAllByOrderedId(int id) {
		// TODO Auto-generated method stub
		return null;
	}

}
