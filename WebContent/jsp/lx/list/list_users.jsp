<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="com.turing.framework.dao.Dao"%>
<%@page import="com.turing.framework.dao.DaoImpl"%>
<%@ page language="java" contentType="text/html;charset=utf-8"%>
<!DOCTYPE unspecified PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>
<LINK href="<%= request.getContextPath()%>/css/main.css" type=text/css rel=stylesheet>
<script language=JScript.Encode src="<%= request.getContextPath() %>/images/checkbox.js"></script>
<script language=JScript.Encode src="<%= request.getContextPath() %>/images/checkValue.js"></script>



<SCRIPT language=javascript>
<!--
	var rowIndex = 1;
	function showList(){ //查询
		document.dataForm.action="list.jsp";
		document.dataForm.submit();
	}
	function creatHydm(){ //添加

	}
	function delHydm(){ //删除

	}	
//-->
</SCRIPT>

<META content="MSHTML 6.00.6000.16981" name=GENERATOR>
</HEAD>
<BODY>
<FORM name=dataForm method=post style="margin: 0px">
	<TABLE cellSpacing=0 cellPadding=0 width="98%" align=center>
		<TBODY>
			<TR>
				<TD class=topg></TD>
			</TR>
		</TBODY>
	</TABLE>
	<TABLE class=opertbl cellSpacing=0 cellPadding=0 width="98%"
		align=center>
		<TBODY>
			<TR>
				
				<TD align=left width="1%">
					<IMG class=img src="<%= request.getContextPath()%>/images/opertblleft.gif">
				</TD>
				<TD>[用户查询]</TD>
	
				<TD align=right width="26%">
		
					<A href="javascript:creatHydm();"> 
						<IMG class=imgd src="<%= request.getContextPath()%>/images/add.gif"> 
					</A> 
					<A href="javascript:delHydm();"> 
						<IMG class=imgd src="<%= request.getContextPath()%>/images/del.gif"> 
					</A>
				</TD>
				<TD align=left width="1%">
					<IMG class=img src="<%= request.getContextPath()%>/images/opertblright.gif">
				</TD>
			</TR>
		</TBODY>
	</TABLE>
	<TABLE cellSpacing=0 cellPadding=0 width="98%" align=center>
		<TBODY>
			<TR>
				<TD class=topg></TD>
			</TR>
		</TBODY>
	</TABLE>
	<TABLE cellSpacing=0 cellPadding=0 width="98%" align=center border=0>
		<TBODY>
			<TR>
				<TD>
					<IMG class=img src="<%= request.getContextPath()%>/images/result.gif" align="middle">
				</TD>
			</TR>
		</TBODY>
	</TABLE>
	<TABLE class=bgtable cellSpacing=1 cellPadding=2 width="98%" align=center border=1>
		<TBODY>
			<TR class=henglan align=center>
				<TD align=center width="5%">操作</TD>
				<TD align=center width="4%">序号</TD>
				<TD align=center width="4%"><INPUT
					style="BORDER-LEFT-COLOR: #b8dced; BORDER-BOTTOM-COLOR: #b8dced; BORDER-TOP-COLOR: #b8dced; BACKGROUND-COLOR: #b8dced; BORDER-RIGHT-COLOR: #b8dced"
					onclick=javascript:check(dataForm,dataForm.all); type=checkbox
					name=all></TD>
				<TD align=center  >名字</TD>
				<TD align=center  >年龄</TD>
				<TD align=center  >性别</TD>
			</TR>
	
	<%
		
		List<Map<String, Object>> list = (List)request.getAttribute("list");
		if( list != null ){
		for(int i=0;i<list.size();i++){
			Map<String, Object> map = list.get(i);
	%>
			<TR class=tabtd1 onmouseover=MouseMoveIn(this); onmouseout=MouseMoveOut(this);>
				<TD align="center">
					<A href="edit.jsp">
						<IMG class=img alt=修改 src="<%= request.getContextPath()%>/images/modify.gif">
					</A>
				</TD>
				<TD align="center"><%=i+1 %></TD>
				<TD align="center"><INPUT type=checkbox value=10 name=ids></TD>
				<TD align="center"><%=map.get("name") %></TD>
				<TD align="center"><%=map.get("age") %></TD>
				<TD align="center"><%=map.get("sex") %></TD>
			</TR>
	<%}} %>
	
	
	
			
		</TBODY>
	</TABLE>
	
	<table align="center">
	  <tr>
	    <td align="right">
	    	首页 上一页 上一页 下一页 下一页 尾页 pages:/ 共: 条  
	    
	    </td>
	  </tr>
	</table>

</FORM>
</BODY>
</HTML>
