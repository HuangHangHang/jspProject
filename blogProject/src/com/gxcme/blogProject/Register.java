package com.gxcme.blogProject;

import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.gxcme.blogProject.HibernateSessionFactory;
import com.opensymphony.xwork2.ActionContext;

public class Register {
	
	private String re_uname;//昵称
	private String re_upass;//密码
	
	public void setRe_uname(String re_uname) {
		this.re_uname = re_uname;
	}
	public String getRe_uname() {
		return re_uname;
	}
	
	
	public void setRe_upass(String re_upass) {
		this.re_upass = re_upass;
	}
	public String getRe_upass() {
		return re_upass;
	}
	
	
	private String lo_uname;
	private String lo_upass;

	public void setLo_uname(String lo_uname) {
		this.lo_uname = lo_uname;
	}
	public String getLo_uname() {
		return lo_uname;
	}
	public void setLo_upass(String lo_upass) {
		this.lo_upass = lo_upass;
	}
	public String getLo_upass() {
		return lo_upass;
	}
	
	
	
	
	
	public String tianjia(){   //用户注册
		UserTb usertb=new UserTb();
	if(re_uname==null||"".equals(re_uname.trim())){
		
		return "a";
		
	}
	else if(re_upass==null||"".equals(re_upass.trim())){
		return "a";
		
	}
	else{
		usertb.setUserName(re_uname);
		usertb.setUserPwd(re_upass);
		usertb.setUserHeader("images/header_img/s7.jpg");//默认用户头像
		usertb.setBlogNumber(0);//默认博文数量
		Session sess=HibernateSessionFactory.getSession();	
		Transaction b=sess.beginTransaction(); 
		sess.save(usertb); 
		b.commit(); 
		HibernateSessionFactory.closeSession();
		return "s";
	}
}
	
	

	
	
	
	public String logins()throws Exception {

        Session sess=HibernateSessionFactory.getSession();
        
        
        sess.beginTransaction();
		
		String hql="from UserTb u where u.userName=? and u.userPwd=?" ;
		
		Query aaa=sess.createQuery(hql).setParameter(0, this.lo_uname).setParameter(1, this.lo_upass);
		
		UserTb user=(UserTb)aaa.uniqueResult();
		
		sess.getTransaction().commit();
		
		if(user !=null){
			
			
			Map attibutes = ActionContext.getContext().getSession();  //使用Map 对象来保存数据
			
			
			attibutes.put("username", lo_uname); 
			
			String user_id=(String)user.getId().toString();
			
			  
			String user_header=user.getUserHeader();
			attibutes.put("user_id",user_id);
			attibutes.put("user_header",user_header);
			
			//attibutes.put("password", lo_upass); 
			
			  HibernateSessionFactory.closeSession();
			
			return "b";
			
		}
		

	   return "a";
	 
	    
	 
	}
	
	
	public Boolean fabiao(int id,String title,String centert){  //发表博文
		
	    Session sess=HibernateSessionFactory.getSession();
	    if(title !=null && title !="")
	    {
	    	
	    	BlogcontentTb aa=new BlogcontentTb();
	 		aa.setBlogTitle(title);
	 		aa.setBlogContent(centert);
	 		UserTb bb=new UserTb(id);
	 		aa.setUserTb(bb);
	 		Transaction b=sess.beginTransaction();
	 		sess.save(aa); 
	 		b.commit(); 
	 	    HibernateSessionFactory.closeSession();
	 	   return true;
	   
	    }
	  
	    return false;
   }
	
	
	
	
}
