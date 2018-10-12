package com.gxcme.blogProject;

import java.util.HashSet;
import java.util.Set;

/**
 * BlogcontentTb entity. @author MyEclipse Persistence Tools
 */

public class BlogcontentTb implements java.io.Serializable {

	// Fields

	private Integer id;
	private UserTb userTb;
	private String blogTitle;
	private String blogContent;
	private Set commentTbs = new HashSet(0);

	// Constructors

	/** default constructor */
	public BlogcontentTb() {
	}

	/** full constructor */
	public BlogcontentTb(UserTb userTb, String blogTitle, String blogContent,
			Set commentTbs) {
		this.userTb = userTb;
		this.blogTitle = blogTitle;
		this.blogContent = blogContent;
		this.commentTbs = commentTbs;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public UserTb getUserTb() {
		return this.userTb;
	}

	public void setUserTb(UserTb userTb) {
		this.userTb = userTb;
	}

	public String getBlogTitle() {
		return this.blogTitle;
	}

	public void setBlogTitle(String blogTitle) {
		this.blogTitle = blogTitle;
	}

	public String getBlogContent() {
		return this.blogContent;
	}

	public void setBlogContent(String blogContent) {
		this.blogContent = blogContent;
	}

	public Set getCommentTbs() {
		return this.commentTbs;
	}

	public void setCommentTbs(Set commentTbs) {
		this.commentTbs = commentTbs;
	}

}