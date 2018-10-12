package com.gxcme.blogProject;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;


import org.hibernate.Query;
import org.hibernate.Session;


public class UserTbBean {
	
	public List getAllUser(){  //查询所有用户
		
		   Session sess=HibernateSessionFactory.getSession();
		
		  List list=sess.createCriteria(UserTb.class).list();//创建查询方法
		  
		  return list;
		
		
	}
	
	
	

	

	

}
