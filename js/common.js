    function formSubmit(page, modeVal, IdxVal, SubmitMode, rootVal,msg, obj,str){
        if(SubmitMode == 'down') {  
            document.downform.Idx.value = IdxVal;
            document.downform.mode.value = modeVal;
            document.downform.url.value = rootVal;
            document.downform.target = "_self";
            document.downform.action = page;
            document.downform.submit();
        }else if(SubmitMode == 'view'){
            document.form2.Idx.value = IdxVal;
            document.form2.target = "_self";
            document.form2.action = page;
            document.form2.submit();
        }else if(SubmitMode == 'search'){
            if (document.getElementById(modeVal).value.length < 1)
            {
                alert("Model명을 입력해주세요");
                return document.getElementById(modeVal).focus();
            }
            document.getElementById("form1").target = "_self";
            document.getElementById("form1").action = page;
            document.getElementById("form1").submit();
        }else if (SubmitMode == 'upload') {
            if(!document.getElementById("Model").value) {
                alert("Model명을 입력해주세요");
                return document.getElementById("Model").focus();
            }
            if(confirm(msg+"하시겠습니까?")) {
                
                //winstyle="height=150,width=400,status=no,toolbar=no,menubar=no,location=no";
                //window.open("/console/progress2.asp?progressid=<%=ProgressID%>",null,winstyle);

                document.getElementById("Idx").value = IdxVal;
                document.getElementById("mode").value = modeVal;
                document.getElementById("form1").target = "_self";
                document.getElementById("form1").action = page;
                document.getElementById("form1").submit();
                layerChk2(obj,str);
                requestTagList();
            }
        }else {
            if(!document.getElementById("Model").value) {
                alert("Model명을 입력해주세요");
                return document.getElementById("Model").focus();
            }
            if(confirm(msg+"하시겠습니까?")) {                
                document.getElementById("Idx").value = IdxVal;
                document.getElementById("mode").value = modeVal;
                document.getElementById("form1").target = "_self";
                document.getElementById("form1").action = page;
                document.getElementById("form1").submit();
                
                layerChk2(obj,str);
                requestTagList();
            }
        }
    }
    function breset(){
        document.getElementById("form1").target = "_self";
        document.getElementById("Model").value = "";
        document.getElementById("AnnVal").value= "";
        document.getElementById("Ann_RealFile").outerHTML = document.getElementById("Ann_RealFile").outerHTML;
        document.getElementById("SourceVal").value= "";
        document.getElementById("Source_RealFile").outerHTML = document.getElementById("Source_RealFile").outerHTML;
        return document.getElementById("form1").focus();
    }
    function pageLink(PageNo,searchValue,pUrl,cate)
    {
        var forms  = document.form2;
        forms.PageNo.value = PageNo;
        forms.searchValue.value = searchValue;
        forms.action = pUrl+cate;
        forms.submit();
    }

    function loginSubmit()
    {
        if(!document.getElementById("txtID").value) {
            alert("ID을 입력해주세요");
            return document.getElementById("txtID").focus();
        }
        if(!document.getElementById("txtPass").value) {
            alert("비밀번호를 입력해주세요");
            return document.getElementById("txtPass").focus();
        }
        document.getElementById("loginFrm").target = "_self";
        document.getElementById("loginFrm").action = "login.asp";
        document.getElementById("loginFrm").submit();
    }             
    
    function keyCheck(){
        if(event.keyCode==13){loginSubmit();}
    }
    
    function loginSubmitMember() {
        var email = document.getElementById("txtID").value;
        
        if(!email) {
            alert("Enter your ID(=email address)");
            return document.getElementById("txtID").focus();
        }
        
        var reg_email=/^[-A-Za-z0-9_]+[-A-Za-z0-9_.]*[@]{1}[-A-Za-z0-9_]+[-A-Za-z0-9_.]*[.]{1}[A-Za-z]{2,5}$/;
        if(!reg_email.test(email)) {
            alert("Invalid email address.");
            document.getElementById("txtID").focus();
            return;
        }

        if(!document.getElementById("txtPass").value) {
            alert("Enter your password");
            return document.getElementById("txtPass").focus();
        }
        document.getElementById("loginFrm").target = "_self";
        document.getElementById("loginFrm").action = "/member/login.asp";
        document.getElementById("loginFrm").submit();
    }
    
     function calc_Strlen(obj, limitCnt) {
          var totalLen, cnt, strCheck, arrCheck, lenOfCheck, lenOfChar, cutLen;
          strCheck = obj.value;
          arrCheck = strCheck.split("");
          totalLen = strCheck.length;
          lenOfCheck = 0;
          cutCnt  = limitCnt;

          for(i=0;i<totalLen;i++) {
               lenOfChar = escape(arrCheck[i]);
               if(lenOfChar.length==6) {
                   lenOfCheck += 2;
                   if(lenOfCheck > limitCnt) cutCnt -= 1;
                   else     cutCnt  -= 2;
               }else {
                   lenOfCheck += 1;
                   cutCnt  -= 1;
               }
               if(lenOfCheck > limitCnt) {
                   alert("한글("+(limitCnt/2) +") 영어("+limitCnt+") 자 까지만 입력이 가능합니다.");
                   obj.value = strCheck.substr( 0,totalLen + cutCnt);
                   obj.focus();
           }
        }
         }

    function filesizeOver2(fileName)
    {
       for(i=0; i < 10; i++)
       {
         var fso, f, s, hapsu = 0;
         fso = new ActiveXObject("Scripting.FileSystemObject");
         filespec = eval("document.getElementById('"+fileName+"_RealFile').value");
     
     if( filespec != "")
     {
           f = fso.GetFile(filespec);
           hapsu = hapsu + f.size;
         }
       }

       if( hapsu > 250000000 )
       {
          overSu = hapsu - 250000000;
          alert("파일 총 사이즈가 큽니다. 확인해 주십시오..\n\n파일 총 사이즈는 250MByte를 초과할 수 없습니다.\n\n총 사이즈 :"+ hapsu +"\n\n초과 사이즈 :"+ overSu);
          document.getElementById(fileName+"_RealFile").outerHTML = document.getElementById(fileName+"_RealFile").outerHTML;
          document.getElementById(fileName+"Val").value= "";
       }

    }

    function vali_type(fileValue, fileName, upValue){  

        if(fileValue != '') {

            var valid_extensions = /(.zip|.pdf|.html|.jpg|.jpeg|.gif|.bmp|.png|.htm)$/i;
            if(valid_extensions.test(fileValue)){
                /* filesizeOver2(fileName); 업로드 파일 사이즈 체크 */
                return true;
            }
            else{
                if (upValue == ''){
                    alert('Invalid FileType');
                    fileValue="";
                    document.getElementById(fileName+"_RealFile").select();
                    document.getElementById(fileName+"_RealFile").outerHTML = document.getElementById(fileName+"_RealFile").outerHTML;
                    document.getElementById(fileName+'Val').value= "";
                }
                else{
                    alert('Invalid FileType');
                    fileValue="";
                    document.getElementById(fileName+'Val').value= upValue;
                    document.getElementById(fileName+"_RealFile").outerHTML = document.getElementById(fileName+"_RealFile").outerHTML;
                }
            }
        
        }
    }
    function fileDel(fileValue){
        document.getElementById(fileValue).value = ''
        return;
    }

    

    function layerChk(obj,str){
        var result = forgot_password_check();
        if (!result) return;
    
		    if(str == "open"){
			      temp = eval("document.getElementById('"+obj+"')");
			  if(temp)
				    temp.style.display='block';
		    }else{
			      temp = eval("document.getElementById('"+obj+"')");
			  if(temp)
				    temp.style.display='none';
		    }
  	}
  	
  	function layerChk2(obj,str){
    	if(str != "") {
    		if(str == "open"){
    			temp = eval("document.getElementById('"+obj+"')");
    			if(temp)
    				temp.style.display='block';
    		}else{
    			temp = eval("document.getElementById('"+obj+"')");
    			if(temp)
    				temp.style.display='none';
    		}	
    	}
    		
    }
  	
  	function clearInputText(id) {
  	    var val = document.getElementById(id).value;
  	    if (val == 'First Name' || val == 'Last Name') {
            document.getElementById(id).value = "";        
        }
    }

    function modify_password() {     
        var new_password = document.getElementById("new_password").value;
        var re_password = document.getElementById("re_password").value;
        
        if (!new_password) {
            alert("Enter your password.");
            document.getElementById("new_password").focus();
            return;
        }
        
        if (!re_password) {
            alert("Enter your  re-enter password.");
            document.getElementById("re_password").focus();
            return;
        }
        
        if (new_password != re_password) {
          alert("Passwords do not match.")
          return;
        }
        
        //document.getElementById("pwModFrm").target = "_self";
        document.getElementById("pwModFrm").action = "/member/pwSearch.asp";
        document.getElementById("pwModFrm").submit();
    
    }
    
    function isEngNum(keyword) {
    		var reg_exp = /^[0-9a-zA-Z]+$/;
      
      	if (reg_exp.test(keyword)) {
      			return true;
      	} else {
      		return false;
      	}    
  	}
  	
  	function isLength(keyword, min, max) {  				
		    var success = true;		
		    if(keyword.length < min) {		
			  		success = false;	
		    }		
		    if(max && keyword.length > max) {		
			  		success = false;	
		    }		
		    return success;
    }
    

