package com.calix.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;

import com.calix.bean.Information;
import com.calix.util.HibernateUtil;

public class informationDAOImpl implements InformationDAO {

	public informationDAOImpl() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public Information getInfoById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean addInfo(Information info) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		System.out.println("info=" + info);
		session.beginTransaction();
		session.save(info);
		session.getTransaction().commit();
		session.flush();
		session.close();
		return false;
	}
	
	 public boolean updateInfo(Information info) {  
	        Session session = HibernateUtil.getSessionFactory().openSession();  
	        session.beginTransaction();  
	      //Contacts contact = (Contacts) session.load(Contacts.class, id);  
	        try {  
	        if(info != null) {  
	            session.saveOrUpdate(info);  
	        }  
	          
	        } catch (HibernateException e) {  
	            e.printStackTrace();  
	            session.getTransaction().rollback();  
	        }  
	            session.getTransaction().commit();        
	            session.flush();  
	            session.close();
				return false;  
	      }      

	@Override
	public boolean deleteInfo(int id) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();
		try {
			Information info = (Information) session.load(Information.class, id);
			if (null != info) {
				session.delete(info);
			}
		} catch (HibernateException e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		session.getTransaction().commit();

		session.flush();
		session.close();
		return false;
	}

	@Override
	public List<Information> getAllInfo() {
		Session session = HibernateUtil.getSessionFactory().openSession();
		List<Information> InfoAll = null;
		session.beginTransaction();
		try {

			InfoAll = session.createCriteria(Information.class).list();
			int count = InfoAll.size();
			System.out.println("No of Record From Dao: " + count);
		} catch (HibernateException e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		session.getTransaction().commit();
		session.flush();
		session.close();
		return InfoAll;
	}

}
