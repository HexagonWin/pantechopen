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
      var reg_email=/^[-A-Za-z0-9_]+[-A-Za-z0-9_.]*[@]{1}[-A-Za-z0-9_]+[-A-Za-z0-9_.]*[.]{1}[A-Za-z]{2,5}$/;
      
      $("#duplicationChk").click(function(e) {
          var email = $("#userid").val();
          if (!email) {
              alert("Please input the ID");
              return;
          }
          
          if(!isLength(email, 0, 50)) {
          		alert('ID must be maximum length of 50.');
          		return;
          }
          
          if(!reg_email.test(email)){
              alert("Invalid email address.");
              $("#userid").focus();
              return;
          }
          
          
          checkId('true');
      });
    
      $("#confirm").click(function(e) {  
          var email = $("#userid").val();
          
          if (!email) {
              alert("Please input the ID");
              return;
          }
          
          if(!isLength(email, 0, 50)) {
          		alert('ID must be maximum length of 50.');
          		return;
          }
          
          if(!reg_email.test(email)){
              alert("Invalid email address.");
              $("#userid").focus();
              return;
          }
          
          //checkId('false');    //confirm실행시에도 최종적으로 duplication check를 한다.
          //alert($("#duplication").val());
				  if ($("#duplication").val() == "N") {
						 $("#duplication_output").attr("value", "Please check duplicate id.");
						return;
				  }
          
          var password = $("#password").val();
          var re_password = $("#re_password").val();
          
          if (!password) {
              alert("Enter your password.");
              $("#password").focus();
              return;
          }
          
          if (!isEngNum(password) || !isLength(password, 4, 12)) {
          		alert("Password must be 4 to 12 alpha numeric characters");
          		return;
          }
          
          if (!re_password) {
              alert("Enter your  re-enter password.");
              $("#re_password").focus();
              return;
          }
          
          if (!isEngNum(re_password) || !isLength(re_password, 4, 12)) {
          		alert("Re-enter Password must be 4 to 12 alpha numeric characters");
          		return;
          }
          
          if (password != re_password) {
            alert("Passwords do not match.")
            return;
          }
          
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
          
          if (!$("#country").val()) {
              alert("Please choice the Country");
              $("#country").focus();
              return;
          }   
          
          
          if (!$("#termsChk").attr("checked")) {
              alert("Please check terms of service")
              $("#termsChk").focus();
              return;
          }
          
          if ($("#duplication").val() == 'N') {
            alert("Check duplicate ID(E-mail)");
            return;
          }
          
          $("#joinFrm").submit();
      });
      
      $("#first_name").focus(function() {$("#first_name").attr("value","")});
      
      $("#last_name").focus(function() {$("#last_name").attr("value","")});
    });
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
                <h3>Join</h3>
                <div class="path">
                    <ul>
                        <li>Home</li>
                        <li class="here"><strong>Join</strong></li>
                    </ul>
                </div>
            </div>
            <!-- //컨텐츠 타이틀 -->

            <!-- 컨텐츠내용 -->
            <form id="joinFrm" action="/member/join.asp" method="post">
            <div class="cont">
				<h2 class="titJoin"><img src="/img/c/joinTit.jpg" alt="Account Information" /></h2>
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
                            <th><p><img src="/img/c/joinTh01.gif" alt="ID(E-mail)" /></p></th>
                            <td style="height:40px;"><p>
									<input type="text" id="userid" name="userid" class="input_text" title="ID(E-mail)" value="" style="width:250px;" />
									<a href="#" id="duplicationChk" name="duplicationChk"><img src="/img/b/btnCheck.gif" alt="Confirm" /></a></p>
									<p>
									<input type="text" id="duplication_output" name="duplication_output" value="" style="border:0;color:#ff0000;width:450px" readonly="readonly"/>
									</p></td>
                        </tr>

                        <tr>
                            <th><p><img src="/img/c/joinTh02.gif" alt="Password" /></p></th>
                            <td><p>
									<input type="password" name="password" id="password" class="input_text" title="Password" value="" style="width:250px;" /></p></td>
                        </tr>

                        <tr>
                            <th><p><img src="/img/c/joinTh03.gif" alt="Re-enter Password" /></p></th>
                            <td>
								<p>
									<input type="password" id="re_password" name="re_password" class="input_text" title="Re-enter Password" value="" style="width:250px;" />
								</p>
							</td>
                        </tr>

                        <tr>
                            <th><p><img src="/img/c/joinTh04.gif" alt="Name" /></p></th>
                            <td><p>
									<input type="text" class="input_text" title="Name" label="firs" value="First Name" style="width:119px;" id="first_name" name="first_name"/>
									<input type="text" class="input_text" title="Name" value="Last Name" style="width:119px;" id="last_name" name="last_name"/>
							</p></td>
                        </tr>

                        <tr>
                            <th><p><img src="/img/c/joinTh05.gif" alt="Country" /></p></th>
                            <td><p>
									<select style="width:257px;" id="country" name="country" title="Country" style="width:250px;">
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

                        <tr>
                            <th><p><img src="/img/c/joinTh06.gif" alt="terms" /></p></th>
                            <td><p>
									<a href="javascript:layerChk2('legal','open');"><img src="/img/b/btnView01.gif" alt="legal View" /></a>
									<a href="javascript:layerChk2('privacy','open');"><img src="/img/b/btnView02.gif" alt="privacy View" /></a>
									<label><input type="checkbox" id="termsChk" title="Agree to" checked="Y"/>Agree to</label>
							</p></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!-- //bbsList -->

                <!-- //bbsList -->
                <div class="Btn">
                    <a href="#" id="confirm"><img src="/img/b/btn_confirm.gif" alt="Confirm"/></a>
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

     
<!-- legal layer -->
<div id="legal">
<div class="pwLayerBg"></div>
<div class="pwLayer">
	<h1><img src="/img/popup/titLegal.gif" alt="Legal" /></h1>
	<div class="layerScrollCnt">

		<div class="layerScroll">
		<style>Body {font-size:9pt;} P, TR, TD, DIV {font-size:9pt;} P{line-height:160%; margin-top:0; margin-bottom:0;}</style>
				<p class=MsoNormal><span lang=EN-US>&lt;Legal&gt;<br style='mso-special-character:
				line-break'>
				<![if !supportLineBreakNewLine]><br style='mso-special-character:line-break'>
				<![endif]></span></p>
				<p class=MsoNormal><span lang=EN-US>Pantech Co., Ltd. ("Pantech") is pleased to
				make available to you for download the various source codes ("Source Codes")
				shown on this website at no charge. By downloading any source code shown on
				this website, you expressly assume all risk and liability associated with
				downloading and using the Source Codes as well as complying with the user
				agreements that accompany each Source Code. </span></p>
				
				<p class=MsoNormal><span lang=EN-US><o:p>&nbsp;</o:p></span></p>
				
				<p class=MsoNormal><span lang=EN-US>Many of the Source Codes are licensed under
				public license such as GNU General Public License and/or GNU Lesser General
				Public License. You will find the applicable license in each of the files
				containing the Source Codes.</span></p>
				
				<p class=MsoNormal><span lang=EN-US><o:p>&nbsp;</o:p></span></p>
				
				<p class=MsoNormal><span lang=EN-US style='text-transform:uppercase'>Pantech
				provides the Source Codes and this downloading service "as is" without
				representations or warranties of any kind. You expressly agree that your use of
				the Source Codes is at your sole risk. To the full extent permissible by
				applicable law, Pantech disclaims all warranties, including, without
				limitation, warranties of merchantability, fitness for a particular purpose,
				accuracy, availability, or non-infringement. You acknowledge that Pantech is
				not obligated to provide and does not provide any support or assistance with
				respect to the Source Codes. <span style='mso-spacerun:yes'>&nbsp;</span>Pantech
				will not be liable for any damages of any kind arising from the use of the
				Source Codes, including, but not limited to direct, indirect, incidental,
				punitive, and consequential damages. <o:p></o:p></span></p>
				
				<p class=MsoNormal><span lang=EN-US><o:p>&nbsp;</o:p></span></p>
				
				<span lang=EN-US style='font-size:10.0pt;mso-bidi-font-size:11.0pt;font-family:
				"맑은 고딕";mso-bidi-font-family:"Times New Roman";mso-font-kerning:1.0pt;
				mso-ansi-language:EN-US;mso-fareast-language:KO;mso-bidi-language:AR-SA'>This
				downloading service shall not affect nor extend any warranty or disclaimer
				which Pantech makes in each of Pantech's products in which the Source Code (or
				object/executable code based thereon) is incorporated.</span>
		</div>

	</div>

	<div class="closeBtn">
		<a href="javascript:layerChk2('legal','close');"><img src="/img/popup/layerClose.gif" alt="layer Close" /></a>
	</div>

</div>
</div>
<!-- //legal layer -->
<!-- privacy layer -->
<div id="privacy">
<div class="pwLayerBg"></div>
<div class="pwLayer">
	<h1><img src="/img/popup/titPrivacy.gif" alt="Privacy" /></h1>
	<div class="layerScrollCnt">

		<div class="layerScroll">
		<style>Body {font-size:9pt;} P, TR, TD, DIV {font-size:9pt;} P{line-height:160%; margin-top:0; margin-bottom:0;}</style>
			<p class=MsoNormal><span lang=EN-US>&lt;Privacy&gt;</span></p>
			<p class=MsoNormal><span lang=EN-US><o:p>&nbsp;</o:p></span></p>

			<p class=MsoNormal><span lang=EN-US>YOUR PRIVACY</span></p>
			
			<p class=MsoNormal><span lang=EN-US>Your privacy is of great importance to us.
			As a user of this web site (the "Site"), you are valued by us and we will take
			appropriate measures to protect the information provided by and collected from
			you on the Site in connection with the functions, facilities, products and
			services offered on our Site. As our business changes and grows, so will this
			policy. Please check back periodically for additions and changes.</span></p>
			
			<p class=MsoNormal><span lang=EN-US><o:p>&nbsp;</o:p></span></p>
			
			<p class=MsoNormal><span lang=EN-US>INFORMATION WE COLLECT AND HOW WE USE IT</span></p>
			
			<p class=MsoNormal><span lang=EN-US>We only request and use information
			absolutely essential to respond to your requests for information on our
			products or services and to inform you of services we think may be of interest
			to you. Our site uses your IP address (an IP address identifies the type of
			browser you are using i.e. Netscape; Internet Explorer by assigning a unique
			number) for general system administration to serve you better by diagnosing
			problems with our server.</span></p>
			
			<p class=MsoNormal><span lang=EN-US><o:p>&nbsp;</o:p></span></p>
			
			<p class=MsoNormal><span lang=EN-US>COOKIES</span></p>
			
			<p class=MsoNormal><span lang=EN-US>At times, we may use a feature of your
			browser to send your computer a "cookie". Cookies are used by thousands of web
			sites in order to enhance your web experience. A cookie is a small data file
			that assigns a unique anonymous number to your browser from a web server and is
			stored on your computer's hard drive. Cookies cannot damage or read information
			stored on your hard drive. Cookies make your web experience more enjoyable by
			storing passwords and preferences. You can adjust your browser settings to
			refuse all cookies or to inform you when a cookie is being placed on your hard
			drive. However, your election not to accept cookies may diminish your
			experience with the Site because of additional time needed to repeatedly enter
			information.</span></p>
			
			<p class=MsoNormal><span lang=EN-US><o:p>&nbsp;</o:p></span></p>
			
			<p class=MsoNormal><span lang=EN-US>DISCLOSURE OF PERSONAL INFORMATION</span></p>
			
			<p class=MsoNormal><span lang=EN-US>We will not disclose, sell, trade, or rent
			Personal Information without your prior consent, except to the extent necessary
			to provide you with a requested service. In certain rare circumstances, we may
			be compelled by law to disclose your Personal Information, such as in
			connection with a lawsuit or other legal proceeding. In the event disclosure is
			required, we will use reasonable commercial efforts to try to secure
			confidential treatment of the disclosed Personal Information, including
			prohibiting use of the information for any commercial purpose.</span></p>
			
			<p class=MsoNormal><span lang=EN-US><o:p>&nbsp;</o:p></span></p>
			
			<p class=MsoNormal><span lang=EN-US>In addition, we reserve the right to
			disclose certain information when, in our sole discretion, we determine that such
			disclosure is necessary to protect Pantech or its employees, their rights or
			property, or to protect the physical safety or health of employees of Pantech
			or a member of the general public.</span></p>
			
			<p class=MsoNormal><span lang=EN-US><o:p>&nbsp;</o:p></span></p>
			
			<p class=MsoNormal><span lang=EN-US>Any submissions that you make to any public
			areas of the Site such as bulletin boards ("Public Areas") will be public and
			will not be considered Personal Information. We do not control, and are not
			responsible for, the actions of other users of the Site or of Clients with
			respect to any information you post in Public Areas. In addition, information
			that you submit to Public Areas may be collected and used by others to send you
			unsolicited messages and for other purposes.</span></p>
			
			<p class=MsoNormal><span lang=EN-US><o:p>&nbsp;</o:p></span></p>
			
			<p class=MsoNormal><span lang=EN-US>USER ACCESS TO PERSONAL INFORMATION</span></p>
			
			<p class=MsoNormal><span lang=EN-US>You have the right to access and correct
			your own Personal Information. If you desire access to your own Personal
			Information, to correct existing Personal Information, or to remove your
			Personal Information, please contact us using the contact information provided
			below. If you request removal of Personal Information, you acknowledge that
			residual Personal Information may continue to reside in Pantech's records and archives,
			but Pantech will not use that information for a commercial purpose. Pantech
			reserves the right to maintain your Personal Information if Pantech has
			suspended, limited, or terminated your access to the Site for violating the
			Pantech Terms of Use. </span></p>
			
			<p class=MsoNormal><span lang=EN-US><o:p>&nbsp;</o:p></span></p>
			
			<p class=MsoNormal><span lang=EN-US>PROTECTION OF INFORMATION</span></p>
			
			<p class=MsoNormal><span lang=EN-US>Pantech will maintain the confidentiality
			of the information it collects. We maintain internal practices that help
			protect the security and confidentiality of this information by limiting
			employee access to and use of this information.</span></p>
			
			<p class=MsoNormal><span lang=EN-US><o:p>&nbsp;</o:p></span></p>
			
			<p class=MsoNormal><span lang=EN-US>If you have any questions regarding this
			policy, please contact <a href="mailto:opensource@pantech.com" target="_blank">opensource@pantech.com</a>.</span></p>
		</div>

	</div>

	<div class="closeBtn">
		<a href="javascript:layerChk2('privacy','close');"><img src="/img/popup/layerClose.gif" alt="layer Close" /></a>
	</div>

</div>
</div>
<!-- //privacy layer -->


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


