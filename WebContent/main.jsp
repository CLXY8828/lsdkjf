<%@page language="java" contentType="text/html;charset=utf-8"%>

<html>
<HEAD>
<meta http-equiv="Page-Enter" content="revealTrans(duration=1, transition=23)">
<TITLE>Struts2练习系统</TITLE>
<LINK href="<%= request.getContextPath()%>/css/style.css" type=text/css rel=stylesheet>
</HEAD>
<FRAMESET name="page" frameSpacing=0 rows="80,10,*" frameBorder=NO>
	<FRAME name="toppage" src="frame/top.jsp" scrolling=no target="_self">
	<FRAME name="topcontrol" src="frame/topcontrol.htm" scrolling=no>
	<FRAMESET id="bbsArea" name="main" frameSpacing=0 frameBorder=NO cols=200,9,*>
		<FRAMESET id="_leftAll" name="leftAll" frameSpacing=0 rows=25,*,35 frameBorder=NO>
			<FRAME id="_leftup" name="leftup" src="frame/leftup.jsp" scrolling=no target="right" noresize>
			<FRAME id="_left" name="left" src="left.jsp" scrolling=auto target="right">
			<FRAME id="_leftdown" name="leftdown" src="frame/leftdown.htm" scrolling=no target="right" noresize>
		</FRAMESET>
		<FRAME name="leftcontrol" src="frame/leftcontrol.htm" scrolling=no>
		<FRAME name="right" src="frame/right.htm" scrolling=yes>
	</FRAMESET>
</FRAMESET>
</HTML>
