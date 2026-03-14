package com.project.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.project.model.Item;

@Repository
@Transactional
public class ItemDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void saveItem(Item item) {
		sessionFactory.getCurrentSession().save(item);
	}

	public List<Item> getAllItems(){
		return sessionFactory.getCurrentSession().createQuery("from Item", Item.class).list();
	}
	
	public void markReturned(int id) {
		Item item = sessionFactory.getCurrentSession().get(Item.class, id);
		item.setStatus("Returned");
		sessionFactory.getCurrentSession().update(item);
	}
	
	public List<Item> searchItem(String name){
		return sessionFactory.getCurrentSession()
				.createQuery("from Item where item_name like :name", Item.class)
				.setParameter("name", "%" + name + "%").list();
	}
	
	public void deleteItem(int id) {
		Item item = sessionFactory.getCurrentSession().get(Item.class, id);
		sessionFactory.getCurrentSession().delete(item);
	}
	
	public void updateItem(Item item) {
		sessionFactory.getCurrentSession().update(item);
	}
	
	public Item getItemById(int id) {
		return sessionFactory.getCurrentSession().get(Item.class, id);
	}
}