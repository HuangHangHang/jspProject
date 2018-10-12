package com.gxcme.blogProject;

import java.util.Calendar;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.opensymphony.xwork2.ActionContext;

public class CommentTbBean { //���ݲ���ID��ʾ�˲��͵���������
	
	public CommentTb getAllCommentByBlogID(int blog_id){
		
		Session sess=HibernateSessionFactory.getSession();
		
		CommentTb co_tb=(CommentTb)sess.get(CommentTb.class, blog_id);
		return co_tb;	
	}
	
	
	
  public boolean addComment(int user_id,int blog_id,String comment_text,int user_id2){  //��������
		
	Session sess=HibernateSessionFactory.getSession();
		CommentTb cb=new CommentTb();
		
        UserTb ub=(UserTb)sess.get(UserTb.class, user_id);
        UserTb ub2=(UserTb)sess.get(UserTb.class, user_id2);
        
        BlogcontentTb bb=(BlogcontentTb)sess.get(BlogcontentTb.class, blog_id);
        
    
         ub.setId(user_id);
         bb.setUserTb(ub2);
         
        
        cb.setUserTb(ub);
        cb.setBlogcontentTb(bb);
      
		
		int y,m,d,h,mi,s;    
	    Calendar cal=Calendar.getInstance();    
	    y=cal.get(Calendar.YEAR);    
	    m=cal.get(Calendar.MONTH)+1;    
	    d=cal.get(Calendar.DATE);    
//	    h=cal.get(Calendar.HOUR_OF_DAY);    
//	    mi=cal.get(Calendar.MINUTE);    
//	    s=cal.get(Calendar.SECOND);    
	   // System.out.println("����ʱ����"+y+"��"+m+"��"+d+"��"+h+"ʱ"+mi+"��"+s+"��");    

		String commnet_time=(y+"-"+m+"-"+d).toString();
		 

        cb.setCommentTime(commnet_time);
        cb.setCommentText(comment_text);
        
		//��ʵ�����浽���ݿ�
		
		//��������
		
		Transaction tran=sess.beginTransaction();
		
		sess.save(cb);//����ʵ�������ݿ�����
		
		tran.commit();//�ύ����
		
		HibernateSessionFactory.closeSession();
		
		return true;
		
		
		
	}
  
  public boolean deleteComment(int commentid){  //ɾ������
		
	
	 
	  
        Session sess=HibernateSessionFactory.getSession();
		
		CommentTb cb=(CommentTb)sess.get(CommentTb.class, commentid);//����id���ɶ�Ӧid��ʵ��
	
		//��������
		Transaction tran=sess.beginTransaction();
		
		sess.delete(cb);//����ʵ�������ݿ�����
		
		tran.commit();//�ύ����
		
		HibernateSessionFactory.closeSession();
		
		return true;
  
  

   }
}
