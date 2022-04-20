<%@page import="com.turing.utils.date.Date2"%>
<%@page import="com.turing.utils.date.Date"%>
<%@ page language="java" contentType="text/html;charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>




<hr/>
调用静态类的写法：<br/>
当前时间：2013年01月02日 13:27:12<br/>
当前时间：<%=Date.CurrentYMDHSMTime() %><br/>
当前时间：



<hr/>
调用非静态类的写法：<br/>
当前时间：2013年01月02日 13:27:12<br/>
当前时间：<%=new Date2().CurrentYMDHSMTime() %><br/>
当前时间：









