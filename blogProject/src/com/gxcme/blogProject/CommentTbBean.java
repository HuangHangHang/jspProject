package com.gxcme.blogProject;

import java.util.Calendar;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.opensymphony.xwork2.ActionContext;

public class CommentTbBean { //根据博客ID显示此博客的所有评论
	
	public CommentTb getAllCommentByBlogID(int blog_id){
		
		Session sess=HibernateSessionFactory.getSession();
		
		CommentTb co_tb=(CommentTb)sess.get(CommentTb.class, blog_id);
		return co_tb;	
	}
	
	
	
  public boolean addComment(int user_id,int blog_id,String comment_text,int user_id2){  //发表评论
		
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
	   // System.out.println("现在时刻是"+y+"年"+m+"月"+d+"日"+h+"时"+mi+"分"+s+"秒");    

		String commnet_time=(y+"-"+m+"-"+d).toString();
		 

        cb.setCommentTime(commnet_time);
        cb.setCommentText(comment_text);
        
		//将实例保存到数据库
		
		//开启事务
		
		Transaction tran=sess.beginTransaction();
		
		sess.save(cb);//保存实例到数据库的语句
		
		tran.commit();//提交事务
		
		HibernateSessionFactory.closeSession();
		
		return true;
		
		
		
	}
  
  public boolean deleteComment(int commentid){  //删除评论
		
	
	 
	  
        Session sess=HibernateSessionFactory.getSession();
		
		CommentTb cb=(CommentTb)sess.get(CommentTb.class, commentid);//根据id生成对应id的实例
	
		//开启事务
		Transaction tran=sess.beginTransaction();
		
		sess.delete(cb);//保存实例到数据库的语句
		
		tran.commit();//提交事务
		
		HibernateSessionFactory.closeSession();
		
		return true;
  
  

   }
}
