<%@ page language="java" contentType="text/html;charset=utf-8"%>
<!DOCTYPE unspecified PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>

<LINK href="<%=request.getContextPath()%>/css/main.css" type=text/css rel=stylesheet>

<SCRIPT language=javascript>
<!--

	function saveObj(){ //保存修改对象

		document.editForm.action="list.jsp" 
		document.editForm.submit();

	}
	function back(){//返回上一页面	 
		document.editForm.action ="list.jsp";
		document.editForm.submit();
	}	



//-->
</SCRIPT>

<META content="MSHTML 6.00.6000.16981" name=GENERATOR>
</HEAD>
<BODY onload=Init();>
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
				<IMG class=img src="<%=request.getContextPath()%>/images/opertblleft.gif">
			</TD>
			<TD>[manager维护]</TD>
			<TD align=right width="78%">
				<A href="javascript:saveObj();">
					<IMG class=imgd src="<%=request.getContextPath()%>/images/save.gif">
				</A>
				<A href="javascript:back();">
					<IMG class=imgd src="<%=request.getContextPath()%>/images/back.gif">
				</A>
			</TD>
			<TD align=left width="1%">
				<IMG class=img src="<%=request.getContextPath()%>/images/opertblright.gif">
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

<FORM name=editForm method=post style="margin: 0px">
	<INPUT type="hidden" name="" value="">
	
	<TABLE class=bgtable cellSpacing=1 cellPadding=2 width="98%" align=center border=1>
		<TBODY>
			<TR>
				<TD width="20%" align="center">用户名</TD>
				<TD colSpan=7><INPUT type="text" name="" value=""></TD>
			</TR>
			<TR>
				<TD align="center">密码</TD> 
				<TD colSpan=7><INPUT type="text" name="" value=""></TD>
			</TR>
		</TBODY>
	</TABLE>
</FORM>
</BODY>
</HTML>
