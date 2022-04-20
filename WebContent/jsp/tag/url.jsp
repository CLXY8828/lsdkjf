<%@ page language="java" contentType="text/html;charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<a href="../../index.jsp">首页</a>../../index.jsp<br/>
<a href="/Struts2Lx3/index.jsp">首页</a>/Struts2Lx3/index.jsp<br/>
<a href="<%=request.getContextPath() %>/index.jsp">首页</a><%=request.getContextPath() %>/index.jsp<br/>

<hr/>
不带参数的链接写法：<br/>

<!-- 会添加项目的请求名称 -->
/Struts2/index.jsp<br/>

<hr/>

<!-- 不会添加项目的请求名称 -->
/Struts2/index.jsp<br/>

<hr/>


<!-- 链接到控制器的链接写法 -->
/Struts2/tag!iterator.action<br/>


<hr/>
带参数的链接写法：<br/>

/Struts2/index.jsp?id=1&name=zf<br/>

<br/>
/Struts2/tag!iterator.action?id=1&name=zf<br/>














