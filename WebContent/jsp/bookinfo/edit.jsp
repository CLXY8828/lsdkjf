<%@ page language="java" contentType="text/html;charset=utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE unspecified PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>

<LINK href="<%=request.getContextPath()%>/css/main.css" type=text/css rel=stylesheet>



<SCRIPT language=javascript>


	function saveObj(){ //保存修改对象

		document.editForm.action="<%= request.getContextPath() %>/bookinfo!edit.action" 
		document.editForm.submit();

	}
	function back(){//返回上一页面	 
		document.editForm.action ="<%= request.getContextPath() %>/bookinfo!query.action";
		document.editForm.submit();
	}	

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
			<TD>[bookinfo维护]</TD>
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
	<INPUT type="hidden"   name="bookinfo.idsn"  value='<s:property value="%{#request.map.isbn}"/>'>
	
	<TABLE class=bgtable cellSpacing=1 cellPadding=2 width="98%" align=center border=1>
		<TBODY>
			<TR>
				<TD width="20%" align="center">书名</TD>
				<TD colSpan=7><INPUT type="text" name="bookinfo.bookName" value="<s:property value="%{#request.map.bookName}"/>"></TD>
			</TR>
			<TR>
				<TD align="center">类型</TD>
				<TD colSpan=7><INPUT type="text" name="bookinfo.type" value="<s:property value="%{#request.map.type}"/>"></TD>
			</TR>
			<TR>
				<TD align="center">出版社</TD>
				<TD colSpan=7><INPUT type="text" name="bookinfo.publisher" value="<s:property value="%{#request.map.publisher}"/>"></TD>
			</TR>
			<TR>
				<TD align="center">作者</TD>
				<TD colSpan=7><INPUT type="text" name="bookinfo.writer" value="<s:property value="%{#request.map.writer}"/>"></TD>
			</TR>
			<TR>
				<TD align="center">价格</TD>
				<TD colSpan=7><INPUT type="text" name="bookinfo.price" value="<s:property value="%{#request.map.price}"/>"></TD>
			</TR>
			<TR>
				<TD align="center">出版日期</TD>
				<TD colSpan=7><INPUT type="text" name="bookinfo.pdate" value="<s:property value="%{#request.map.pdate}"/>"></TD>
			</TR>
			<TR>
				<TD align="center">图片</TD>
				<TD colSpan=7><INPUT type="text" name="bookinfo.cover" value="<s:property value="%{#request.map.cover}"/>"></TD>
			</TR>
			<TR>
				<TD align="center">登记日期</TD>
				<TD colSpan=7><INPUT type="text" name="bookinfo.inTime" value="<s:property value="%{#request.map.inTime}"/>"></TD>
			</TR>
			<TR>
				<TD align="center">是否是新书</TD>
				<TD colSpan=7>
					<input type="radio" name="bookinfo.newbook" value="1" style="width: 30px" checked="<s:property value="%{#request.map.newbook==1?\'checked\':''}"/>"/>新书
					<input type="radio" name="bookinfo.newbook" value="0" style="width: 30px" checked="<s:property value="%{#request.map.newbook==0?\'checked\':''}"/>"/>旧书
				</TD>
			</TR>
			<TR>
				<TD align="center">是否推荐</TD>
				<TD colSpan=7>
					<input type="radio" name="bookinfo.commend" value="1" style="width: 30px" checked="<s:property value="%{#request.map.commend==1?\'checked\':''}"/>"/>推荐
					<input type="radio" name="bookinfo.commend" value="0" style="width: 30px" checked="<s:property value="%{#request.map.commend==0?\'checked\':''}"/>"/>不推荐
				</TD>
			</TR>
			<TR>
				<TD align="center">介绍</TD>
				<TD colSpan=7>
					<TEXTAREA NAME="bookinfo.introduce" ROWS="5" COLS="60"><s:property value="%{#request.map.introduce}"/></TEXTAREA>
				</TD>
			</TR>
		</TBODY>
	</TABLE>
</FORM>	
</BODY>
</HTML>
