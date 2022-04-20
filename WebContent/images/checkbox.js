function check(listform,checkSign){
	with(listform){
	for(var i=0;i<length;i++){
		if(elements[i].type=="checkbox"){
			elements[i].checked=checkSign.checked;
		}
	}
	}
}
function checkGroup(listform,checkSign,groupname){
	with(listform){
	for(var i=0;i<length;i++){
		if(elements[i].type=="checkbox" && elements[i].name.indexOf(groupname) != -1){
			elements[i].checked=checkSign.checked;
		}
	}
	}
}
function  hasChecked(listform){
	var rtn = 0
	with(listform){
		for(var i=0;i<length;i++){
			if((elements[i].type=="checkbox" && elements[i].name != "all")){	
				if(elements[i].checked==true){
					rtn++;
					break;
				}				
			}
		}
	}
	if (rtn>0){
		return true;
	}else{
		return false;
	}
}

function  setChecked(listform){
	var rtn = 0
	with(listform){
		for(var i=0;i<length;i++){
			if((elements[i].type=="checkbox" && elements[i].name != "all")){	
				if(elements[i].checked==false){
					rtn++;
					break;
				}				
			}
		}
	}
	if (rtn>0){
		listform.all.checked = false;
	}else{
		listform.all.checked = true;
	}
}

function  hasCheckedNum(listform){
	var rtn = 0
	with(listform){
	for(var i=0;i<length;i++){
		if((elements[i].type=="checkbox"))		
			if(elements[i].checked==true){
				rtn = rtn +1;
			}
		}
	}
	return rtn;
}
function checkall(formobj,checkobj) {
	if(formobj != null && checkobj != null){
		with(formobj){
			for(var i=0;i<length;i++){
				if((elements[i].type == "checkbox") && (elements[i] != checkobj)){
					elements[i].checked = checkobj.checked;
				}
			}
		}
	}	
}

function subcheck(formobj,checkallobj) {	
	if(formobj != null && checkallobj != null){
		with(formobj){		
			for(var i=0;i<length;i++){		
				if(elements[i].type == "checkbox" && elements[i] != checkallobj){		
					if(elements[i].checked == false){		
						checkallobj.checked = false;				
					}else if(isAllCheck(formobj,checkallobj)){							
						checkallobj.checked = true;
					}
				}
			}
		}
	}
}
function isAllCheck(formobj,checkallobj) {
	with(formobj){
		for(var i=0;i<length; i++){			
			if(elements[i].type == "checkbox" && elements[i] != checkallobj){
				if (elements[i].checked == false){
					return false;
				}		
			}			
		}
	}
	return true;
}
function isHavaCheck(formobj,checkallobj) {	
	if(formobj != null && checkallobj != null){
		with(formobj){
			for(var i=0;i<length;i++){
				if(elements[i].type == "checkbox" && elements[i] != checkallobj){
					if(elements[i].checked == true){						
						return true;
					}
				}
			}
		}
	}
	alert("请首先选择要删除的记录,然后再进行删除操作！");
	return false;	
}
function havaCheckNum(formobj,groupname) {	
	if(formobj != null && groupname != null){
		with(formobj){
			for(var i=0;i<length;i++){
				if(elements[i].type == "checkbox" && elements[i].name.indexOf(groupname) != -1){
					if(elements[i].checked == true){						
						return true;
					}
				}
			}
		}
	}
	alert("请首先选择要删除的记录,然后再进行删除操作！");
	return false;	
}
function isHavaCheckNum(formobj,groupname) {	
	if(formobj != null && groupname != null){
		with(formobj){
			for(var i=0;i<length;i++){
				if(elements[i].type == "checkbox" && elements[i].name.indexOf(groupname) != -1){
					if(elements[i].checked == true){						
						return true;
					}
				}
			}
		}
	}
	alert("请选择记录！");
	return false;	
}