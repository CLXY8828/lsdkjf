<%@ page language="java" contentType="text/html;charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>


OGNL表达式定义变量值：<br/>
<hr/>
定义字符串：<br/>
<%
	//request.setAttribute("a", "张飞");	
%>








<hr/>
定义List：<br/>
<%
	//String[] str = {"春","夏","秋","冬"};
	//session.setAttribute("str",str);
	
%>








<hr/>
定义Map：<br/>

<%
	//Map map1 = new HashMap();
	//map1.put("id", "1");
	//map1.put("name", "张飞");
	//map1.put("age", "38");
	//map1.put("sex", "男");

	//request.setAttribute("map1",map1);
%>






<hr/>
定义1个List装2个Map：<br/>
<%

	//List list = new ArrayList();

	//Map map1 = new HashMap();
	//map1.put("id", "1");
	//map1.put("name", "男");

	//Map map2 = new HashMap();
	//map2.put("id", "2");
	//map2.put("name", "女");
	
	//list.add( map1 );
	//list.add( map2 );
	
	//request.setAttribute("list",list);
%>












