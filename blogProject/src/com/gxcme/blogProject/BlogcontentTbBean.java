package com.gxcme.blogProject;

import java.util.List;

import org.hibernate.Session;

public class BlogcontentTbBean {
	
	public List getAllContent(){ //数据多条查询
		

		     Session sess=HibernateSessionFactory.getSession();
			
			  List list=sess.createCriteria(BlogcontentTb.class).list();//创建查询方法
		 
			  return list;
	}
	
	public BlogcontentTb getBlonContentById(int blogid){   //查询一条记录
		
	      Session sess=HibernateSessionFactory.getSession();
			
			BlogcontentTb bc_tb=(BlogcontentTb)sess.get(BlogcontentTb.class, blogid);
		
			return bc_tb;	
	}
		
	     
		
	     
	

}
