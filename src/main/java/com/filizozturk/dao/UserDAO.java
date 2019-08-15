package com.filizozturk.dao;
import java.util.ArrayList;
import javax.persistence.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.filizozturk.entity.User;

@Repository
public class UserDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public Long insert(User user) {
		return (Long) sessionFactory.getCurrentSession().save(user);
	}
	public void update(User user) {
		sessionFactory.getCurrentSession().update(user);
	}
	public void persist(User user) {
		sessionFactory.getCurrentSession().persist(user);
	}
	public void delete(User user) {
		sessionFactory.getCurrentSession().delete(user);
	}
	
	@SuppressWarnings("unchecked")
	public ArrayList<User> getAll(){
		Query query = (Query) sessionFactory.getCurrentSession().createQuery("From User");
		return (ArrayList<User>) query.getResultList();
	}
	

}
