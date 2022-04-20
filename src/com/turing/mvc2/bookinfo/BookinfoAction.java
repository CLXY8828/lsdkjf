package com.turing.mvc2.bookinfo;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public class BookinfoAction {

	private BookinfoService bookinfoService = new BookinfoService();
	private List<Map<String, Object>> list;
	
	private String isbn;
	
	public String getIsbn() {
		return isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	private String[] ids;
	
	public String[] getIds() {
		return ids;
	}

	public void setIds(String[] ids) {
		this.ids = ids;
	}

	public List<Map<String, Object>> getList() {
		return list;
	}

	public void setList(List<Map<String, Object>> list) {
		this.list = list;
	}
	private Bookinfo bookinfo;
	private Map<String, Object> map;

	public Map<String, Object> getMap() {
		return map;
	}

	public void setMap(Map<String, Object> map) {
		this.map = map;
	}

	//-------上面是属性-----------------------------------------------------
	/**
	 * 查询
	 * @throws SQLException 
	 * @throws ClassNotFoundException 
	 */
	public String query() throws ClassNotFoundException, SQLException  {
		System.out.println("querynima");
		list=bookinfoService.query();
		return "query";
	}
	
	/**
	 * 进入添加页面
	 * @return
	 * @throws Exception
	 */
	public String addpage() throws Exception {
		System.out.println("addpage");
		
		return "addpage";
	}
	
	/**
	 * 执行添加方法，把数据存进DB
	 * @return
	 * @throws Exception
	 */
	public String add() throws Exception {
		System.out.println("add");
		bookinfoService.add(bookinfo);
		return "requery";
	}
	
	public Bookinfo getBookinfo() {
		return bookinfo;
	}

	public void setBookinfo(Bookinfo bookinfo) {
		this.bookinfo = bookinfo;
	}

	/**
	 * 进入修改页面
	 * @return
	 * @throws Exception
	 */
	public String editpage() throws Exception {
		System.out.println("editpage");
		
		map=bookinfoService.editpage(isbn);
		
		return "editpage";
	}
	
	/**
	 * 执行修改方法，把数据存进DB
	 * @return
	 * @throws Exception
	 */
	public String edit() throws Exception {
		
		bookinfoService.edit(bookinfo);
		
		return "requery";
	}
	
	/**
	 * 执行删除方法，把数据从DB中去掉
	 * @return
	 * @throws Exception
	 */
	public String delete() throws Exception {
		System.out.println("delete");
		bookinfoService.delete(ids);
		return "requery";
	}
	
	//-------下面是SET---GET-----------------------------------------------------
	
	
	
}
