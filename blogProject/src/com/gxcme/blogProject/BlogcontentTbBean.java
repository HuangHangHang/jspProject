package com.gxcme.blogProject;

import java.util.List;

import org.hibernate.Session;

public class BlogcontentTbBean {
	
	public List getAllContent(){ //���ݶ�����ѯ
		

		     Session sess=HibernateSessionFactory.getSession();
			
			  List list=sess.createCriteria(BlogcontentTb.class).list();//������ѯ����
		 
			  return list;
	}
	
	public BlogcontentTb getBlonContentById(int blogid){   //��ѯһ����¼
		
	      Session sess=HibernateSessionFactory.getSession();
			
			BlogcontentTb bc_tb=(BlogcontentTb)sess.get(BlogcontentTb.class, blogid);
		
			return bc_tb;	
	}
		
	     
		
	     
	

}
