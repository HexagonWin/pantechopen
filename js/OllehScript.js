//sub menu show or not
function layer_view (layer_name, layer_display){
	if (layer_display == "view"){
		document.getElementById(layer_name).style.display = "block" ;
	} else {
		document.getElementById(layer_name).style.display = "none" ;
	}
}

function layer_swap (view_name, hide_display){
		document.getElementById(view_name).style.display = "block" ;
		document.getElementById(hide_display).style.display = "none" ;
}


// RollOver
function imageOver(imgs) {
	imgs.src = imgs.src.replace("off.gif", "on.gif");
}
function imageOut(imgs) {
	imgs.src = imgs.src.replace("on.gif", "off.gif");
//  onmouseover="imageOver(this);" onmouseout="imageOut(this);"
} 


//png 투명주기
function setPng24(obj) { 
　 　 obj.width=obj.height=1; 
　 　 obj.className=obj.className.replace(/\bpng24\b/i,''); 
　 　 obj.style.filter = 
　 　 "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"+ obj.src +"',sizingMethod='image');" 
　 　 obj.src='./img/i/n.gif';　 
　 　 return ''; 
} 


//sub menu show or not
function layer_view (layer_name, layer_display){
	if (layer_display == "view"){
		document.getElementById(layer_name).style.display = "block" ;
	} else {
		document.getElementById(layer_name).style.display = "none" ;
	}
}

function layer_swap (view_name, hide_display){
		document.getElementById(view_name).style.display = "block" ;
		document.getElementById(hide_display).style.display = "none" ;
}


// 메인탭메뉴 /////////////////////////////////////////
function showHideElem1(_objId, _param_split){
	var showObj = document.getElementById(_objId);
	if(!showObj) return false;
	//나타낼 객체가 있고 숨길 객체가 다수인경우
	if(_param_split){
		//숨길 객체들 문자열(언더바를 구분자로 파라메터를 받는다)
		var hideObjId_arr = _param_split.split("_");
		//숨길 객체 배열
		var hideObj_arr = Array();
		for(i=0; i<hideObjId_arr.length; i++){
			hideObj_arr[i] = document.getElementById(hideObjId_arr[i]);
		}
		//숨길 객체 숨기기
		for(i=0; i<hideObj_arr.length; i++){
			if(hideObj_arr[i].style){
				hideObj_arr[i].style.display = "none";
			}else{
				return false;
			}
		}
		//나타낼 객체 나타내기
		showObj.style.display = "block";
	}
	//나타내거나 숨길 객체가 한개인 경우 
	else{
		if(showObj.style.display == "block"){
			showObj.style.display = "none";
		}else{
			showObj.style.display = "block";
		}
	}
}





// 온클릭
var old_menu = '';
function menuclick( submenu) {
    if( old_menu != submenu ) {
    if( old_menu !='' ) {
        old_menu.style.display = 'none';
}
    submenu.style.display = 'block';
    old_menu = submenu;
    } else {
        submenu.style.display = 'none';
        old_menu = '';
    }
}