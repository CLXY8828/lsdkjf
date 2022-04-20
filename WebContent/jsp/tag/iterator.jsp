<%@ page language="java" contentType="text/html;charset=utf-8"%>

<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%><HTML>
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
		document.dataForm.action="add.jsp" 
		document.dataForm.submit();
	}
	function delHydm(){ //删除
		if(hasChecked(dataForm)==false){
			alert("请选择要删除的记录");
			return;
		}
		if(confirm("您确定要删除所选中的记录吗?")){
			document.dataForm.action="list.jsp";
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
<TABLE class=opertbl cellSpacing=0 cellPadding=0 width="98%"
	align=center>
	<TBODY>
		<TR>
			<FORM name=dataForm method=post>
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
				<IMG class=img src="<%= request.getContextPath()%>/images/result.gif" align=absMiddle>
			</TD>
		</TR>
	</TBODY>
</TABLE>


<TABLE class=bgtable cellSpacing=1 cellPadding=2 width="98%" align=center border=1>
	<TBODY>
		<TR class=henglan align=center>
			<TD align=center width="5%">操作</TD>
			<TD align=center width="5%">序号</TD>
			<TD align=center width="5%"><INPUT
				style="BORDER-LEFT-COLOR: #b8dced; BORDER-BOTTOM-COLOR: #b8dced; BORDER-TOP-COLOR: #b8dced; BACKGROUND-COLOR: #b8dced; BORDER-RIGHT-COLOR: #b8dced"
				onclick=javascript:check(dataForm,dataForm.all); type=checkbox
				name=all></TD>
			<TD align=center  >名字</TD>
			<TD align=center  >年龄</TD>
			<TD align=center  >性别</TD>
		</TR>

		<%
			java.util.List list = (java.util.List)request.getAttribute("list");
			if( list != null ){
			for(int i=0;i<list.size();i++){
				java.util.Map map = (java.util.Map)list.get(i);
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



</FORM>
<table align="center">
  <tr>
    <td align="right">
    	首页 上一页 上一页 下一页 下一页 尾页 pages:/ 共: 条  
    
    </td>
  </tr>
</table>







<hr/>
对Map的迭代<br/>
<%
	Map map1 = new HashMap();
	map1.put("id", "1");
	map1.put("name", "张飞");
	map1.put("age", "38");
	map1.put("sex", "男");

	request.setAttribute("map1",map1);
%>




<hr/>
对数组的迭代<br/>
<%
	String[] str = {"春","夏","秋","冬"};
	session.setAttribute("str",str);
	
%>







<hr/>
对二维数组的迭代<br/>
<%
	String[][] persons = {
			{"黄有龙","其它","中国香港","白羊座","","127130858282P2LK.jpg"},
			{"凌葳威","模特","中国台湾","白羊座","","1271308149GD3fzJ.jpg"},
			{"于炳贤","主持人","中国台湾","金牛座","","12711511779tzeT6.jpg"},
			{"陈贞君","模特","中国台湾","白羊座","","1270800144rguUsd.jpg"},
			{"齐麟","模特","中国台湾","水瓶座","","12707998888jknIg.jpg"},
			{"梁绰","模特","中国台湾","白羊座","","1270796247d8PbcJ.jpg"},
			{"林凤英","演员 运动员","中国台湾","白羊座","","1270795738uHHLbg.jpg"},
			{"余德琳","模特","中国香港","白羊座","","1270794964FgtkTN.jpg"},
			{"刘熏爱","模特","中国台湾","双子座","","1270791733U843ix.jpg"},
			{"陈达儒","歌手","中国台湾","水瓶座","","1270791121WMmGN3.jpg"},
			{"张凯洁","网络红星","中国台湾","射手座","","1270629632NktqaA.jpg"},
			{"李卓庭","歌手","中国香港","双鱼座","","1270547984x2juqT.jpg"},
			{"李莉琳","模特","中国香港","白羊座","","1270526535PhGfzP.jpg"},
			{"刘乃洁","网络红星","中国台湾","处女座","","1270012836vz9xLd.jpg"}
	};
	request.setAttribute("persons",persons);
%>


<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
</BODY>
</HTML>
