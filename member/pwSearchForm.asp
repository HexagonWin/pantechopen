<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">



<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
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
	<link rel="shortcut icon" type="image/x-icon" href="/img/g/favicon.ico" />
	<link type="text/css" rel="stylesheet" href="/css/base.css" />
	<link type="text/css" rel="stylesheet" href="/css/layout.css" />
	<link type="text/css" rel="stylesheet" href="/css/contents.css" />
    <script type="text/javascript" src="/js/AC_RunActiveContent.js"></script>
	<script type="text/javascript" src="/js/OllehScript.js"></script>
	<script type="text/javascript" src="/js/common.js"></script>
	<script type="text/javascript" src="/js/lib/jquery-1.4.3.min.js" charset="utf-8"></script>
  <script type="text/javascript" src="/js/lib/jquery-ui-1.8.6.custom.min.js" charset="utf-8"></script>
  <script type="text/javascript" src="/js/lib/jquery.ui.core.js" charset="utf-8"></script>
  <script type="text/javascript" src="/js/lib/jquery.ui.widget.js" charset="utf-8"></script>
  <script type="text/javascript" src="/js/lib/jquery.ui.datepicker.js" charset="utf-8"></script>

    <title>Pantech Open Source</title>
    <script language="javascript" type="text/javascript"> 
        jQuery(function(){
          	$("#modify").click(function(e) {
	              var newpw = $("#newpassword").val();
	              var repw = $("#repassword").val();
	              
	              if(!newpw) {
	                  alert("Enter your new password");
	                  return;
	              }
	              if(!repw) {
	                  alert("Enter your re-password");
	                  return;
	              } 
	              if(newpw != repw) {
	                  alert("Passwords do not match");
	                  return;
	              }
	              
	              $("#userid").attr("value",$("#id").val());
	              $("#pwFrm").submit();
                  
          	}); 
          	
          	$("#submit").click(function(e) {
          			if(!forgot_password_check()) return;
	              jQuery.ajax({ 
					      		type: "GET",
					      		url: "/member/pwSearch.asp",
					          data: {userid : $("#id").val(), firstname : $("#first_name").val(), lastname : $("#last_name").val(), country : $("#country").val()},
					          complete: function(msg) {
					              var result = msg.responseText;
					              if (result == "Y") {
                            layerChk('pwLayer','open'); 
					              } else {
					                  alert("The information does not match");                  
					              }
					          }
					      });
                  
          	});
            
        });
        
        function forgot_password_check() {
            var email = document.getElementById("id").value;
            var confirm_email = document.getElementById("confirm_id").value;
            var reg_email=/^[-A-Za-z0-9_]+[-A-Za-z0-9_.]*[@]{1}[-A-Za-z0-9_]+[-A-Za-z0-9_.]*[.]{1}[A-Za-z]{2,5}$/;
        
            if (!email) {
                alert("Please input the ID");
                return false;
            }
            
            if(!reg_email.test(email)){
                alert("Invalid email address.");
                document.getElementById("id").focus();
                return false;
            }
            
            if (!confirm_email) {
               alert("Please input the Confirm ID");
               return false;
            }
            
            if(!reg_email.test(confirm_email)){
                alert("Invalid email address.");
                document.getElementById("confirm_id").focus();
                return false;
            }
            if (email != confirm_email) {
                alert("ID do not match");
                return false;
            }
            
            if (!document.getElementById("first_name").value) {
                alert("Please input the First Name");
                document.getElementById("first_name").focus();
                return false;
            }
            
            if (!document.getElementById("last_name").value) {
                alert("Please input the Last Name");
                document.getElementById("last_name").focus();
                return false;
            }
            
            if (!$("#country").val()) {
                alert("Please choice the Country");
                $("#country").focus();
                return false;
            }
            
            return true;
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
                <h3>Forgot password?</h3>
                <div class="path">
                    <ul>
                        <li>Home</li>
                        <li class="here"><strong>Forgot password?</strong></li>
                    </ul>
                </div>
            </div>
            <!-- //컨텐츠 타이틀 -->

            <!-- 컨텐츠내용 -->
            <div class="cont">
                <!-- bbsList -->
                <div class="bbsWrite">
                    <table summary="쓰기입니다">
                        <caption>쓰기</caption>
                        <colgroup>
                            <col width="140" />
                            <col width="*" />
                        </colgroup>

                        <tbody>
                        <tr>
                            <th><p><img src="/img/c/tblThId.gif" alt="ID(E-mail)" /></p></th>
                            <td><p><input type="text" name="id" id="id" class="input_text" title="ID(E-mail)" value="" style="width:255px;" /></p></td>
                        </tr>

                        <tr>
                            <th><p><img src="/img/c/tblThConfirm.gif" alt="Confirm ID" /></p></th>
                            <td><p><input type="text" name="confirm_id" id="confirm_id" class="input_text" title="Confirm ID" value="" style="width:255px;" /></p></td>
                        </tr>

                        <tr>
                            <th><p><img src="/img/c/tblThName.gif" alt="Name" /></p></th>
                            <td>
								<p>
									<input type="text" name="first_name" id="first_name" class="input_text" title="Name" value="First Name" style="width:121px;" onfocus="clearInputText('first_name');"/>
									<input type="text" name="last_name" id="last_name" class="input_text" title="Name" value="Last Name" style="width:121px;" onfocus="clearInputText(this.id);"/>
								</p>
							</td>
                        </tr>

                        <tr>
                            <th><p><img src="/img/c/tblThCountry.gif" alt="Country" /></p></th>
                            <td><p>
								<select style="width:265px;" id="country" name="country" title="Country" >
								    <option value="">Select</option>
								
                      	<option value="1">AFGHANISTAN</option>
                
                      	<option value="2">ALAND ISLANDS</option>
                
                      	<option value="3">ALBANIA</option>
                
                      	<option value="4">ALGERIA</option>
                
                      	<option value="5">AMERICAN SAMOA</option>
                
                      	<option value="6">ANDORRA</option>
                
                      	<option value="7">ANGOLA</option>
                
                      	<option value="8">ANGUILLA</option>
                
                      	<option value="9">ANTARCTICA</option>
                
                      	<option value="10">ANTIGUA AND BARBUDA</option>
                
                      	<option value="11">ARGENTINA</option>
                
                      	<option value="12">ARMENIA</option>
                
                      	<option value="13">ARUBA</option>
                
                      	<option value="14">AUSTRALIA</option>
                
                      	<option value="15">AUSTRIA</option>
                
                      	<option value="16">AZERBAIJAN</option>
                
                      	<option value="17">BAHAMAS</option>
                
                      	<option value="18">BAHRAIN</option>
                
                      	<option value="19">BANGLADESH</option>
                
                      	<option value="20">BARBADOS</option>
                
                      	<option value="21">BELARUS</option>
                
                      	<option value="22">BELGIUM</option>
                
                      	<option value="23">BELIZE</option>
                
                      	<option value="24">BENIN</option>
                
                      	<option value="25">BERMUDA</option>
                
                      	<option value="26">BHUTAN</option>
                
                      	<option value="27">BOLIVIA, PLURINATIONAL STATE OF</option>
                
                      	<option value="28">BONAIRE, SAINT EUSTATIUS AND SABA</option>
                
                      	<option value="29">BOSNIA AND HERZEGOVINA</option>
                
                      	<option value="30">BOTSWANA</option>
                
                      	<option value="31">BOUVET ISLAND</option>
                
                      	<option value="32">BRAZIL</option>
                
                      	<option value="33">BRITISH INDIAN OCEAN TERRITORY</option>
                
                      	<option value="34">BRUNEI DARUSSALAM</option>
                
                      	<option value="35">BULGARIA</option>
                
                      	<option value="36">BURKINA FASO</option>
                
                      	<option value="37">BURUNDI</option>
                
                      	<option value="38">CAMBODIA</option>
                
                      	<option value="39">CAMEROON</option>
                
                      	<option value="40">CANADA</option>
                
                      	<option value="41">CAPE VERDE</option>
                
                      	<option value="42">CAYMAN ISLANDS</option>
                
                      	<option value="43">CENTRAL AFRICAN REPUBLIC</option>
                
                      	<option value="44">CHAD</option>
                
                      	<option value="45">CHILE</option>
                
                      	<option value="46">CHINA</option>
                
                      	<option value="47">CHRISTMAS ISLAND</option>
                
                      	<option value="48">COCOS (KEELING) ISLANDS</option>
                
                      	<option value="49">COLOMBIA</option>
                
                      	<option value="50">COMOROS</option>
                
                      	<option value="51">CONGO</option>
                
                      	<option value="52">CONGO, THE DEMOCRATIC REPUBLIC OF THE</option>
                
                      	<option value="53">COOK ISLANDS</option>
                
                      	<option value="54">COSTA RICA</option>
                
                      	<option value="55">C?E D'IVOIRE</option>
                
                      	<option value="56">CROATIA</option>
                
                      	<option value="57">CURA?O</option>
                
                      	<option value="58">CUBA</option>
                
                      	<option value="59">CYPRUS</option>
                
                      	<option value="60">CZECH REPUBLIC</option>
                
                      	<option value="61">DENMARK</option>
                
                      	<option value="62">DJIBOUTI</option>
                
                      	<option value="63">DOMINICA</option>
                
                      	<option value="64">DOMINICAN REPUBLIC</option>
                
                      	<option value="65">ECUADOR</option>
                
                      	<option value="66">EGYPT</option>
                
                      	<option value="67">EL SALVADOR</option>
                
                      	<option value="68">EQUATORIAL GUINEA</option>
                
                      	<option value="69">ERITREA</option>
                
                      	<option value="70">ESTONIA</option>
                
                      	<option value="71">ETHIOPIA</option>
                
                      	<option value="72">FALKLAND ISLANDS (MALVINAS)</option>
                
                      	<option value="73">FAROE ISLANDS</option>
                
                      	<option value="74">FIJI</option>
                
                      	<option value="75">FINLAND</option>
                
                      	<option value="76">FRANCE</option>
                
                      	<option value="77">FRENCH GUIANA</option>
                
                      	<option value="78">FRENCH POLYNESIA</option>
                
                      	<option value="79">FRENCH SOUTHERN TERRITORIES</option>
                
                      	<option value="80">GABON</option>
                
                      	<option value="81">GAMBIA</option>
                
                      	<option value="82">GEORGIA</option>
                
                      	<option value="83">GERMANY</option>
                
                      	<option value="84">GHANA</option>
                
                      	<option value="85">GIBRALTAR</option>
                
                      	<option value="86">GREECE</option>
                
                      	<option value="87">GREENLAND</option>
                
                      	<option value="88">GRENADA</option>
                
                      	<option value="89">GUADELOUPE</option>
                
                      	<option value="90">GUAM</option>
                
                      	<option value="91">GUATEMALA</option>
                
                      	<option value="92">GUERNSEY</option>
                
                      	<option value="93">GUINEA</option>
                
                      	<option value="94">GUINEA-BISSAU</option>
                
                      	<option value="95">GUYANA</option>
                
                      	<option value="96">HAITI</option>
                
                      	<option value="97">HEARD ISLAND AND MCDONALD ISLANDS</option>
                
                      	<option value="98">HOLY SEE (VATICAN CITY STATE)</option>
                
                      	<option value="99">HONDURAS</option>
                
                      	<option value="100">HONG KONG</option>
                
                      	<option value="101">HUNGARY</option>
                
                      	<option value="102">ICELAND</option>
                
                      	<option value="103">INDIA</option>
                
                      	<option value="104">INDONESIA</option>
                
                      	<option value="105">IRAN, ISLAMIC REPUBLIC OF</option>
                
                      	<option value="106">IRAQ</option>
                
                      	<option value="107">IRELAND</option>
                
                      	<option value="108">ISLE OF MAN</option>
                
                      	<option value="109">ISRAEL</option>
                
                      	<option value="110">ITALY</option>
                
                      	<option value="111">JAMAICA</option>
                
                      	<option value="112">JAPAN</option>
                
                      	<option value="113">JERSEY</option>
                
                      	<option value="114">JORDAN</option>
                
                      	<option value="115">KAZAKHSTAN</option>
                
                      	<option value="116">KENYA</option>
                
                      	<option value="117">KIRIBATI</option>
                
                      	<option value="118">KOREA, DEMOCRATIC PEOPLE'S REPUBLIC OF</option>
                
                      	<option value="119">KOREA, REPUBLIC OF</option>
                
                      	<option value="120">KUWAIT</option>
                
                      	<option value="121">KYRGYZSTAN</option>
                
                      	<option value="122">LAO PEOPLE'S DEMOCRATIC REPUBLIC</option>
                
                      	<option value="123">LATVIA</option>
                
                      	<option value="124">LEBANON</option>
                
                      	<option value="125">LESOTHO</option>
                
                      	<option value="126">LIBERIA</option>
                
                      	<option value="127">LIBYAN ARAB JAMAHIRIYA</option>
                
                      	<option value="128">LIECHTENSTEIN</option>
                
                      	<option value="129">LITHUANIA</option>
                
                      	<option value="130">LUXEMBOURG</option>
                
                      	<option value="131">MACAO</option>
                
                      	<option value="132">MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF</option>
                
                      	<option value="133">MADAGASCAR</option>
                
                      	<option value="134">MALAWI</option>
                
                      	<option value="135">MALAYSIA</option>
                
                      	<option value="136">MALDIVES</option>
                
                      	<option value="137">MALI</option>
                
                      	<option value="138">MALTA</option>
                
                      	<option value="139">MARSHALL ISLANDS</option>
                
                      	<option value="140">MARTINIQUE</option>
                
                      	<option value="141">MAURITANIA</option>
                
                      	<option value="142">MAURITIUS</option>
                
                      	<option value="143">MAYOTTE</option>
                
                      	<option value="144">MEXICO</option>
                
                      	<option value="145">MICRONESIA, FEDERATED STATES OF</option>
                
                      	<option value="146">MOLDOVA, REPUBLIC OF</option>
                
                      	<option value="147">MONACO</option>
                
                      	<option value="148">MONGOLIA</option>
                
                      	<option value="149">MONTENEGRO</option>
                
                      	<option value="150">MONTSERRAT</option>
                
                      	<option value="151">MOROCCO</option>
                
                      	<option value="152">MOZAMBIQUE</option>
                
                      	<option value="153">MYANMAR</option>
                
                      	<option value="154">NAMIBIA</option>
                
                      	<option value="155">NAURU</option>
                
                      	<option value="156">NEPAL</option>
                
                      	<option value="157">NETHERLANDS</option>
                
                      	<option value="158">NEW CALEDONIA</option>
                
                      	<option value="159">NEW ZEALAND</option>
                
                      	<option value="160">NICARAGUA</option>
                
                      	<option value="161">NIGER</option>
                
                      	<option value="162">NIGERIA</option>
                
                      	<option value="163">NIUE</option>
                
                      	<option value="164">NORFOLK ISLAND</option>
                
                      	<option value="165">NORTHERN MARIANA ISLANDS</option>
                
                      	<option value="166">NORWAY</option>
                
                      	<option value="167">OMAN</option>
                
                      	<option value="168">PAKISTAN</option>
                
                      	<option value="169">PALAU</option>
                
                      	<option value="170">PALESTINIAN TERRITORY, OCCUPIED</option>
                
                      	<option value="171">PANAMA</option>
                
                      	<option value="172">PAPUA NEW GUINEA</option>
                
                      	<option value="173">PARAGUAY</option>
                
                      	<option value="174">PERU</option>
                
                      	<option value="175">PHILIPPINES</option>
                
                      	<option value="176">PITCAIRN</option>
                
                      	<option value="177">POLAND</option>
                
                      	<option value="178">PORTUGAL</option>
                
                      	<option value="179">PUERTO RICO</option>
                
                      	<option value="180">QATAR</option>
                
                      	<option value="181">REUNION</option>
                
                      	<option value="182">ROMANIA</option>
                
                      	<option value="183">RUSSIAN FEDERATION</option>
                
                      	<option value="184">RWANDA</option>
                
                      	<option value="185">SAINT BARTH?EMY</option>
                
                      	<option value="186">SAINT HELENA, ASCENSION AND TRISTAN DA CUNHA</option>
                
                      	<option value="187">SAINT KITTS AND NEVIS</option>
                
                      	<option value="188">SAINT LUCIA</option>
                
                      	<option value="189">SAINT MARTIN (FRENCH PART)</option>
                
                      	<option value="190">SAINT PIERRE AND MIQUELON</option>
                
                      	<option value="191">SAINT VINCENT AND THE GRENADINES</option>
                
                      	<option value="192">SAMOA</option>
                
                      	<option value="193">SAN MARINO</option>
                
                      	<option value="194">SAO TOME AND PRINCIPE</option>
                
                      	<option value="195">SAUDI ARABIA</option>
                
                      	<option value="196">SENEGAL</option>
                
                      	<option value="197">SERBIA</option>
                
                      	<option value="198">SEYCHELLES</option>
                
                      	<option value="199">SIERRA LEONE</option>
                
                      	<option value="200">SINGAPORE</option>
                
                      	<option value="201">SINT MAARTEN (DUTCH PART)</option>
                
                      	<option value="202">SLOVAKIA</option>
                
                      	<option value="203">SLOVENIA</option>
                
                      	<option value="204">SOLOMON ISLANDS</option>
                
                      	<option value="205">SOMALIA</option>
                
                      	<option value="206">SOUTH AFRICA</option>
                
                      	<option value="207">SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS</option>
                
                      	<option value="208">SPAIN</option>
                
                      	<option value="209">SRI LANKA</option>
                
                      	<option value="210">SUDAN</option>
                
                      	<option value="211">SURINAME</option>
                
                      	<option value="212">SVALBARD AND JAN MAYEN</option>
                
                      	<option value="213">SWAZILAND</option>
                
                      	<option value="214">SWEDEN</option>
                
                      	<option value="215">SWITZERLAND</option>
                
                      	<option value="216">SYRIAN ARAB REPUBLIC</option>
                
                      	<option value="217">TAIWAN, PROVINCE OF CHINA</option>
                
                      	<option value="218">TAJIKISTAN</option>
                
                      	<option value="219">TANZANIA, UNITED REPUBLIC OF</option>
                
                      	<option value="220">THAILAND</option>
                
                      	<option value="221">TIMOR-LESTE</option>
                
                      	<option value="222">TOGO</option>
                
                      	<option value="223">TOKELAU</option>
                
                      	<option value="224">TONGA</option>
                
                      	<option value="225">TRINIDAD AND TOBAGO</option>
                
                      	<option value="226">TUNISIA</option>
                
                      	<option value="227">TURKEY</option>
                
                      	<option value="228">TURKMENISTAN</option>
                
                      	<option value="229">TURKS AND CAICOS ISLANDS</option>
                
                      	<option value="230">TUVALU</option>
                
                      	<option value="231">UGANDA</option>
                
                      	<option value="232">UKRAINE</option>
                
                      	<option value="233">UNITED ARAB EMIRATES</option>
                
                      	<option value="234">UNITED KINGDOM</option>
                
                      	<option value="235">UNITED STATES</option>
                
                      	<option value="236">UNITED STATES MINOR OUTLYING ISLANDS</option>
                
                      	<option value="237">URUGUAY</option>
                
                      	<option value="238">UZBEKISTAN</option>
                
                      	<option value="239">VANUATU</option>
                
                      	<option value="240">VENEZUELA, BOLIVARIAN REPUBLIC OF</option>
                
                      	<option value="241">VIET NAM</option>
                
                      	<option value="242">VIRGIN ISLANDS, BRITISH</option>
                
                      	<option value="243">VIRGIN ISLANDS, U.S.</option>
                
                      	<option value="244">WALLIS AND FUTUNA</option>
                
                      	<option value="245">WESTERN SAHARA</option>
                
                      	<option value="246">YEMEN</option>
                
                      	<option value="247">ZAMBIA</option>
                
                      	<option value="248">ZIMBABWE</option>
                
								</select>
							</p></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!-- //bbsList -->

                <!-- //bbsList -->
                <div class="Btn">
                    <a href="#" name="submit" id="submit"><img src="/img/b/btn_submit.gif" alt="Submit" /></a>
                </div>
                <!-- //bbsList -->

            </div>
            <!-- //컨텐츠내용 -->
        </div><div class="clear"></div>
        <!-- //container -->
    </div></div>
    <!-- //BODY -->



<!-- password layer -->

<div id="pwLayer">
<div class="pwLayerBg"></div>
<div class="pwLayer">
	<h1><img src="/img/popup/pwModTit.gif" alt="Select your new password and enter it below." /></h1>
	<div class="layerCnt">
		<!-- bbsList -->
		<div class="bbsWrite">
		  <form id="pwFrm" action="/member/pwUpdate.asp" method="post">
			<table summary="쓰기입니다">
				<caption>쓰기</caption>
				<colgroup>
					<col width="160" />
					<col width="*" />
				</colgroup>

				<tbody>
				<tr>
					<th><p><img src="/img/popup/pwModTh01.gif" alt="New Password" /></p></th>
					<td><p><input type="password" name="newpassword" id="newpassword" class="input_text" title="New Password" value="" style="width:200px;" /></p></td>
				</tr>
				<tr>
					<th><p><img src="/img/popup/pwModTh02.gif" alt="Re-enter Password" /></p></th>
					<td><p><input type="password" name="repassword" id="repassword" class="input_text" title="Re-enter Password" value="" style="width:200px;" /></p></td>
				</tr>
				</tbody>
			</table>
			   <input type="hidden" id="userid" name="userid" value=""/>
			</form>
		</div>
		<!-- //bbsList -->

		<!-- //bbsList -->
		<div class="Btn">
			<a href="#" name="modify" id="modify"><img src="/img/b/btnModify.gif" alt="Modify" /></a>
		</div>
		<div class="closeBtn">
			<a href="javascript:layerChk('pwLayer','close');"><img src="/img/popup/layerClose.gif" alt="layer Close" /></a>
		</div>
		<!-- //bbsList -->
	</div>

</div>
</div>
<!-- //password layer -->


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


