package com.gxcme.blogProject;

/**
 * CommentTb entity. @author MyEclipse Persistence Tools
 */

public class CommentTb implements java.io.Serializable {

	// Fields

	private Integer id;
	private UserTb userTb;
	private BlogcontentTb blogcontentTb;
	private String commentText;
	private String commentTime;

	// Constructors

	/** default constructor */
	public CommentTb() {
	}

	/** full constructor */
	public CommentTb(UserTb userTb, BlogcontentTb blogcontentTb,
			String commentText, String commentTime) {
		this.userTb = userTb;
		this.blogcontentTb = blogcontentTb;
		this.commentText = commentText;
		this.commentTime = commentTime;
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

	public BlogcontentTb getBlogcontentTb() {
		return this.blogcontentTb;
	}

	public void setBlogcontentTb(BlogcontentTb blogcontentTb) {
		this.blogcontentTb = blogcontentTb;
	}

	public String getCommentText() {
		return this.commentText;
	}

	public void setCommentText(String commentText) {
		this.commentText = commentText;
	}

	public String getCommentTime() {
		return this.commentTime;
	}

	public void setCommentTime(String commentTime) {
		this.commentTime = commentTime;
	}

}