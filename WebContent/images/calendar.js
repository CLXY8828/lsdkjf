function atCalendarControl(){
  var calendar=this;
  this.calendarPad=null;
  this.prevMonth=null;
  this.nextMonth=null;
  this.prevYear=null;
  this.nextYear=null;
  this.goToday=null;
  this.calendarClose=null;
  this.calendarAbout=null;
  this.head=null;
  this.body=null;
  this.today=[];
  this.currentDate=[];
  this.sltDate;
  this.target;
  this.source;

  /************** 加入日历底板及阴影 *********************/
  this.addCalendarPad=function(){
   document.write("<div id='divCalendarpad' style='position:absolute;top:100;left:0;width:255;height:167;display:none;'>");
   document.write("<iframe frameborder=0 height=168 width=255></iframe>");
   document.write("<div style='position:absolute;top:4;left:4;width:248;height:164;background-color:#EFEAE4;'></div>");
   document.write("</div>");
   calendar.calendarPad=document.all.divCalendarpad;
  }
  /************** 加入日历面板 *********************/
  this.addCalendarBoard=function(){
   var BOARD=this;
   var divBoard=document.createElement("div");
   calendar.calendarPad.insertAdjacentElement("beforeEnd",divBoard);
   divBoard.style.cssText="position:absolute;top:0;left:0;width:250;height:166;border:0 outset;background-color:buttonface;";
   
   var tbBoard=document.createElement("table");
   divBoard.insertAdjacentElement("beforeEnd",tbBoard);
   tbBoard.style.cssText="position:absolute;top:0;left:0;width:100%;height:10;font-size:9pt;color: #FFFFFF;";
   tbBoard.cellPadding=0;
   tbBoard.cellSpacing=1;
   tbBoard.bgColor="#99A0A8";

  /************** 设置各功能按钮的功能 *********************/
   /*********** Calendar About Button ***************/
   trRow = tbBoard.insertRow(0);
   calendar.calendarAbout=calendar.insertTbCell(trRow,0,"?","center");
   calendar.calendarAbout.onclick=function(){calendar.about();}
   /*********** Calendar Head ***************/
   tbCell=trRow.insertCell(1);
   tbCell.colSpan=5;
   tbCell.bgColor="#9E9EDC";
   tbCell.align="center";
   tbCell.style.cssText = "cursor:default";
   calendar.head=tbCell;
   /*********** Calendar Close Button ***************/
   tbCell=trRow.insertCell(2);
   calendar.calendarClose = calendar.insertTbCell(trRow,2,"x","center");
   calendar.calendarClose.title="关闭";
   calendar.calendarClose.onclick=function(){calendar.hide();}

   /*********** Calendar PrevYear Button ***************/
   trRow = tbBoard.insertRow(1);
   calendar.prevYear = calendar.insertTbCell(trRow,0,"&lt;&lt;","center");
   calendar.prevYear.title="上一年";
   calendar.prevYear.onmousedown=function(){
    calendar.currentDate[0]--;
    calendar.show(calendar.target,calendar.currentDate[0]+"-"+calendar.currentDate[1]+"-"+calendar.currentDate[2],calendar.source);
   }
   /*********** Calendar PrevMonth Button ***************/
   calendar.prevMonth = calendar.insertTbCell(trRow,1,"&lt;","center");
   calendar.prevMonth.title="上一月";
   calendar.prevMonth.onmousedown=function(){
    calendar.currentDate[1]--;
    if(calendar.currentDate[1]==0){
     calendar.currentDate[1]=12;
     calendar.currentDate[0]--;
    }else if(calendar.currentDate[1] < 10){
		calendar.currentDate[1] = "0"+calendar.currentDate[1];
	}
    calendar.show(calendar.target,calendar.currentDate[0]+"-"+calendar.currentDate[1]+"-"+calendar.currentDate[2],calendar.source);
   }
   /*********** Calendar Today Button ***************/
   calendar.goToday = calendar.insertTbCell(trRow,2,"今天","center",3);
   calendar.goToday.title="选择今天";  
   calendar.goToday.onclick=function(){
   //calendar.sltDate=calendar.currentDate[0]+"-"+calendar.currentDate[1]+"-"+calendar.currentDate[2];
   calendar.sltDate=calendar.today[0]+"-"+calendar.today[1]+"-"+calendar.today[2];
   calendar.target.value=calendar.sltDate;
   calendar.hide();
   //calendar.show(calendar.target,calendar.today[0]+"-"+calendar.today[1]+"-"+calendar.today[2],calendar.source);
   }
   /*********** Calendar NextMonth Button ***************/
	calendar.nextMonth = calendar.insertTbCell(trRow,3,"&gt;","center");
	calendar.nextMonth.title="下一月";
	calendar.nextMonth.onmousedown=function(){
	calendar.currentDate[1]++;	
	if(calendar.currentDate[1]==13){		
		calendar.currentDate[1]=1;
		calendar.currentDate[0]++;
	}
	if(calendar.currentDate[1] < 10){
		calendar.currentDate[1] = "0"+calendar.currentDate[1];
	}
   calendar.show(calendar.target,calendar.currentDate[0]+"-"+calendar.currentDate[1]+"-"+calendar.currentDate[2],calendar.source);
   }
   /*********** Calendar NextYear Button ***************/
   calendar.nextYear = calendar.insertTbCell(trRow,4,"&gt;&gt;","center");
   calendar.nextYear.title="下一年";
   calendar.nextYear.onmousedown=function(){
    calendar.currentDate[0]++;
    calendar.show(calendar.target,calendar.currentDate[0]+"-"+calendar.currentDate[1]+"-"+calendar.currentDate[2],calendar.source);
   }

   trRow = tbBoard.insertRow(2);
   var cnDateName = new Array("日","一","二","三","四","五","六");
   for (var i = 0; i < 7; i++) {
    tbCell=trRow.insertCell(i)
    tbCell.innerText=cnDateName[i];
    tbCell.align="center";
    tbCell.width=35;
    tbCell.style.cssText="cursor:default;border:1 solid #fafafa;background-color:#fafafa;color: #000000;";
   }

   /*********** Calendar Body ***************/
   trRow = tbBoard.insertRow(3);
   tbCell=trRow.insertCell(0);
   tbCell.colSpan=7;
   tbCell.height=97;
   tbCell.vAlign="top";
   tbCell.bgColor="#F2EFEA";
   var tbBody=document.createElement("table");
   tbCell.insertAdjacentElement("beforeEnd",tbBody);
   tbBody.style.cssText="position:relative;top:0;left:0;width:245;height:103;font-size:9pt;"
   tbBody.cellPadding=0;
   tbBody.cellSpacing=1;
   calendar.body=tbBody;
  }
  /************** 加入功能按钮公共样式 *********************/
  this.insertTbCell=function(trRow,cellIndex,TXT,trAlign,tbColSpan){
   var tbCell=trRow.insertCell(cellIndex);
   if(tbColSpan!=undefined) tbCell.colSpan=tbColSpan;

   var btnCell=document.createElement("button");
   tbCell.insertAdjacentElement("beforeEnd",btnCell);
   btnCell.value=TXT;
   btnCell.style.cssText="width:100%;border:1 outset;background-image: url(/BZJD/images/bb.JPG);";
   btnCell.onmouseover=function(){
    btnCell.style.cssText="width:100%;border:1 outset;background-color:#ffffff;";
   }
   btnCell.onmouseout=function(){
    btnCell.style.cssText="width:100%;border:1 outset;background-image: url(/BZJD/images/bb.JPG);";
   }
  // btnCell.onmousedown=function(){
  //  btnCell.style.cssText="width:100%;border:1 inset;background-color:#F0F0F0;";
  // }
   btnCell.onmouseup=function(){
    btnCell.style.cssText="width:100%;border:1 outset;background-color:#F0F0F0;";
   }
   btnCell.onclick=function(){
    btnCell.blur();
   }
   return btnCell;
  }
  this.setDefaultDate=function(){	 
   var dftDate=new Date();
   calendar.today[0]=dftDate.getYear();
   calendar.today[1]=dftDate.getMonth()+1;  
   calendar.today[2]=dftDate.getDate(); 
   if(calendar.today[1]<10) calendar.today[1] = "0" + calendar.today[1];
   if(calendar.today[2]<10) calendar.today[2] = "0" + calendar.today[2];

  }

  /****************** Show Calendar *********************/
  this.show=function(targetObject,defaultDate,sourceObject){
   if(targetObject==undefined) {
    alert("未设置目标对像. \n方法: ATCALENDAR.show(obj 目标对像,string 默认日期,obj 点击对像);\n\n目标对像:接受日期返回值的对像.\n默认日期:格式为\"yyyy-mm-dd\",缺省为当日日期.\n点击对像:点击这个对像弹出calendar,默认为目标对像.\n");
    return false;
   }
   else    calendar.target=targetObject;
   if(sourceObject==undefined) calendar.source=calendar.target;
   else calendar.source=sourceObject;

   var firstDay;
   var Cells=new Array();
   if(defaultDate==undefined || defaultDate==""){
    var theDate=new Array();
    calendar.head.innerText = calendar.today[0]+"-"+calendar.today[1]+"-"+calendar.today[2];
    theDate[0]=calendar.today[0]; theDate[1]=calendar.today[1]; theDate[2]=calendar.today[2];
   }
   else{
    var reg=/^\d{4}-\d{2}-\d{2}$/
    if(!defaultDate.match(reg)){
     alert("默认日期的格式不正确\n\n默认日期可接受格式为:'yyyy-mm-dd'");
     return;
    }
    var theDate=defaultDate.split("-");
    calendar.head.innerText = defaultDate;
   }
   calendar.currentDate[0]=theDate[0];
   calendar.currentDate[1]=theDate[1];
   calendar.currentDate[2]=theDate[2];
   theFirstDay=calendar.getFirstDay(theDate[0],theDate[1]);
   theMonthLen=theFirstDay+calendar.getMonthLen(theDate[0],theDate[1]);
   //calendar.setEventKey();

   calendar.calendarPad.style.display="";
   var theRows = Math.ceil((theMonthLen)/7);
   //清除旧的日历;
   while (calendar.body.rows.length > 0) {
    calendar.body.deleteRow(0)
   }
   //建立新的日历;
   var n=0;day=0;
   for(i=0;i<theRows;i++){
    theRow=calendar.body.insertRow(i);
    for(j=0;j<7;j++){
     n++;
     if(n>theFirstDay && n<=theMonthLen){
      day=n-theFirstDay;
      calendar.insertBodyCell(theRow,j,day);
     }
     else{
      var theCell=theRow.insertCell(j);
      theCell.style.cssText="background-color:#F0F0F0;cursor:default;";
     }
    }
   }

   //****************调整日历位置**************//
	var offsetPos=calendar.getAbsolutePos(calendar.source);//计算对像的位置;   
	var pageX = document.body.scrollLeft; //窗体X  
	var pageY = document.body.scrollTop; //窗体Y  
	var pageW = document.body.offsetWidth; //窗体宽度 
	var pageH = document.body.offsetHeight; //窗体高度  
	var calendarX = offsetPos.x //控件X  
	var calendarY = offsetPos.y; //控件Y  
	var calendarW =calendar.calendarPad.style.pixelWidth; //控件宽度   
	var calendarH =calendar.calendarPad.style.pixelHeight; //控件高度  
	var calendaroW = calendar.source.offsetWidth;  
	var calendaroH = calendar.source.offsetHeight;   
	if (calendarY + calendarH + calendaroH > pageH) {
		var calTop=calendarY - calendarH;
	}else{
		var calTop=calendarY + calendaroH;
	}  
	if(calendarX - calendarW + calendaroW > 0 ){
		var calLeft= calendarX - calendarW;
	}else{
		var calLeft= calendarX + calendaroW;
	}   
	calendar.calendarPad.style.pixelLeft=calLeft;
	calendar.calendarPad.style.pixelTop=calTop;
	}
  /****************** 计算对像的位置 *************************/
  this.getAbsolutePos = function(el) {
   var r = { x: el.offsetLeft, y: el.offsetTop };
   if (el.offsetParent) {
    var tmp = calendar.getAbsolutePos(el.offsetParent);
    r.x += tmp.x;
    r.y += tmp.y;
   }
   return r;
  };
  //************* 插入日期单元格 **************/
  this.insertBodyCell=function(theRow,j,day,targetObject){
   var theCell=theRow.insertCell(j);
   if(j==0||j==6) var theBgColor="#DDEEFE";
   else var theBgColor="#FFFFFF";
   if(day==calendar.currentDate[2]) var theBgColor="#CCCCCC";
   if(day==calendar.today[2]) var theBgColor="#F5EFE3";
   theCell.bgColor=theBgColor;
   theCell.innerText=day;
   theCell.align="center";
   theCell.width=35;
   theCell.style.cssText="border:1 solid #CCCCCC;cursor:hand;";
   theCell.onmouseover=function(){ 
    theCell.bgColor="#EFE1B1"; 
    theCell.style.cssText="border:1 outset;cursor:hand;";
   }
   theCell.onmouseout=function(){ 
    theCell.bgColor=theBgColor; 
    theCell.style.cssText="border:1 solid #CCCCCC;cursor:hand;";
   }
   theCell.onmousedown=function(){ 
    theCell.bgColor="#FFFFFF"; 
    theCell.style.cssText="border:1 inset;cursor:hand;";
   }
   theCell.onclick=function(){	   
    if(calendar.currentDate[1].toString().length<2)	calendar.currentDate[1]="0"+calendar.currentDate[1];	
    if(day.toString().length<2) day="0"+day;
    calendar.sltDate=calendar.currentDate[0]+"-"+calendar.currentDate[1]+"-"+day;
    calendar.target.value=calendar.sltDate;
    calendar.hide();
   }
  }
  /************** 取得月份的第一天为星期几 *********************/
  this.getFirstDay=function(theYear, theMonth){
   var firstDate = new Date(theYear,theMonth-1,1);
   return firstDate.getDay();
  }
  /************** 取得月份共有几天 *********************/
  this.getMonthLen=function(theYear, theMonth) {
   theMonth--;
   var oneDay = 1000 * 60 * 60 * 24;
   var thisMonth = new Date(theYear, theMonth, 1);
   var nextMonth = new Date(theYear, theMonth + 1, 1);
   var len = Math.ceil((nextMonth.getTime() - thisMonth.getTime())/oneDay);
   return len;
  }
  /************** 隐藏日历 *********************/
  this.hide=function(){
   //calendar.clearEventKey();
   calendar.calendarPad.style.display="none";
  }
  /************** 从这里开始 *********************/
  this.setup=function(defaultDate){
   calendar.addCalendarPad();
   calendar.addCalendarBoard();
   calendar.setDefaultDate();
  }
  /************** 关于AgetimeCalendar *********************/
  this.about=function(){   
   //var strAbout = "About AgetimeCalendar\n\n";
   var strAbout = "日期时间控件说明\n\n";
   strAbout+="?\t: 关于\n";
   strAbout+="x\t: 关闭\n";
   strAbout+="<<\t: 上一年\n";
   strAbout+="<\t: 上一月\n";
   strAbout+="今天\t: 返回当天日期\n";
   strAbout+=">\t: 下一月\n";
   strAbout+="<<\t: 下一年\n";  
   alert(strAbout);
  }
  calendar.setup();
 }