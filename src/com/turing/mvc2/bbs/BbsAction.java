package com.turing.mvc2.bbs;

import java.util.List;
import java.util.Map;


/**
 * 控制层
 * @author wyh
 */
public class BbsAction {
	/**
	 * 声明一个模型，用来执行sql操作
	 */
	private BbsService bbsService = new BbsService();
	/**
	 * 向页面传值（列表）
	 */
	private List<Map<String, Object>> list;
	/**
	 * 声明一个实体（接值）
	 */
	private Bbs bbs;
	/**
	 * 接收一个id
	 */
	private String id;
	/**
	 * 声明Map，用向修改页面传值
	 */
	private Map<String, Object> map;
	/**
	 * 接收ids数组，删除时使用
	 */
	private String[] ids;
	
	
	/**
	 * 查询功能
	 * @author wyh
	 * @time  2018-3-1
	 */
	public String query() throws Exception {
		//System.out.println("query");
		list = bbsService.query();
		return "query";
	}
	/**
	 * 进入添加页面
	 * @author wyh
	 * @time  2018-3-1
	 */
	public String addpage() throws Exception {
		/*
		System.out.println("addpage");
		*/
		return "addpage";
	}
	/**
	 * 执行添加方法，把数据存进DB
	 * @author wyh
	 * @time  2018-3-1
	 */
	public String add() throws Exception {
		System.out.println("add");
		
		bbsService.add( bbs );
		
		return "requery";
	}
	/**
	 * 进入修改页面
	 * @author wyh
	 * @time  2018-3-1
	 */
	public String editpage() throws Exception {
		System.out.println("editpage");
		map = bbsService.queryById( id );
		
		return "editpage";
	}
	/**
	 * 执行修改方法，把数据存进DB
	 * @author wyh
	 * @time  2018-3-1
	 */
	public String edit() throws Exception {
		System.out.println("edit");
		
		bbsService.edit( bbs );
		return "requery";
	}
	
	/**
	 * 执行删除方法，把数据从DB中去掉
	 * @author wyh
	 * @time  2018-3-1
	 */
	public String delete() throws Exception {
		System.out.println("delete");
		
		bbsService.delete( ids );
		return "requery";
	}

	//-----------------------------------------------------------------------
	
	
	public List<Map<String, Object>> getList() {
		return list;
	}
	public void setList(List<Map<String, Object>> list) {
		this.list = list;
	}
	public Bbs getBbs() {
		return bbs;
	}
	public void setBbs(Bbs bbs) {
		this.bbs = bbs;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Map<String, Object> getMap() {
		return map;
	}
	public void setMap(Map<String, Object> map) {
		this.map = map;
	}
	public String[] getIds() {
		return ids;
	}
	public void setIds(String[] ids) {
		this.ids = ids;
	}
	
	
}
