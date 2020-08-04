<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">



<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="Subject" content="PANTECH" />
	<meta name="Title" content="Pantech Open Source" />
	<meta name="Keywords" content="Pantech,Open Source" />
	<meta name="Description" content="Pantech" />
	<meta name="Author" content="ELUO RND" />
	<meta name="Publisher" content="Baek Myoung-Hun, Yang Yun-Hui in ELUO RND" />
	<meta name="Classification" content="Pantech,Open Source" />
	<meta name="Author-Date" content="2011.1.19" />
	<meta name="Date" content="2011.1.19" />
	<meta name="Location" content="UTF-8" />
	<meta name="Distribution" content="Pantech, ELUO RND" />
	<meta name="Copyright" content="Pantech" />
	<link rel="shortcut icon" type="image/x-icon" href="../img/g/favicon.ico" />
	<link type="text/css" rel="stylesheet" href="../css/base.css" />
	<link type="text/css" rel="stylesheet" href="../css/layout.css" />
	<link type="text/css" rel="stylesheet" href="../css/contents.css" />
    <script type="text/javascript" src="../js/AC_RunActiveContent.js"></script>
	<script type="text/javascript" src="../js/OllehScript.js"></script>
	<script type="text/javascript" src="../js/common.js"></script>
	<script type="text/javascript" src="../js/lib/jquery-1.4.3.min.js" charset="utf-8"></script>
  <script type="text/javascript" src="../js/lib/jquery-ui-1.8.6.custom.min.js" charset="utf-8"></script>
  <script type="text/javascript" src="../js/lib/jquery.ui.core.js" charset="utf-8"></script>
  <script type="text/javascript" src="../js/lib/jquery.ui.widget.js" charset="utf-8"></script>
  <script type="text/javascript" src="../js/lib/jquery.ui.datepicker.js" charset="utf-8"></script>

    <title>Pantech Open Source</title>
    <script language="javascript"> 
    
    function checkId(asyn) {  //ayn는 동기/비동기 방식구분, duplication check는 비동기, confirm 은 동기 방식 처리, 그것에 따라 alert 창 작동유무도 결정
       jQuery.ajax({ 
      		type: "GET",
      		url: "/member/duplicateId.asp",
          data: {userid : $("#userid").val()},
          async: asyn,
          complete: function(msg) {
              var duplicateIdYn = msg.responseText;
              if (duplicateIdYn == "Y") {
                  $("#duplication").attr("value", 'Y');
                  if (asyn == 'true') {
                      $("#duplication_output").attr("value", $("#userid").val() + " is available.");
                  }
                  return 'true';
              } else {
                  $("#duplication").attr("value", 'N');
				  				$("#duplication_output").attr("value", $("#userid").val() + " is not available.");
                  return 'false';
              }
          }
      });
    }
    
    jQuery(function(){
      var reg_email = /^[-A-Za-z0-9_]+[-A-Za-z0-9_.]*[@]{1}[-A-Za-z0-9_]+[-A-Za-z0-9_.]*[.]{1}[A-Za-z]{2,5}$/;
      var reg_phone = /^[0-9]*$/;
         
      $("#confirm").click(function(e) {      		
      		if (!$("#first_name").val() || $("#first_name").val() == "First Name") {
              alert("Please input the First Name");
              $("#first_name").focus();
              return;
          }          
          
          if (!$("#last_name").val() || $("#last_name").val() == "Last Name") {
              alert("Please input the Last Name");
              $("#last_name").focus();
              return;
          }
      	  
      		
          var email = $("#userid").val();
          var receive_email = $("#receiveEmail").val();
          
          if (!email) {
              alert("Please input the ID(");
              $("#userid").focus();
              return;
          }
          
          if(!reg_email.test(email)){
              alert("Invalid email address.");
              $("#userid").focus();
              return;
          }
          
          if (!receive_email) {
              alert("Please input the receive e-mail");
              $("#receiveEmail").focus();
              return;
          }
          
          if(!reg_email.test(receive_email)){
              alert("Invalid receive email address.");
              $("#receiveEmail").focus();
              return;
          }          
            
          if (!$("#country").val()) {
              alert("Please choice the Country");
              $("#country").focus();
              return;
          }
          
          var phone = $("#phone").val();
          if(!reg_phone.test(phone)){
          		alert("Invalid phone number.");
              $("#phone").focus();
              return;
          }    
          
          if (!$("#message").val()) {
              alert("Please input the message");
              $("#message").focus();
              return;
          }
          
          if ($("#message").val().length > 1000) {
          		alert("Invalid maxlength for message\n\n (valid maxlength : 1000\n current length : " + $("#message").val().length + ")");
          		$("#message").focus();
          		return;	
          }
          

          //sendMail($("#first_name").val(), $("#last_name").val(), email, receive_email, $("#country").val(), phone, $("#inquiryType").val(), $("#modelType").val(), $("#productType").val(), $("#message").val());
        	
        	jQuery.ajax({ 
		      		type: "POST",
		      		url: "/mail/mail.asp",
		          data: {first_name : $("#first_name").val(),
		          			 last_name : $("#last_name").val(),
		          			 userid : email,
		          			 receiveEmail : receive_email,
		          			 country : $("#country").val(),
		          			 inquiryType : $("#inquiryType").val(),
		          			 phone : phone,
		          			 modelType : $("#modelType").val(),
		          			 productType : $("#productType").val(),
		          			 message : $("#message").val()},
		          complete: function(msg) {
		          	
		              var resultText = msg.responseText;
		              if (resultText == "success") {
		                  alert("Your request is sent to the administrator.");
		              } else if (resultText == "fail") {
		                  alert("Sorry.\nE-mails sent to us from\nyou are being repeated on our mail accout.\n\nPlease check your e-mail.");
		              } else {
		                  alert("[error]Code 313");
		              }
		              clearForm();
		          }
		      });
          //$("#mailFrm").submit();
      });
      
      $("#first_name").focus(function() {
      		if ($("#first_name").val() == "First Name") {      			
      				$("#first_name").attr("value","")
      		}
      });
      
      $("#last_name").focus(function() {
      		if ($("#last_name").val() == "Last Name") {
      				$("#last_name").attr("value","")
      		}
      });
    });
    
    function clearForm() {    	
    		$("#first_name").attr("value","");
    		$("#last_name").attr("value","");
    		$("#userid").attr("value","");
    		$("#receiveEmail").attr("value","");
    		$("#country").attr("value","");
    		$("#phone").attr("value","");
    		$("#inquiryType").attr("value","");
    		$("#modelType").attr("value","");
    		$("#productType").attr("value","");
    		$("#message").attr("value","");
    		
    }
    </script>
    
</head>

<body>

<!-- Hidden Quick Menu -->
<ul class="OllehHidden">
    <li><a href="#Container">본문</a></li>
    <li><a href="#mainMenu">메인 메뉴</a></li>
</ul>
<!-- //Hidden Quick Menu -->

<div id="Wrap">

    <!-- //BODY -->
    <div id="Bodyyo"><div class="Bodyyo_i">

        <!-- container (W740)-->
        <div id="Container2">
            <!-- 컨텐츠 타이틀 -->
            <div class="cont_title">
                <h3>Inquiry</h3>
                <div class="path">
                    <ul>
                        <li>Home</li>
                        <li class="here"><strong>Inquiry</strong></li>
                    </ul>
                </div>
            </div>
            <!-- //컨텐츠 타이틀 -->

            <!-- 컨텐츠내용 -->
            <form id="mailFrm" name="mailFrm" action="/mail/mail.asp" method="post">            
            <div class="cont">
                <!-- bbsList -->
                <div class="bbsWrite">
                    <table summary="쓰기입니다">
                        <caption>쓰기</caption>
                        <colgroup>
                            <col width="160" />
                            <col width="*" />
                        </colgroup>

                        <tbody>
						<tr>
                            <th><p><img src="../img/c/inquiryTh01.gif" alt="* requester" /></p></th>
                            <td><p>
									<input type="text" class="input_text" title="Name" value="First Name" style="width:119px;" id="first_name" name="first_name" maxlength="50"/>
								<input type="text" class="input_text" title="Name" value="Last Name" style="width:119px;" id="last_name" name="last_name" maxlength="50"/>
							</p></td>
                        </tr>
                        <tr>
                            <th><p><img src="../img/c/inquiryTh02.gif" alt="ID(E-mail)" /></p></th>
                            <td>
									<p>
									<input type="text" id="userid" name="userid" class="input_text" value="" title="ID(E-mail)" style="width:250px;"  maxlength="50"/>
									</p>									
                        </tr>
						<tr>
                            <th><p><img src="../img/c/inquiryTh03.gif" alt="receive e-mail" /></p></th>
                            <td>
								<p>
								<input type="text" id="receiveEmail" name="receiveEmail" class="input_text" title="receive e-mail" value="" style="width:250px;"  maxlength="50"/>
								</p>
							</td>
                        </tr>

                        <tr>
                            <th><p><img src="../img/c/inquiryTh04.gif" alt="country" /></p></th>
                            <td><p>
									<select style="width:257px;" id="country" name="country" title="Country" style="width:250px;">
									   <option value="">Select</option>
							   
                        	<option  value="AF,AFGHANISTAN">AFGHANISTAN</option>
                 
                        	<option  value="AX,ALAND ISLANDS">ALAND ISLANDS</option>
                 
                        	<option  value="AL,ALBANIA">ALBANIA</option>
                 
                        	<option  value="DZ,ALGERIA">ALGERIA</option>
                 
                        	<option  value="AS,AMERICAN SAMOA">AMERICAN SAMOA</option>
                 
                        	<option  value="AD,ANDORRA">ANDORRA</option>
                 
                        	<option  value="AO,ANGOLA">ANGOLA</option>
                 
                        	<option  value="AI,ANGUILLA">ANGUILLA</option>
                 
                        	<option  value="AQ,ANTARCTICA">ANTARCTICA</option>
                 
                        	<option  value="AG,ANTIGUA AND BARBUDA">ANTIGUA AND BARBUDA</option>
                 
                        	<option  value="AR,ARGENTINA">ARGENTINA</option>
                 
                        	<option  value="AM,ARMENIA">ARMENIA</option>
                 
                        	<option  value="AW,ARUBA">ARUBA</option>
                 
                        	<option  value="AU,AUSTRALIA">AUSTRALIA</option>
                 
                        	<option  value="AT,AUSTRIA">AUSTRIA</option>
                 
                        	<option  value="AZ,AZERBAIJAN">AZERBAIJAN</option>
                 
                        	<option  value="BS,BAHAMAS">BAHAMAS</option>
                 
                        	<option  value="BH,BAHRAIN">BAHRAIN</option>
                 
                        	<option  value="BD,BANGLADESH">BANGLADESH</option>
                 
                        	<option  value="BB,BARBADOS">BARBADOS</option>
                 
                        	<option  value="BY,BELARUS">BELARUS</option>
                 
                        	<option  value="BE,BELGIUM">BELGIUM</option>
                 
                        	<option  value="BZ,BELIZE">BELIZE</option>
                 
                        	<option  value="BJ,BENIN">BENIN</option>
                 
                        	<option  value="BM,BERMUDA">BERMUDA</option>
                 
                        	<option  value="BT,BHUTAN">BHUTAN</option>
                 
                        	<option  value="BO,BOLIVIA, PLURINATIONAL STATE OF">BOLIVIA, PLURINATIONAL STATE OF</option>
                 
                        	<option  value="BQ,BONAIRE, SAINT EUSTATIUS AND SABA">BONAIRE, SAINT EUSTATIUS AND SABA</option>
                 
                        	<option  value="BA,BOSNIA AND HERZEGOVINA">BOSNIA AND HERZEGOVINA</option>
                 
                        	<option  value="BW,BOTSWANA">BOTSWANA</option>
                 
                        	<option  value="BV,BOUVET ISLAND">BOUVET ISLAND</option>
                 
                        	<option  value="BR,BRAZIL">BRAZIL</option>
                 
                        	<option  value="IO,BRITISH INDIAN OCEAN TERRITORY">BRITISH INDIAN OCEAN TERRITORY</option>
                 
                        	<option  value="BN,BRUNEI DARUSSALAM">BRUNEI DARUSSALAM</option>
                 
                        	<option  value="BG,BULGARIA">BULGARIA</option>
                 
                        	<option  value="BF,BURKINA FASO">BURKINA FASO</option>
                 
                        	<option  value="BI,BURUNDI">BURUNDI</option>
                 
                        	<option  value="KH,CAMBODIA">CAMBODIA</option>
                 
                        	<option  value="CM,CAMEROON">CAMEROON</option>
                 
                        	<option  value="CA,CANADA">CANADA</option>
                 
                        	<option  value="CV,CAPE VERDE">CAPE VERDE</option>
                 
                        	<option  value="KY,CAYMAN ISLANDS">CAYMAN ISLANDS</option>
                 
                        	<option  value="CF,CENTRAL AFRICAN REPUBLIC">CENTRAL AFRICAN REPUBLIC</option>
                 
                        	<option  value="TD,CHAD">CHAD</option>
                 
                        	<option  value="CL,CHILE">CHILE</option>
                 
                        	<option  value="CN,CHINA">CHINA</option>
                 
                        	<option  value="CX,CHRISTMAS ISLAND">CHRISTMAS ISLAND</option>
                 
                        	<option  value="CC,COCOS (KEELING) ISLANDS">COCOS (KEELING) ISLANDS</option>
                 
                        	<option  value="CO,COLOMBIA">COLOMBIA</option>
                 
                        	<option  value="KM,COMOROS">COMOROS</option>
                 
                        	<option  value="CG,CONGO">CONGO</option>
                 
                        	<option  value="CD,CONGO, THE DEMOCRATIC REPUBLIC OF THE">CONGO, THE DEMOCRATIC REPUBLIC OF THE</option>
                 
                        	<option  value="CK,COOK ISLANDS">COOK ISLANDS</option>
                 
                        	<option  value="CR,COSTA RICA">COSTA RICA</option>
                 
                        	<option  value="CI,C?E D'IVOIRE">C?E D'IVOIRE</option>
                 
                        	<option  value="HR,CROATIA">CROATIA</option>
                 
                        	<option  value="CW,CURA?O">CURA?O</option>
                 
                        	<option  value="CU,CUBA">CUBA</option>
                 
                        	<option  value="CY,CYPRUS">CYPRUS</option>
                 
                        	<option  value="CZ,CZECH REPUBLIC">CZECH REPUBLIC</option>
                 
                        	<option  value="DK,DENMARK">DENMARK</option>
                 
                        	<option  value="DJ,DJIBOUTI">DJIBOUTI</option>
                 
                        	<option  value="DM,DOMINICA">DOMINICA</option>
                 
                        	<option  value="DO,DOMINICAN REPUBLIC">DOMINICAN REPUBLIC</option>
                 
                        	<option  value="EC,ECUADOR">ECUADOR</option>
                 
                        	<option  value="EG,EGYPT">EGYPT</option>
                 
                        	<option  value="SV,EL SALVADOR">EL SALVADOR</option>
                 
                        	<option  value="GQ,EQUATORIAL GUINEA">EQUATORIAL GUINEA</option>
                 
                        	<option  value="ER,ERITREA">ERITREA</option>
                 
                        	<option  value="EE,ESTONIA">ESTONIA</option>
                 
                        	<option  value="ET,ETHIOPIA">ETHIOPIA</option>
                 
                        	<option  value="FK,FALKLAND ISLANDS (MALVINAS)">FALKLAND ISLANDS (MALVINAS)</option>
                 
                        	<option  value="FO,FAROE ISLANDS">FAROE ISLANDS</option>
                 
                        	<option  value="FJ,FIJI">FIJI</option>
                 
                        	<option  value="FI,FINLAND">FINLAND</option>
                 
                        	<option  value="FR,FRANCE">FRANCE</option>
                 
                        	<option  value="GF,FRENCH GUIANA">FRENCH GUIANA</option>
                 
                        	<option  value="PF,FRENCH POLYNESIA">FRENCH POLYNESIA</option>
                 
                        	<option  value="TF,FRENCH SOUTHERN TERRITORIES">FRENCH SOUTHERN TERRITORIES</option>
                 
                        	<option  value="GA,GABON">GABON</option>
                 
                        	<option  value="GM,GAMBIA">GAMBIA</option>
                 
                        	<option  value="GE,GEORGIA">GEORGIA</option>
                 
                        	<option  value="DE,GERMANY">GERMANY</option>
                 
                        	<option  value="GH,GHANA">GHANA</option>
                 
                        	<option  value="GI,GIBRALTAR">GIBRALTAR</option>
                 
                        	<option  value="GR,GREECE">GREECE</option>
                 
                        	<option  value="GL,GREENLAND">GREENLAND</option>
                 
                        	<option  value="GD,GRENADA">GRENADA</option>
                 
                        	<option  value="GP,GUADELOUPE">GUADELOUPE</option>
                 
                        	<option  value="GU,GUAM">GUAM</option>
                 
                        	<option  value="GT,GUATEMALA">GUATEMALA</option>
                 
                        	<option  value="GG,GUERNSEY">GUERNSEY</option>
                 
                        	<option  value="GN,GUINEA">GUINEA</option>
                 
                        	<option  value="GW,GUINEA-BISSAU">GUINEA-BISSAU</option>
                 
                        	<option  value="GY,GUYANA">GUYANA</option>
                 
                        	<option  value="HT,HAITI">HAITI</option>
                 
                        	<option  value="HM,HEARD ISLAND AND MCDONALD ISLANDS">HEARD ISLAND AND MCDONALD ISLANDS</option>
                 
                        	<option  value="VA,HOLY SEE (VATICAN CITY STATE)">HOLY SEE (VATICAN CITY STATE)</option>
                 
                        	<option  value="HN,HONDURAS">HONDURAS</option>
                 
                        	<option  value="HK,HONG KONG">HONG KONG</option>
                 
                        	<option  value="HU,HUNGARY">HUNGARY</option>
                 
                        	<option  value="IS,ICELAND">ICELAND</option>
                 
                        	<option  value="IN,INDIA">INDIA</option>
                 
                        	<option  value="ID,INDONESIA">INDONESIA</option>
                 
                        	<option  value="IR,IRAN, ISLAMIC REPUBLIC OF">IRAN, ISLAMIC REPUBLIC OF</option>
                 
                        	<option  value="IQ,IRAQ">IRAQ</option>
                 
                        	<option  value="IE,IRELAND">IRELAND</option>
                 
                        	<option  value="IM,ISLE OF MAN">ISLE OF MAN</option>
                 
                        	<option  value="IL,ISRAEL">ISRAEL</option>
                 
                        	<option  value="IT,ITALY">ITALY</option>
                 
                        	<option  value="JM,JAMAICA">JAMAICA</option>
                 
                        	<option  value="JP,JAPAN">JAPAN</option>
                 
                        	<option  value="JE,JERSEY">JERSEY</option>
                 
                        	<option  value="JO,JORDAN">JORDAN</option>
                 
                        	<option  value="KZ,KAZAKHSTAN">KAZAKHSTAN</option>
                 
                        	<option  value="KE,KENYA">KENYA</option>
                 
                        	<option  value="KI,KIRIBATI">KIRIBATI</option>
                 
                        	<option  value="KP,KOREA, DEMOCRATIC PEOPLE'S REPUBLIC OF">KOREA, DEMOCRATIC PEOPLE'S REPUBLIC OF</option>
                 
                        	<option  value="KR,KOREA, REPUBLIC OF">KOREA, REPUBLIC OF</option>
                 
                        	<option  value="KW,KUWAIT">KUWAIT</option>
                 
                        	<option  value="KG,KYRGYZSTAN">KYRGYZSTAN</option>
                 
                        	<option  value="LA,LAO PEOPLE'S DEMOCRATIC REPUBLIC">LAO PEOPLE'S DEMOCRATIC REPUBLIC</option>
                 
                        	<option  value="LV,LATVIA">LATVIA</option>
                 
                        	<option  value="LB,LEBANON">LEBANON</option>
                 
                        	<option  value="LS,LESOTHO">LESOTHO</option>
                 
                        	<option  value="LR,LIBERIA">LIBERIA</option>
                 
                        	<option  value="LY,LIBYAN ARAB JAMAHIRIYA">LIBYAN ARAB JAMAHIRIYA</option>
                 
                        	<option  value="LI,LIECHTENSTEIN">LIECHTENSTEIN</option>
                 
                        	<option  value="LT,LITHUANIA">LITHUANIA</option>
                 
                        	<option  value="LU,LUXEMBOURG">LUXEMBOURG</option>
                 
                        	<option  value="MO,MACAO">MACAO</option>
                 
                        	<option  value="MK,MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF">MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF</option>
                 
                        	<option  value="MG,MADAGASCAR">MADAGASCAR</option>
                 
                        	<option  value="MW,MALAWI">MALAWI</option>
                 
                        	<option  value="MY,MALAYSIA">MALAYSIA</option>
                 
                        	<option  value="MV,MALDIVES">MALDIVES</option>
                 
                        	<option  value="ML,MALI">MALI</option>
                 
                        	<option  value="MT,MALTA">MALTA</option>
                 
                        	<option  value="MH,MARSHALL ISLANDS">MARSHALL ISLANDS</option>
                 
                        	<option  value="MQ,MARTINIQUE">MARTINIQUE</option>
                 
                        	<option  value="MR,MAURITANIA">MAURITANIA</option>
                 
                        	<option  value="MU,MAURITIUS">MAURITIUS</option>
                 
                        	<option  value="YT,MAYOTTE">MAYOTTE</option>
                 
                        	<option  value="MX,MEXICO">MEXICO</option>
                 
                        	<option  value="FM,MICRONESIA, FEDERATED STATES OF">MICRONESIA, FEDERATED STATES OF</option>
                 
                        	<option  value="MD,MOLDOVA, REPUBLIC OF">MOLDOVA, REPUBLIC OF</option>
                 
                        	<option  value="MC,MONACO">MONACO</option>
                 
                        	<option  value="MN,MONGOLIA">MONGOLIA</option>
                 
                        	<option  value="ME,MONTENEGRO">MONTENEGRO</option>
                 
                        	<option  value="MS,MONTSERRAT">MONTSERRAT</option>
                 
                        	<option  value="MA,MOROCCO">MOROCCO</option>
                 
                        	<option  value="MZ,MOZAMBIQUE">MOZAMBIQUE</option>
                 
                        	<option  value="MM,MYANMAR">MYANMAR</option>
                 
                        	<option  value="NA,NAMIBIA">NAMIBIA</option>
                 
                        	<option  value="NR,NAURU">NAURU</option>
                 
                        	<option  value="NP,NEPAL">NEPAL</option>
                 
                        	<option  value="NL,NETHERLANDS">NETHERLANDS</option>
                 
                        	<option  value="NC,NEW CALEDONIA">NEW CALEDONIA</option>
                 
                        	<option  value="NZ,NEW ZEALAND">NEW ZEALAND</option>
                 
                        	<option  value="NI,NICARAGUA">NICARAGUA</option>
                 
                        	<option  value="NE,NIGER">NIGER</option>
                 
                        	<option  value="NG,NIGERIA">NIGERIA</option>
                 
                        	<option  value="NU,NIUE">NIUE</option>
                 
                        	<option  value="NF,NORFOLK ISLAND">NORFOLK ISLAND</option>
                 
                        	<option  value="MP,NORTHERN MARIANA ISLANDS">NORTHERN MARIANA ISLANDS</option>
                 
                        	<option  value="NO,NORWAY">NORWAY</option>
                 
                        	<option  value="OM,OMAN">OMAN</option>
                 
                        	<option  value="PK,PAKISTAN">PAKISTAN</option>
                 
                        	<option  value="PW,PALAU">PALAU</option>
                 
                        	<option  value="PS,PALESTINIAN TERRITORY, OCCUPIED">PALESTINIAN TERRITORY, OCCUPIED</option>
                 
                        	<option  value="PA,PANAMA">PANAMA</option>
                 
                        	<option  value="PG,PAPUA NEW GUINEA">PAPUA NEW GUINEA</option>
                 
                        	<option  value="PY,PARAGUAY">PARAGUAY</option>
                 
                        	<option  value="PE,PERU">PERU</option>
                 
                        	<option  value="PH,PHILIPPINES">PHILIPPINES</option>
                 
                        	<option  value="PN,PITCAIRN">PITCAIRN</option>
                 
                        	<option  value="PL,POLAND">POLAND</option>
                 
                        	<option  value="PT,PORTUGAL">PORTUGAL</option>
                 
                        	<option  value="PR,PUERTO RICO">PUERTO RICO</option>
                 
                        	<option  value="QA,QATAR">QATAR</option>
                 
                        	<option  value="RE,REUNION">REUNION</option>
                 
                        	<option  value="RO,ROMANIA">ROMANIA</option>
                 
                        	<option  value="RU,RUSSIAN FEDERATION">RUSSIAN FEDERATION</option>
                 
                        	<option  value="RW,RWANDA">RWANDA</option>
                 
                        	<option  value="BL,SAINT BARTH?EMY">SAINT BARTH?EMY</option>
                 
                        	<option  value="SH,SAINT HELENA, ASCENSION AND TRISTAN DA CUNHA">SAINT HELENA, ASCENSION AND TRISTAN DA CUNHA</option>
                 
                        	<option  value="KN,SAINT KITTS AND NEVIS">SAINT KITTS AND NEVIS</option>
                 
                        	<option  value="LC,SAINT LUCIA">SAINT LUCIA</option>
                 
                        	<option  value="MF,SAINT MARTIN (FRENCH PART)">SAINT MARTIN (FRENCH PART)</option>
                 
                        	<option  value="PM,SAINT PIERRE AND MIQUELON">SAINT PIERRE AND MIQUELON</option>
                 
                        	<option  value="VC,SAINT VINCENT AND THE GRENADINES">SAINT VINCENT AND THE GRENADINES</option>
                 
                        	<option  value="WS,SAMOA">SAMOA</option>
                 
                        	<option  value="SM,SAN MARINO">SAN MARINO</option>
                 
                        	<option  value="ST,SAO TOME AND PRINCIPE">SAO TOME AND PRINCIPE</option>
                 
                        	<option  value="SA,SAUDI ARABIA">SAUDI ARABIA</option>
                 
                        	<option  value="SN,SENEGAL">SENEGAL</option>
                 
                        	<option  value="RS,SERBIA">SERBIA</option>
                 
                        	<option  value="SC,SEYCHELLES">SEYCHELLES</option>
                 
                        	<option  value="SL,SIERRA LEONE">SIERRA LEONE</option>
                 
                        	<option  value="SG,SINGAPORE">SINGAPORE</option>
                 
                        	<option  value="SX,SINT MAARTEN (DUTCH PART)">SINT MAARTEN (DUTCH PART)</option>
                 
                        	<option  value="SK,SLOVAKIA">SLOVAKIA</option>
                 
                        	<option  value="SI,SLOVENIA">SLOVENIA</option>
                 
                        	<option  value="SB,SOLOMON ISLANDS">SOLOMON ISLANDS</option>
                 
                        	<option  value="SO,SOMALIA">SOMALIA</option>
                 
                        	<option  value="ZA,SOUTH AFRICA">SOUTH AFRICA</option>
                 
                        	<option  value="GS,SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS">SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS</option>
                 
                        	<option  value="ES,SPAIN">SPAIN</option>
                 
                        	<option  value="LK,SRI LANKA">SRI LANKA</option>
                 
                        	<option  value="SD,SUDAN">SUDAN</option>
                 
                        	<option  value="SR,SURINAME">SURINAME</option>
                 
                        	<option  value="SJ,SVALBARD AND JAN MAYEN">SVALBARD AND JAN MAYEN</option>
                 
                        	<option  value="SZ,SWAZILAND">SWAZILAND</option>
                 
                        	<option  value="SE,SWEDEN">SWEDEN</option>
                 
                        	<option  value="CH,SWITZERLAND">SWITZERLAND</option>
                 
                        	<option  value="SY,SYRIAN ARAB REPUBLIC">SYRIAN ARAB REPUBLIC</option>
                 
                        	<option  value="TW,TAIWAN, PROVINCE OF CHINA">TAIWAN, PROVINCE OF CHINA</option>
                 
                        	<option  value="TJ,TAJIKISTAN">TAJIKISTAN</option>
                 
                        	<option  value="TZ,TANZANIA, UNITED REPUBLIC OF">TANZANIA, UNITED REPUBLIC OF</option>
                 
                        	<option  value="TH,THAILAND">THAILAND</option>
                 
                        	<option  value="TL,TIMOR-LESTE">TIMOR-LESTE</option>
                 
                        	<option  value="TG,TOGO">TOGO</option>
                 
                        	<option  value="TK,TOKELAU">TOKELAU</option>
                 
                        	<option  value="TO,TONGA">TONGA</option>
                 
                        	<option  value="TT,TRINIDAD AND TOBAGO">TRINIDAD AND TOBAGO</option>
                 
                        	<option  value="TN,TUNISIA">TUNISIA</option>
                 
                        	<option  value="TR,TURKEY">TURKEY</option>
                 
                        	<option  value="TM,TURKMENISTAN">TURKMENISTAN</option>
                 
                        	<option  value="TC,TURKS AND CAICOS ISLANDS">TURKS AND CAICOS ISLANDS</option>
                 
                        	<option  value="TV,TUVALU">TUVALU</option>
                 
                        	<option  value="UG,UGANDA">UGANDA</option>
                 
                        	<option  value="UA,UKRAINE">UKRAINE</option>
                 
                        	<option  value="AE,UNITED ARAB EMIRATES">UNITED ARAB EMIRATES</option>
                 
                        	<option  value="GB,UNITED KINGDOM">UNITED KINGDOM</option>
                 
                        	<option  value="US,UNITED STATES">UNITED STATES</option>
                 
                        	<option  value="UM,UNITED STATES MINOR OUTLYING ISLANDS">UNITED STATES MINOR OUTLYING ISLANDS</option>
                 
                        	<option  value="UY,URUGUAY">URUGUAY</option>
                 
                        	<option  value="UZ,UZBEKISTAN">UZBEKISTAN</option>
                 
                        	<option  value="VU,VANUATU">VANUATU</option>
                 
                        	<option  value="VE,VENEZUELA, BOLIVARIAN REPUBLIC OF">VENEZUELA, BOLIVARIAN REPUBLIC OF</option>
                 
                        	<option  value="VN,VIET NAM">VIET NAM</option>
                 
                        	<option  value="VG,VIRGIN ISLANDS, BRITISH">VIRGIN ISLANDS, BRITISH</option>
                 
                        	<option  value="VI,VIRGIN ISLANDS, U.S.">VIRGIN ISLANDS, U.S.</option>
                 
                        	<option  value="WF,WALLIS AND FUTUNA">WALLIS AND FUTUNA</option>
                 
                        	<option  value="EH,WESTERN SAHARA">WESTERN SAHARA</option>
                 
                        	<option  value="YE,YEMEN">YEMEN</option>
                 
                        	<option  value="ZM,ZAMBIA">ZAMBIA</option>
                 
                        	<option  value="ZW,ZIMBABWE">ZIMBABWE</option>
                 
									</select>
								</p>
							</td>
                        </tr>

                        <tr>
                            <th><p><img src="../img/c/inquiryTh05.gif" alt="phone" style="padding-left:10px;"/></p></th>
                            <td>
								<p>
								<input type="text" name="phone" id="phone" class="input_text" title="Phone" value="" style="width:250px;" maxlength="30"/>
								</p>
								<p>
								<input type="text" class="input_text" title="Phone" value="you can type the numbers only. please enter your number starting with the country code." style="width:500px;border:0; letter-spacing:-1px;;" disabled="value" />
								</p>
							</td>
                        </tr>
                        <tr>
                            <th><p><img src="../img/c/inquiryTh06.gif" alt="inquiry type" style="padding-left:10px;"/></p></th>
                            <td>
								<p>
									<select style="width:257px;" id="inquiryType" name="inquiryType" title="inquiry type" style="width:250px;">
									   <option value="">Select</option>
									   <option value="Question">Question</option>
									   <option value="Request for Source Codes">Request for Source Codes</option>
									   <option value="Others">Others</option>
									</select>
								</p>
							</td>
                        </tr>
                        <tr>
                            <th><p><img src="../img/c/inquiryTh07.gif" alt="model classification" style="padding-left:10px;"/></p></th>
                            <td>
								<p>
									<select style="width:257px;" id="modelType" name="modelType" title="model classification" style="width:250px;">
									   <option value="">Select</option>
							   
                        	<option  value="Mobile">Mobile</option>
                 
                        	<option  value="Service">Service</option>
                 
									</select>
									
									<select style="width:257px;" id="productType" name="productType" title="product classification" style="width:250px;">
									   <option value="">Select</option>
							   
                        	<option  value="ADR8995">ADR8995</option>
                 
                        	<option  value="ADR910L">ADR910L</option>
                 
                        	<option  value="ADR930L">ADR930L</option>
                 
                        	<option  value="ADR930L">ADR930L</option>
                 
                        	<option  value="Cloud Live">Cloud Live</option>
                 
                        	<option  value="EIS01PT">EIS01PT</option>
                 
                        	<option  value="IM-A600S">IM-A600S</option>
                 
                        	<option  value="IM-A630K">IM-A630K</option>
                 
                        	<option  value="IM-A650S">IM-A650S</option>
                 
                        	<option  value="IM-A690L">IM-A690L</option>
                 
                        	<option  value="IM-A690L">IM-A690L</option>
                 
                        	<option  value="IM-A690S">IM-A690S</option>
                 
                        	<option  value="IM-A690S">IM-A690S</option>
                 
                        	<option  value="IM-A710K">IM-A710K</option>
                 
                        	<option  value="IM-A720L">IM-A720L</option>
                 
                        	<option  value="IM-A720L">IM-A720L</option>
                 
                        	<option  value="IM-A725L">IM-A725L</option>
                 
                        	<option  value="IM-A725L">IM-A725L</option>
                 
                        	<option  value="IM-A730S">IM-A730S</option>
                 
                        	<option  value="IM-A740S">IM-A740S</option>
                 
                        	<option  value="IM-A750K">IM-A750K</option>
                 
                        	<option  value="IM-A760S">IM-A760S</option>
                 
                        	<option  value="IM-A760S">IM-A760S</option>
                 
                        	<option  value="IM-A760S">IM-A760S</option>
                 
                        	<option  value="IM-A760S">IM-A760S</option>
                 
                        	<option  value="IM-A760S">IM-A760S</option>
                 
                        	<option  value="IM-A770K">IM-A770K</option>
                 
                        	<option  value="IM-A770K">IM-A770K</option>
                 
                        	<option  value="IM-A770K">IM-A770K</option>
                 
                        	<option  value="IM-A770K">IM-A770K</option>
                 
                        	<option  value="IM-A770K">IM-A770K</option>
                 
                        	<option  value="IM-A770K">IM-A770K</option>
                 
                        	<option  value="IM-A775C">IM-A775C</option>
                 
                        	<option  value="IM-A780L">IM-A780L</option>
                 
                        	<option  value="IM-A780L">IM-A780L</option>
                 
                        	<option  value="IM-A780L">IM-A780L</option>
                 
                        	<option  value="IM-A780L">IM-A780L</option>
                 
                        	<option  value="IM-A780L">IM-A780L</option>
                 
                        	<option  value="IM-A780L">IM-A780L</option>
                 
                        	<option  value="IM-A800S">IM-A800S</option>
                 
                        	<option  value="IM-A800S">IM-A800S</option>
                 
                        	<option  value="IM-A800S">IM-A800S</option>
                 
                        	<option  value="IM-A800S">IM-A800S</option>
                 
                        	<option  value="IM-A800S">IM-A800S</option>
                 
                        	<option  value="IM-A800S">IM-A800S</option>
                 
                        	<option  value="IM-A810K">IM-A810K</option>
                 
                        	<option  value="IM-A810K">IM-A810K</option>
                 
                        	<option  value="IM-A810K">IM-A810K</option>
                 
                        	<option  value="IM-A810S">IM-A810S</option>
                 
                        	<option  value="IM-A810S">IM-A810S</option>
                 
                        	<option  value="IM-A810S">IM-A810S</option>
                 
                        	<option  value="IM-A810S">IM-A810S</option>
                 
                        	<option  value="IM-A820L">IM-A820L</option>
                 
                        	<option  value="IM-A820L">IM-A820L</option>
                 
                        	<option  value="IM-A820L">IM-A820L</option>
                 
                        	<option  value="IM-A820L">IM-A820L</option>
                 
                        	<option  value="IM-A830K">IM-A830K</option>
                 
                        	<option  value="IM-A830K">IM-A830K</option>
                 
                        	<option  value="IM-A830K">IM-A830K</option>
                 
                        	<option  value="IM-A830K">IM-A830K</option>
                 
                        	<option  value="IM-A830KE">IM-A830KE</option>
                 
                        	<option  value="IM-A830L">IM-A830L</option>
                 
                        	<option  value="IM-A830L">IM-A830L</option>
                 
                        	<option  value="IM-A830S">IM-A830S</option>
                 
                        	<option  value="IM-A830S">IM-A830S</option>
                 
                        	<option  value="IM-A830S">IM-A830S</option>
                 
                        	<option  value="IM-A840S">IM-A840S</option>
                 
                        	<option  value="IM-A840S">IM-A840S</option>
                 
                        	<option  value="IM-A840S">IM-A840S</option>
                 
                        	<option  value="IM-A840S">IM-A840S</option>
                 
                        	<option  value="IM-A840S">IM-A840S</option>
                 
                        	<option  value="IM-A840SP">IM-A840SP</option>
                 
                        	<option  value="IM-A840SP">IM-A840SP</option>
                 
                        	<option  value="IM-A850K">IM-A850K</option>
                 
                        	<option  value="IM-A850K">IM-A850K</option>
                 
                        	<option  value="IM-A850K">IM-A850K</option>
                 
                        	<option  value="IM-A850K">IM-A850K</option>
                 
                        	<option  value="IM-A850L">IM-A850L</option>
                 
                        	<option  value="IM-A850L">IM-A850L</option>
                 
                        	<option  value="IM-A850L">IM-A850L</option>
                 
                        	<option  value="IM-A850L">IM-A850L</option>
                 
                        	<option  value="IM-A850S">IM-A850S</option>
                 
                        	<option  value="IM-A850S">IM-A850S</option>
                 
                        	<option  value="IM-A850S">IM-A850S</option>
                 
                        	<option  value="IM-A850S">IM-A850S</option>
                 
                        	<option  value="IM-A850S">IM-A850S</option>
                 
                        	<option  value="IM-A850S">IM-A850S</option>
                 
                        	<option  value="IM-A850S">IM-A850S</option>
                 
                        	<option  value="IM-A860K">IM-A860K</option>
                 
                        	<option  value="IM-A860K">IM-A860K</option>
                 
                        	<option  value="IM-A860K">IM-A860K</option>
                 
                        	<option  value="IM-A860K">IM-A860K</option>
                 
                        	<option  value="IM-A860K">IM-A860K</option>
                 
                        	<option  value="IM-A860K">IM-A860K</option>
                 
                        	<option  value="IM-A860L">IM-A860L</option>
                 
                        	<option  value="IM-A860L">IM-A860L</option>
                 
                        	<option  value="IM-A860L">IM-A860L</option>
                 
                        	<option  value="IM-A860L">IM-A860L</option>
                 
                        	<option  value="IM-A860L">IM-A860L</option>
                 
                        	<option  value="IM-A860S">IM-A860S</option>
                 
                        	<option  value="IM-A860S">IM-A860S</option>
                 
                        	<option  value="IM-A860S">IM-A860S</option>
                 
                        	<option  value="IM-A860S">IM-A860S</option>
                 
                        	<option  value="IM-A860S">IM-A860S</option>
                 
                        	<option  value="IM-A860S">IM-A860S</option>
                 
                        	<option  value="IM-A860S">IM-A860S</option>
                 
                        	<option  value="IM-A870K">IM-A870K</option>
                 
                        	<option  value="IM-A870K">IM-A870K</option>
                 
                        	<option  value="IM-A870K">IM-A870K</option>
                 
                        	<option  value="IM-A870K">IM-A870K</option>
                 
                        	<option  value="IM-A870K">IM-A870K</option>
                 
                        	<option  value="IM-A870K">IM-A870K</option>
                 
                        	<option  value="IM-A870K">IM-A870K</option>
                 
                        	<option  value="IM-A870L">IM-A870L</option>
                 
                        	<option  value="IM-A870L">IM-A870L</option>
                 
                        	<option  value="IM-A870L">IM-A870L</option>
                 
                        	<option  value="IM-A870L">IM-A870L</option>
                 
                        	<option  value="IM-A870L">IM-A870L</option>
                 
                        	<option  value="IM-A870L">IM-A870L</option>
                 
                        	<option  value="IM-A870L">IM-A870L</option>
                 
                        	<option  value="IM-A870S">IM-A870S</option>
                 
                        	<option  value="IM-A870S">IM-A870S</option>
                 
                        	<option  value="IM-A870S">IM-A870S</option>
                 
                        	<option  value="IM-A870S">IM-A870S</option>
                 
                        	<option  value="IM-A870S">IM-A870S</option>
                 
                        	<option  value="IM-A870S">IM-A870S</option>
                 
                        	<option  value="IM-A870S">IM-A870S</option>
                 
                        	<option  value="IM-A870S">IM-A870S</option>
                 
                        	<option  value="IM-A880S">IM-A880S</option>
                 
                        	<option  value="IM-A880S">IM-A880S</option>
                 
                        	<option  value="IM-A880S">IM-A880S</option>
                 
                        	<option  value="IM-A880S">IM-A880S</option>
                 
                        	<option  value="IM-A880S">IM-A880S</option>
                 
                        	<option  value="IM-A890K">IM-A890K</option>
                 
                        	<option  value="IM-A890K">IM-A890K</option>
                 
                        	<option  value="IM-A890K">IM-A890K</option>
                 
                        	<option  value="IM-A890K">IM-A890K</option>
                 
                        	<option  value="IM-A890K">IM-A890K</option>
                 
                        	<option  value="IM-A890K">IM-A890K</option>
                 
                        	<option  value="IM-A890L">IM-A890L</option>
                 
                        	<option  value="IM-A890L">IM-A890L</option>
                 
                        	<option  value="IM-A890L">IM-A890L</option>
                 
                        	<option  value="IM-A890L">IM-A890L</option>
                 
                        	<option  value="IM-A890L">IM-A890L</option>
                 
                        	<option  value="IM-A890L">IM-A890L</option>
                 
                        	<option  value="IM-A890S">IM-A890S</option>
                 
                        	<option  value="IM-A890S">IM-A890S</option>
                 
                        	<option  value="IM-A890S">IM-A890S</option>
                 
                        	<option  value="IM-A890S">IM-A890S</option>
                 
                        	<option  value="IM-A890S">IM-A890S</option>
                 
                        	<option  value="IM-A890S">IM-A890S</option>
                 
                        	<option  value="IM-A890S">IM-A890S</option>
                 
                        	<option  value="IM-A900K">IM-A900K</option>
                 
                        	<option  value="IM-A900K">IM-A900K</option>
                 
                        	<option  value="IM-A900K">IM-A900K</option>
                 
                        	<option  value="IM-A900K">IM-A900K</option>
                 
                        	<option  value="IM-A900K">IM-A900K</option>
                 
                        	<option  value="IM-A900L">IM-A900L</option>
                 
                        	<option  value="IM-A900L">IM-A900L</option>
                 
                        	<option  value="IM-A900L">IM-A900L</option>
                 
                        	<option  value="IM-A900L">IM-A900L</option>
                 
                        	<option  value="IM-A900L">IM-A900L</option>
                 
                        	<option  value="IM-A900S">IM-A900S</option>
                 
                        	<option  value="IM-A900S">IM-A900S</option>
                 
                        	<option  value="IM-A900S">IM-A900S</option>
                 
                        	<option  value="IM-A900S">IM-A900S</option>
                 
                        	<option  value="IM-A900S">IM-A900S</option>
                 
                        	<option  value="IM-A900S">IM-A900S</option>
                 
                        	<option  value="IM-A910K">IM-A910K</option>
                 
                        	<option  value="IM-A910K">IM-A910K</option>
                 
                        	<option  value="IM-A910K">IM-A910K</option>
                 
                        	<option  value="IM-A910K">IM-A910K</option>
                 
                        	<option  value="IM-A910L">IM-A910L</option>
                 
                        	<option  value="IM-A910L">IM-A910L</option>
                 
                        	<option  value="IM-A910S">IM-A910S</option>
                 
                        	<option  value="IM-A910S">IM-A910S</option>
                 
                        	<option  value="IM-A910S">IM-A910S</option>
                 
                        	<option  value="IM-A910S">IM-A910S</option>
                 
                        	<option  value="IM-A910S">IM-A910S</option>
                 
                        	<option  value="IM-A920S">IM-A920S</option>
                 
                        	<option  value="IM-A960L">IM-A960L</option>
                 
                        	<option  value="IM-T100K">IM-T100K</option>
                 
                        	<option  value="IM-T100K">IM-T100K</option>
                 
                        	<option  value="IM-T100K">IM-T100K</option>
                 
                        	<option  value="IS06">IS06</option>
                 
                        	<option  value="IS11PT">IS11PT</option>
                 
                        	<option  value="Media Live">Media Live</option>
                 
                        	<option  value="P4100">P4100</option>
                 
                        	<option  value="P4100">P4100</option>
                 
                        	<option  value="P8000">P8000</option>
                 
                        	<option  value="P8010">P8010</option>
                 
                        	<option  value="P8010">P8010</option>
                 
                        	<option  value="P8010">P8010</option>
                 
                        	<option  value="P9060">P9060</option>
                 
                        	<option  value="P9070">P9070</option>
                 
                        	<option  value="P9070">P9070</option>
                 
                        	<option  value="P9090">P9090</option>
                 
                        	<option  value="P9090">P9090</option>
                 
                        	<option  value="P9090">P9090</option>
                 
                        	<option  value="PTL21">PTL21</option>
                 
                        	<option  value="PTL21">PTL21</option>
                 
                        	<option  value="SMP301">SMP301</option>
                 
									</select>						
								</p>
							</td>
                        </tr>
                        <tr>
                            <th><p><img src="../img/c/inquiryTh08.gif" alt="* message" /></p></th>
                            <td>
								<p>
									<textarea class="input_text" id="message" name="message" title="message" style="width:535px; height:200px;"></textarea>
								</p>
							</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!-- //bbsList -->

                <!-- //bbsList -->
                <div class="Btn">
                    <a href="#" id="confirm"><img src="../img/b/btnSendEmail.gif" alt="Send E-mail"/></a>
                </div>
                <!-- //bbsList -->

            </div>
            <input type="hidden" id="duplication" name="duplication" value="N"/>
            </form>
            <!-- //컨텐츠내용 -->
        </div><div class="clear"></div>
        <!-- //container -->
    </div></div>
    <!-- //BODY -->

    <!-- HEADER -->
    
<div id="Header"><div class="header_i">
		<!-- logo -->
		<h1><a href="/"><img src="/img/g/logo.gif" alt="PANTECH" /></a></h1>
		<!-- //logo -->

		<!-- mainMenu -->
		<div id="mainMenu"><script type="text/javascript">jswf_include('/flash/GNB','749px','110px','always','#ffffff','transparent','xmlURL=/include/XMLParsing.asp&pagecode=01000');</script></div>
		<!-- //mainMenu -->
		<!-- topLink -->
		<ul class="topLink">
		
			<li><a href="/member/loginForm.asp"><img src="/img/g/topTip_signin.gif" alt="Sign In" /></a></li>
			<li><a href="/member/joinForm.asp"><img src="/img/g/topTip_join.gif" alt="Join" /></a></li>
		
		
			<li><a href="/mail/mailForm.asp"><img src="/img/g/topTip_inquiry.gif" alt="Inquiry" /></a></li>
		</ul>
		<!-- //topLink -->
            <!-- Search -->
                <div class="search_tong">
                <form id="form1" name="form1" method="post" onsubmit="return false;">
                    <input type="text" class="search_input" title="Model Search"  id="searchValue" name="searchValue" value="" onkeypress="javascript:if(event.keyCode==13){formSubmit('/model/result.asp','searchValue','','search');}" onfocus="this.value=''" /><a href="javascript:formSubmit('/model/result.asp','searchValue','','search');"  ><img src="/img/g/search_btn.gif"  title="검색" class="search_btn" /></a></form>
                </div>
            <!-- //Search -->
	</div></div>
    <!-- //HEADER -->



    <!-- FOORER -->
    

<div id="Footer"><div class="footer_i">
        <!-- copyright -->
        <p class="copyright"><img src="/img/g/copyright.gif" alt="Copyright ⓒ 2011 Pantech, All rights reserved" /></p>
        <!-- //copyright -->

        <!-- links -->
        <div class="links">

        </div>
        <!-- //links -->
    </div></div>
    <!-- //FOORER -->

</div>

</body>
</html>





