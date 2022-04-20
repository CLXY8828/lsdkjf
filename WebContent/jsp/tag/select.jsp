<%@ page language="java" contentType="text/html;charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<%String c = "驾驶证"; %>

添加页面：
<select>
	<option value="-">--请选择--</option>
	<option value="身份证">身份证</option>
	<option value="驾驶证">驾驶证</option>
	<option value="军官证">军官证</option>
	<option value="准考证">准考证</option>
	<option value="产权证">产权证</option>
</select>
<br/>
修改页面：
<select>
	<option value="-">--请选择--</option>
	<option value="身份证" <%=c.equals("身份证")?" selected":"" %>>身份证</option>
	<option value="驾驶证" <%=c.equals("驾驶证")?" selected":"" %>>驾驶证</option>
	<option value="军官证" <%=c.equals("军官证")?" selected":"" %>>军官证</option>
	<option value="准考证" <%=c.equals("准考证")?" selected":"" %>>准考证</option>
	<option value="产权证" <%=c.equals("产权证")?" selected":"" %>>产权证</option>
</select>




<hr/>
<%String sex = "2"; %>
添加页面：
<select>
	<option value="-">--请选择--</option>
	<option value="1">男</option>
	<option value="2">女</option>
</select>
<br/>
修改页面：
<select>
	<option value="-">--请选择--</option>
	<option value="1" <%=sex.equals("1")?" selected":"" %>>男</option>
	<option value="2" <%=sex.equals("2")?" selected":"" %>>女</option>
</select>

				