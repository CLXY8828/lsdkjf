<%@ page language="java" contentType="text/html;charset=utf-8"%>

<HTML><HEAD>
<TITLE></TITLE>
<LINK href="<%=request.getContextPath()%>/css/style.css" type=text/css rel=stylesheet>
<base target="right">
</HEAD>

<BODY bgColor="#CEEBFF" leftMargin=0 topMargin=0 marginheight="0" marginwidth="0" >
<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table1" height="27">
	<tr>
		<td>
		<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table2">
			<tr>
				<td width="400">
				<img border="0" src="<%=request.getContextPath()%>/images/frame/title_left.jpg" width="479" height="80"></td>
				<td background="<%=request.getContextPath()%>/images/frame/topbg.jpg">
				<p align="center">&nbsp;</td>
				<td width="240" background="<%=request.getContextPath()%>/images/frame/title_right.jpg" valign="top">
				<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table4">
					<tr>
						<td>
						<div align="right">
							<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table5">
								<tr>
									<td height="20">
									<p align="center">
									<img border="0" src="<%=request.getContextPath()%>/images/frame/calendar.gif" align="right">&nbsp;</td>
									<td width="220"> <font color="#ffffff">今天是:2021年3月10日</SCRIPT></font></td>
								</tr>
							</table>
						</div>
						</td>
					</tr>
					<tr>
						<td height="20">  </td>
					</tr>
					<tr>
						<td>
						<div align="right">
							<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table6" height="23">
								<tr>
									<td width="20">									
										<img border="0" src="<%=request.getContextPath()%>/images/frame/user.gif">
									</td>
									<td width="100" valign="middle">
										<a ><font color="#FFFFFF" id="userName">系统管理员</font></a>
									</td>
									<td width="20">
										<img border="0" src="<%=request.getContextPath()%>/images/frame/relogin.gif">
									</td>
										<td width="100" valign="middle"><a href="<%=request.getContextPath() %>/index.jsp" target="_top"><font color="ffffff">重新登录</font></a>
									</td>
								</tr>
							</table>
						</div>
						</td>
					</tr>
				</table>
				</td>
			</tr>
		</table>
		</td>
	</tr>
</table>
</BODY>
</HTML>