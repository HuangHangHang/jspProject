package com.gxcme.blogProject;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;


import org.hibernate.Query;
import org.hibernate.Session;


public class UserTbBean {
	
	public List getAllUser(){  //��ѯ�����û�
		
		   Session sess=HibernateSessionFactory.getSession();
		
		  List list=sess.createCriteria(UserTb.class).list();//������ѯ����
		  
		  return list;
		
		
	}
	
	
	

	

	

}
