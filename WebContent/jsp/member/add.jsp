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
			<TD>[member维护]</TD>
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
				<TD width="20%" align="center">用户名</TD>
				<TD colSpan=7><INPUT type="text" name=""></TD>
			</TR>
			<TR>
				<TD align="center">密码</TD>
				<TD colSpan=7><INPUT type="password" name=""></TD>
			</TR>
			<TR>
				<TD align="center">昵称</TD>
				<TD colSpan=7><INPUT type="text" name=""></TD>
			</TR>
			<TR>
				<TD align="center">城市</TD>
				<TD colSpan=7><INPUT type="text" name=""></TD>
			</TR>
			<TR>
				<TD align="center">家庭地址</TD>
				<TD colSpan=7><INPUT type="text" name=""></TD>
			</TR>		
			<TR>
				<TD align="center">邮编</TD>
				<TD colSpan=7><INPUT type="text" name=""></TD>
			</TR>
	
			<TR>
				<TD align="center">证件类型</TD>
				<TD colSpan=7>
					<select>
						<option value="-">--请选择--</option>
						<option value="身份证">身份证</option>
						<option value="驾驶证">驾驶证</option>
						<option value="军官证">军官证</option>
						<option value="准考证">准考证</option>
						<option value="产权证">产权证</option>
					</select>
				</TD>
			</TR>
			<TR>
				<TD align="center">证件号</TD>
				<TD colSpan=7><INPUT type="text" name=""></TD>
			</TR>
			<TR>
				<TD align="center">等级</TD>
				<TD colSpan=7>
					<select>
						<option value="-">--请选择--</option>
						<option value="0">一级</option>
						<option value="1">二级</option>
						<option value="2">三级</option>
						<option value="3">四级</option>
						<option value="4">五级</option>
					</select>
				</TD>
			</TR>	
			<TR>
				<TD align="center">数量</TD>
				<TD colSpan=7><INPUT type="text" name=""></TD>
			</TR>
			<TR>
				<TD align="center">电话</TD>
				<TD colSpan=7><INPUT type="text" name=""></TD>
			</TR>
			<TR>
				<TD align="center">email</TD>
				<TD colSpan=7><INPUT type="text" name=""></TD>
			</TR>
			<TR>
				<TD align="center">是否冻结</TD>
				<TD colSpan=7>
					<INPUT type="radio" name="a" style="width: 30px">冻结
					<INPUT type="radio" name="a" style="width: 30px" checked="checked">不冻
				</TD>
			</TR>
		</TBODY>
	</TABLE>
</FORM>
</BODY>
</HTML>
