<%@page contentType="text/html; charset=utf-8" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<SCRIPT LANGUAGE="JavaScript">
function out( obj ){
 obj.style.border='2px solid white';
}
function over( obj ){
 obj.style.border='2px solid green';
}
function out1( obj ){
 obj.style.border='1px solid white';
}
function over1( obj ){
 obj.style.border='1px solid green';
}
function del(){
 document.f.action="<%=request.getContextPath()%>/pic!delete.action";
 document.f.submit();
}
</SCRIPT>
<s:a action="img" method="addpage">上传图片</s:a>
<a href="javascript:del();">删除</a>
<br/>
<br/>
<FORM name="f" METHOD=POST ACTION="">
<DIV style="BORDER-RIGHT: 2px dashed #000000; BORDER-TOP: 2px dashed #000000; BACKGROUND: #ffffff; BORDER-LEFT: 2px dashed #000000; WIDTH: 735; BORDER-BOTTOM: 2px dashed #000000;padding-bottom:10px" align=left>
 <s:iterator id="pic" value="list" >
 <div style="margin-left:10px;margin-top:10px;WIDTH: 100;float:left">
 <div style="WIDTH: 100%;border:2px solid white" onmouseout="out(this)" onmouseover="over(this)">
 <img src="<%=request.getContextPath() %>/img!download.action?id=<s:property value="#pic.id"/>"/>
 </div>
 <div style="WIDTH: 100%">
 <INPUT TYPE="checkbox" NAME="ids" value="<s:property value="#pic.id"/>">
 <s:property value="#pic.name"/>
 </div> 
 </div>
 </s:iterator>
</DIV> 
</FORM>
<TABLE width="735">
<TR>
 <TD align="center">
 上一页 1 2 3 下一页
 </TD>
</TR>
</TABLE>