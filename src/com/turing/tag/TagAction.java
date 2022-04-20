package com.turing.tag;

import java.util.List;

public class TagAction {
	/**
	 * 模型层
	 */
	private TagService tagService = new TagService();
	private List<?> list;
	
	
	
	public String execute() throws Exception {
		this.list= this.tagService.queryUser();
		return "execute";
	}
	
	/**
	 * 自定义标签使用的方法
	 */
	public String custom() throws Exception {
		this.list= this.tagService.queryUser();
		return "custom";
	}
	
	/**
	 * EL表达式
	 */
	public String el() throws Exception {
		this.list= this.tagService.queryUser();
		return "el";
	}
	/**
	 * JSTL标签
	 */
	public String jstl() throws Exception {
		this.list= this.tagService.queryUser();
		return "jstl";
	}
	/**
	 * iterator标签
	 */
	public String iterator() throws Exception {
		this.list= this.tagService.queryUser();
		return "iterator";
	}
	/**
	 * if标签
	 */
	public String iff() throws Exception {
		this.list= this.tagService.queryUser();
		return "iff";
	}
	
	
	/**
	 * 页面可以通过此方法获得list属性
	 */
	public List<?> getList() {
		return list;
	}
	
}
