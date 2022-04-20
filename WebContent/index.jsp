<%@ page language="java" contentType="text/html;charset=utf-8"%>
<HTML><HEAD><TITLE>Struts2练习系统</TITLE>

<LINK 
href="css/login.css" type=text/css rel=stylesheet>
<SCRIPT language=javascript>
<!--
function Init() {
	swidth = screen.width;
	sheight = screen.height;
	if(swidth==800 && sheight==600){	
		document.frmLogin.screenSize.value="800";		
	}else{
		document.frmLogin.screenSize.value="1024";	
	}
 	document.frmLogin.loginId.focus();
 }
//-->
</SCRIPT>

<META content="MSHTML 6.00.6000.16981" name=GENERATOR></HEAD>
<BODY leftMargin=0 background=images/loginbg.jpg topMargin=0 
onload=Init();>
<DIV align=center>
<FORM name=frmLogin action="main.jsp" method=post><INPUT type=hidden 
name=screenSize> 
<TABLE id=table1 height=432 cellSpacing=0 cellPadding=0 width=728 border=0>
  <TBODY>
  <TR>
    <TD background=images/loginbgcolor.jpg>
      <DIV align=center>
      <TABLE id=table2 height=249 cellSpacing=1 width="100%" border=0>
        <TBODY>
        <TR>
          <TD height=76>　</TD>
          <TD width=174 height=76>　</TD>
          <TD width=226 height=76>　</TD>
          <TD width=144 height=76>　</TD></TR>
        <TR>
          <TD height=106>　</TD>
          <TD width=174 height=100>　</TD>
          <TD width=226 height=106>　</TD>
          <TD width=144 height=106>　</TD></TR>
        <TR>
          <TD>　</TD>
          <TD width=174>　</TD>
          <TD width=226>
            <DIV align=center>
            <TABLE id=table3 height=51 width="100%" border=0>
              <TBODY>
              <TR>
                <TD><FONT color=#ffffff>用户：</FONT></TD>
                <TD><INPUT 
                  style="BORDER-RIGHT: #c0c0c0 1px solid; BORDER-TOP: #c0c0c0 1px solid; BORDER-LEFT: #c0c0c0 1px solid; COLOR: #ffffff; BORDER-BOTTOM: #c0c0c0 1px solid; BACKGROUND-COLOR: transparent" 
                  tabIndex=1 maxLength=20 size=14 name=loginId></TD>
                <TD width=50 rowSpan=2>
                  <INPUT type=image src="images/login.gif"  name=imageField>
                </TD></TR>
              <TR>
                <TD vAlign=center><FONT color=#ffffff>密码：</FONT></TD>
                <TD><INPUT 
                  style="BORDER-RIGHT: #c0c0c0 1px solid; BORDER-TOP: #c0c0c0 1px solid; BORDER-LEFT: #c0c0c0 1px solid; COLOR: #ffffff; BORDER-BOTTOM: #c0c0c0 1px solid; BACKGROUND-COLOR: transparent" 
                  tabIndex=2 type=password maxLength=20 size=16 
              name=password></TD></TR></TBODY></TABLE></DIV></TD>
          <TD 
width=144>　</TD></TR></TBODY></TABLE></DIV></TD></TR></TBODY></TABLE></FORM></DIV></BODY></HTML>
