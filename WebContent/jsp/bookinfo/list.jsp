<%@ page language="java" contentType="text/html;charset=utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE unspecified PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>
<LINK href="<%= request.getContextPath()%>/css/main.css" type=text/css rel=stylesheet>
<script language=JScript.Encode src="<%= request.getContextPath() %>/images/checkbox.js"></script>
<script language=JScript.Encode src="<%= request.getContextPath() %>/images/checkValue.js"></script>


<script type="text/javascript">
function delHydm(){ //删除
		document.dataForm.action="<%=request.getContextPath()%>/bookinfo!delete.action";
		document.dataForm.submit();
}
</script>

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
				<TD>[bookinfo查询]</TD>
	
				<TD align=right width="26%">
					<A href="javascript:showList();">
						<IMG class=imgd src="<%= request.getContextPath()%>/images/query.gif">
					</A> 
					<A href="<%=request.getContextPath()%>/bookinfo!addpage.action"> 
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
				<TD align=center  >书名</TD>
				<TD align=center width="10%">出版社</TD>
				<TD align=center width="20%">作者</TD>
				<TD align=center width="10%">价格</TD>
				<TD align=center width="10%">出版日期</TD>
				
			</TR>
	
			<s:iterator id="map" value="%{#request.list}" status="i">
			<TR class=tabtd1 onmouseover=MouseMoveIn(this); onmouseout=MouseMoveOut(this);>
				<TD align="center">
					<A href="<%= request.getContextPath()%>/bookinfo!editpage?isbn=<s:property value="%{#map.isbn}"/>">
						<IMG class=img alt=修改 src="<%= request.getContextPath()%>/images/modify.gif">
					</A>
				</TD>
				<TD align="center"><s:property value="%{#i.count}"/></TD>
				<TD align="center"><INPUT type=checkbox value='<s:property value="%{#map.isbn}"/>' name='ids'></TD>
				<TD align="center"><s:property value="%{#map.bookName}"/></TD>
				<TD align="center"><s:property value="%{#map.publisher}"/></TD>
				<TD align="center"><s:property value="%{#map.writer}"/></TD>
				<TD align="center"><s:property value="%{#map.price}"/></TD>
				<TD align="center"><s:property value="%{#map.pdate}"/></TD>
			</TR>
			</s:iterator>
	
	
			
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
