<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE unspecified PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>

<LINK href="<%=request.getContextPath()%>/css/main.css" type=text/css rel=stylesheet>


<SCRIPT language=javascript>
<!--

	function saveObj(){ //保存修改对象

		document.editForm.action="<%=request.getContextPath()%>/bbs?method=add" 
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
			<TD>[对象接值]</TD>
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
	<TABLE class=bgtable cellSpacing=1 cellPadding=2 width="98%" align=center border=1>
		<TBODY>
			<TR>
				<TD width="20%" align=center>姓名</TD>
				<TD colSpan=7><INPUT maxLength=200 name=""></TD>
			</TR>
			<TR>
				<TD align=center>性别</TD>
				<TD colSpan=7>
					<input type="radio" name="sex" value="男" style="width: 30px" checked="checked">男
					<input type="radio" name="sex" value="女" style="width: 30px">女
				</TD>
			</TR>
			<TR>
				<TD align=center>年龄</TD>
				<TD colSpan=7><INPUT maxLength=200 name=""></TD>
			</TR>
			<TR>
				<TD align=center>邮箱</TD>
				<TD colSpan=7><INPUT maxLength=200 name=""></TD>
			</TR>
	
			<TR>
				<TD align=center>联系方式</TD>
				<TD colSpan=7><INPUT maxLength=200 name=""></TD>
			</TR>
			<TR>
				<TD align=center>兴趣爱好</TD>
				<TD colSpan=7>
					<INPUT TYPE="checkbox" NAME="like" VALUE="篮球" style="width: 30px">篮球 
					
					<INPUT TYPE="checkbox" NAME="like" VALUE="足球" style="width: 30px">足球 
					
					<INPUT TYPE="checkbox" NAME="like" VALUE="游泳" style="width: 30px">游泳 
					
					<INPUT TYPE="checkbox" NAME="like" VALUE="击剑" style="width: 30px">击剑 
					
					<INPUT TYPE="checkbox" NAME="like" VALUE="摔跤" style="width: 30px">摔跤<BR> 
				</TD>
			</TR>
			<TR>
				<TD align=center>简介</TD>
				<TD colSpan=7>
					<textarea rows="5" cols="60"></textarea>
				</TD>
			</TR>
		</TBODY>
	</TABLE>
</FORM>


</BODY>
</HTML>