package com.gulab.backend.DAOImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;

import com.gulab.backend.DAO.UserDao;
import com.gulab.backend.models.UserModel;

public class UserDaoImpl implements UserDao {
	
	@Autowired
	SessionFactory sessionFactory;

	 public UserDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory=sessionFactory;
	}

	@Transactional
	public void addDriver(UserModel user) {
	     
           Session session= sessionFactory.openSession();
           
           session.saveOrUpdate(user);
          
           session.close();
	}

	public List<UserModel> searchId(int id) {
		
		Session session=sessionFactory.openSession();
	    Criteria crit=session.createCriteria(UserModel.class);
	    crit.add(Restrictions.eq("driverid",id));
	    List<UserModel> user=crit.list();
		
		return user;
	}

	public List<UserModel> searchName(String name) {
		Session session=sessionFactory.openSession();
	    Criteria crit=session.createCriteria(UserModel.class);
	    crit.add(Restrictions.eq("drivername",name));
	    List<UserModel> user=crit.list();
		return user;
	}

}
