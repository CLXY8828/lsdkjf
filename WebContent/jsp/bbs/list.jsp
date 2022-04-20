<%@ page language="java" contentType="text/html;charset=utf-8"%>
<!DOCTYPE unspecified PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>
<LINK href="<%= request.getContextPath()%>/css/main.css" type=text/css rel=stylesheet>
<script language=JScript.Encode src="<%= request.getContextPath() %>/images/checkbox.js"></script>
<script language=JScript.Encode src="<%= request.getContextPath() %>/images/checkValue.js"></script>


<SCRIPT language=javascript>
<!--
var newTag = "0";
var CalendarWebControl = new atCalendarControl();
//-->
</SCRIPT>

<SCRIPT language=javascript>
<!--
	var rowIndex = 1;
	function showList(){ //查询
		document.dataForm.action="list.jsp" 
		document.dataForm.submit();
	}
	function creatHydm(){ //添加
		document.dataForm.action="<%=request.getContextPath()%>/bbs!addpage.action" 
		document.dataForm.submit();
	}
	function delHydm(){ //删除
		if(hasChecked(dataForm)==false){
			alert("请选择要删除的记录");
			return;
		}
		if(confirm("您确定要删除所选中的记录吗?")){
			document.dataForm.action="<%=request.getContextPath()%>/bbs!delete.action";
			document.dataForm.submit();
		}
	}	
//-->
</SCRIPT>

<META content="MSHTML 6.00.6000.16981" name=GENERATOR>
</HEAD>
<BODY>
<TABLE cellSpacing=0 cellPadding=0 width="98%" align=center>
	<TBODY>
		<TR>
			<TD class=topg></TD>
		</TR>
	</TBODY>
</TABLE>
<TABLE class=opertbl cellSpacing=0 cellPadding=0 width="98%" align=center border="0">
	<TBODY>
		<TR>
			<FORM name=dataForm method=post>
			<TD align=left width="1%">
				<IMG class=img src="<%= request.getContextPath()%>/images/opertblleft.gif">
			</TD>
			<TD>[BBS查询]</TD>

			<TD align=right width="26%">
				<A href="javascript:showList();">
					<IMG class=imgd src="<%= request.getContextPath()%>/images/query.gif">
				</A> 
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
				<IMG class=img src="<%= request.getContextPath()%>/images/result.gif" align=absMiddle>
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
			<TD align=center  >内容</TD>
			<TD align=center width="20%">时间</TD>
		</TR>

<%
	java.util.List list = (java.util.List)request.getAttribute("list");
	if( list != null ){
	for(int i=0;i<list.size();i++){
		java.util.Map map = (java.util.Map)list.get(i);
%>
		<TR class=tabtd1 onmouseover=MouseMoveIn(this); onmouseout=MouseMoveOut(this);>
			<TD align="center">
				<A href="<%=request.getContextPath() %>/bbs!editpage.action?id=<%=map.get("id") %>">
					<IMG class=img alt=修改 src="<%= request.getContextPath()%>/images/modify.gif">
				</A>
			</TD>
			<TD align="center"><%=i+1 %></TD>
			<TD align="center"><INPUT type=checkbox name=ids value="<%=map.get("id") %>"></TD>
			<TD align="center"><%=map.get("content") %></TD>
			<TD align="center"><%=map.get("inTime") %></TD>
		</TR>
<%}} %>
	



		</FORM>
	</TBODY>
</TABLE>

<table align="center">
  <tr>
    <td align="right">
    	首页 上一页 上一页 下一页 下一页 尾页 pages:/ 共: 条  
    
    </td>
  </tr>
</table>


</BODY>
</HTML>
