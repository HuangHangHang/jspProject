package com.gxcme.blogProject;

import java.util.HashSet;
import java.util.Set;

/**
 * UserTb entity. @author MyEclipse Persistence Tools
 */

public class UserTb implements java.io.Serializable {

	// Fields

	private Integer id;
	private String userName;
	private String userPwd;
	private Integer blogNumber;
	private String userHeader;
	private Set commentTbs = new HashSet(0);
	private Set blogcontentTbs = new HashSet(0);

	// Constructors

	/** default constructor */
	public UserTb() {
		
		
	}
	
public UserTb(Integer id) {
		this.id=id;
		
	}

	/** full constructor */
	public UserTb(String userName, String userPwd, Integer blogNumber,
			String userHeader, Set commentTbs, Set blogcontentTbs) {
		this.userName = userName;
		this.userPwd = userPwd;
		this.blogNumber = blogNumber;
		this.userHeader = userHeader;
		this.commentTbs = commentTbs;
		this.blogcontentTbs = blogcontentTbs;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPwd() {
		return this.userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public Integer getBlogNumber() {
		return this.blogNumber;
	}

	public void setBlogNumber(Integer blogNumber) {
		this.blogNumber = blogNumber;
	}

	public String getUserHeader() {
		return this.userHeader;
	}

	public void setUserHeader(String userHeader) {
		this.userHeader = userHeader;
	}

	public Set getCommentTbs() {
		return this.commentTbs;
	}

	public void setCommentTbs(Set commentTbs) {
		this.commentTbs = commentTbs;
	}

	public Set getBlogcontentTbs() {
		return this.blogcontentTbs;
	}

	public void setBlogcontentTbs(Set blogcontentTbs) {
		this.blogcontentTbs = blogcontentTbs;
	}
	


}