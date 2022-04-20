package com.turing.mvc2.member;


public class MemberAction {

	@SuppressWarnings("unused")
	private MemberService memberService = new MemberService();
	
	
	
	//-------上面是属性-----------------------------------------------------
	/**
	 * 查询
	 */
	public String query() throws Exception {
		System.out.println("query");
		
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
		
		return "requery";
	}
	
	/**
	 * 进入修改页面
	 * @return
	 * @throws Exception
	 */
	public String editpage() throws Exception {
		System.out.println("editpage");
		
		return "editpage";
	}
	
	/**
	 * 执行修改方法，把数据存进DB
	 * @return
	 * @throws Exception
	 */
	public String edit() throws Exception {
		System.out.println("edit");
		
		return "requery";
	}
	
	/**
	 * 执行删除方法，把数据从DB中去掉
	 * @return
	 * @throws Exception
	 */
	public String delete() throws Exception {
		System.out.println("delete");
		
		return "requery";
	}
	
	//-------下面是SET---GET-----------------------------------------------------
	
	
}
