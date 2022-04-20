<%@ page language="java" contentType="text/html;charset=utf-8"%>
<%@ page import="java.util.*" %>


<HTML>
<HEAD>
	<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/main.css">
	<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/dtree/dtree.css"  > 
	<script type="text/javascript" src="<%=request.getContextPath()%>/dtree/dtree.js" ></script>
</HEAD>

<BODY bgColor=#D0E6ED leftMargin=0 topMargin=0 marginwidth="0" marginheight="0">

<table width="90%" border="0" cellspacing="1" cellpadding="2" align="center" >
<tr>
<div class="dtree">

   <script type="text/javascript"> 
        var d = new dTree('d','<%= request.getContextPath() %>'); 


        d.add('01','-1','Struts2练习系统'); 

        d.add('0100','01','查询练习' ); 
		d.add('010100','0100','Hello Struts2.3','','<%= request.getContextPath() %>/hello.action','','right'); 
        d.add('010101','0100','查询USERS列表','','<%= request.getContextPath() %>/jsp/lx/list/list_users.jsp','','right'); 
        d.add('010102','0100','查询BBS列表','','<%= request.getContextPath() %>/jsp/lx/list/list_bbs.jsp','','right');

        
        
        d.add('0101','01','接值练习' ); 
        d.add('010101','0101','接值-基本数据','','<%= request.getContextPath() %>/jsp/lx/add/add1.jsp','','right'); 
        d.add('010102','0101','接值-数组','','<%= request.getContextPath() %>/jsp/lx/add/add2.jsp','','right'); 
        d.add('010103','0101','接值-对象','','<%= request.getContextPath() %>/jsp/lx/add/add3.jsp','','right'); 
        d.add('010104','0101','接值-多个对象','','<%= request.getContextPath() %>/jsp/lx/add/add4.jsp','','right'); 
        
        d.add('0102','01','图书管理' ); 
        d.add('010205','0102','bbs查询','','<%= request.getContextPath() %>/bbs!query.action','','right'); 
        d.add('010206','0102','bookinfo查询','','<%= request.getContextPath() %>/bookinfo!query.action','','right'); 
        d.add('010207','0102','manager查询','','<%= request.getContextPath() %>/jsp/manager/list.jsp','','right'); 
        d.add('010208','0102','member查询','','<%= request.getContextPath() %>/jsp/member/list.jsp','','right');


        
        d.add('0103','01','标签管理' ); 
        d.add('010301','0103','查询列表','','<%= request.getContextPath() %>/tag.action','','right');   
        d.add('010302','0103','iterator标签','','<%= request.getContextPath() %>/tag!iterator.action','','right'); 
        d.add('010303','0103','if标签','','<%= request.getContextPath() %>/tag!iff.action','','right'); 
        d.add('010304','0103','set标签','','<%= request.getContextPath() %>/jsp/tag/set.jsp','','right'); 
        d.add('010305','0103','url标签','','<%= request.getContextPath() %>/jsp/tag/url.jsp','','right'); 
        d.add('010306','0103','action标签','','<%= request.getContextPath() %>/jsp/tag/action.jsp','','right'); 
        d.add('010307','0103','select标签','','<%= request.getContextPath() %>/jsp/tag/select.jsp','','right'); 
        
        d.add('0104','01','头像管理' ); 
        d.add('010401','0104','查询列表','','<%= request.getContextPath() %>/img!query.action','','right');
        
        document.write(d); 
    //--> 
    </script>


</div>
</tr>
</table>
</BODY>
</HTML>
      