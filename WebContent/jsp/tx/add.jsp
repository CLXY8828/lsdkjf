<%@page contentType="text/html; charset=utf-8" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<SCRIPT LANGUAGE="JavaScript">
function add( ){
 document.f.submit();
}
</SCRIPT>
<A HREF="javascript:add()">开始上传</A>
<s:form name="f" action="img!upload" method="post" enctype="multipart/form-data"> 

 <TABLE border="1" width="700">
 <TR>
 <TD>图片名称</TD>
 <TD>
 <s:textfield name="picture.name"/>
 </TD>
 </TR>
 <TR>
 <TD>图片</TD>
 <TD>
 <s:file name="picture.upload"/>
 </TD>
 </TR>
 <TR>
 <TD>描述</TD>
 <TD>
 <s:textarea name="picture.remark" rows="4" cols="40"/>
 </TD>
 </TR>
 </TABLE>
</s:form>