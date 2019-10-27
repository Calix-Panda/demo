package com.calix.dao;

import java.util.Date;

import org.hibernate.Session;

import com.calix.bean.Information;
import com.calix.util.HibernateUtil;

public class Test {

	public Test() {
		// TODO Auto-generated constructor stub
	}

	public static void main(String[] args) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Information info= new Information();
		info.setTitle("CalixGG");
		info.setContent("Calix1026");
		Date aDate=new Date();
		info.setPublishtime(aDate);
		info.setDeadlinetime(aDate);
		info.setPublishuser("Calix");
		System.out.println("info=" + info);
		session.beginTransaction();
		session.save(info);
		session.getTransaction().commit();
		session.flush();
		session.close();

	}

}
