

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><meta charset="utf-8" /><meta http-equiv="X-UA-Compatible" content="IE=edge" /><meta name="robots" content="noindex" /><meta name="googlebot" content="noindex" /><meta name="googlebot" content="noarchive" /><meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=2.0 user-scalable = yes" /><title>
	헬스관리 및 예약관리
</title>

     	<!--[if lt IE 9]>
	<script src="/include/js/IE9.js"></script>
	<![endif]--> 
	
	<link href="/css/default_ds.css" rel="stylesheet" type="text/css" />
	

  
     <script type="text/javascript">
     
     var oHTTP = null;

if(window.XMLHttpRequest){
    oHTTP = new XMLHttpRequest();
}else{
    oHTTP = new ActiveXObject("Msxml2.XMLHTTP.3.0");
}

var oXML = new ActiveXObject("Msxml2.DOMDocument.3.0");
oXML.async = false;


function getXml(url)
{			
	var BoolData;		
	oHTTP.open("POST", url, false);		
	oHTTP.send(oXML);
		
	BoolData = oHTTP.responseText;

	return BoolData;
}	

     
     </script>
</head>
<body>
    <form name="aspnetForm" method="post" action="tlist.aspx" id="aspnetForm">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMTM1MzYwMzA0OQ9kFgJmD2QWAgIDD2QWDAIBDw8WAh4EVGV4dAUX7YGs66Gc7Iqk7ZWPQTRVXzHtmLjsoJBkZAIDDxYCHgdiZ2NvbG9yBQV3aGl0ZRYCZg8PFgIfAAUTPGI+7Yuw7LyT66qp66GdPC9iPmRkAgQPFgIfAQUHIzNiOWJmZmQCBQ8WAh8BBQcjM2I5YmZmZAIGDxYEHwEFByMzYjliZmYeB1Zpc2libGVoZAIHD2QWCAIFDxYCHgtfIUl0ZW1Db3VudGZkAgcPFgIfAwIBFgICAQ9kFgoCAQ8PFgIfAAUHM+qwnOyblGRkAgQPFQIKMjAyMS0wNi0xNwoyMDIxLTEwLTA1ZAIHDw8WAh8AZWRkAg0PDxYEHgtOYXZpZ2F0ZVVybAUXamF2YXNjcmlwdDpia192aWV3KCcxJykfAmhkZAIPDw8WAh8AZRYCHgVzdHlsZQUMZGlzcGxheTpub25lZAIJDxYCHwNmZAILDxYCHwNmZGTooZ1xjFFcpMKk+B1CPT6tYCNZzA==" />
</div>

<script type="text/javascript">
//<![CDATA[
var theForm = document.forms['aspnetForm'];
if (!theForm) {
    theForm = document.aspnetForm;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
//]]>
</script>


<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="8C86FCDA" />
</div>
    
   
    
    
    
    
    
    
    <table border="0" width="100%" height="100%">
    <tr><td valign="top">
    
    
    
    
    
    
    
    
      <div id="content"  class="page-content">
      <!---page-content--->  
	<div id="headerWrap"> 
		<div id="header"> 
			<div class="btn_back" style="z-index:9999"><a id="ctl00_href_lecture" href="/myinfo/pass.aspx"><img src="/image/btn_config.png" alt="이전"/></a></div>
			<div class="logo" style="width:100%" align="center"><a id="ctl00_href_home" href="/ticket/tlist.aspx">LIS</a></div> 
			<div class="btn_logout" style="z-index:9999">
			<a id="ctl00_btn_logout" href="javascript:__doPostBack('ctl00$btn_logout','')"><img src="/image/btn_logout.png" alt="이전"/></a>
			
			</div> 
		</div> 
	</div>
	
		
		

	    <table width="100%" height="35" ><tr>
     <td id="ctl00_td_ticket" width="25%" align="center" bgcolor="white"><a id="ctl00_href_ticket" href="/ticket/tlist.aspx"><b>티켓목록</b></a></td>

     <td id="ctl00_td_att" width="25%" align="center" bgcolor="#3b9bff"><a id="ctl00_href_att" href="/attend/list.aspx"><font color="white">출석현황</font></a></td>

     <td id="ctl00_td_reserve" width="25%" align="center" bgcolor="#3b9bff"><a id="ctl00_href_reserve" href="/reserve/myreserve.aspx"><font color="white">예약현황</font></a></td>

        
    </tr></table>
		
	 

    
	

    
        
    
    <!-- 공지사항 -->
<script>
 function dv_popup_close(nnum) {

        if(document.all.chk_nvew.checked)
        {
            var data = getXml("/common/javasend.aspx?kind=noticeview&nnum=" + nnum)
        }
        
        
        div_popup1.style.display = "none"
         
    }
</script>    

       <div id="div_popup1"   style="  position:absolute; border-width:0px; border-style:solid ; left:10px; right:10px; top:50px;  z-index:99999; display:none; height:120px ; ">
<table bgcolor="666666" cellpadding="0" cellspacing="1" border="1">
<tr><td bgcolor="ffffff" width="900" height="120" align="center" valign="top">
    <table width="95%">
        <tr>
        <td>

            <table width="100%" cellpadding="0" cellspacing="0" border="0">
                <tr><td height="3"></td></tr>
                <tr><td align="right">
                <a id="ctl00_ContentPlaceHolder1_notice1_href_close"><img src="/image/layer_close.png" /></a>
                <a href="javascript:dv_popup_close()"></a></td></tr>
                <tr><td style="text-align:left;font-size:20px"><b><span id="ctl00_ContentPlaceHolder1_notice1_lbl_nTitle"></span></b><br /></td></tr>
                <tr><td><span id="ctl00_ContentPlaceHolder1_notice1_lbl_nDate"></span></td></tr>
                <tr><td height="3"></td></tr>
                <tr><td height="3" bgcolor="black"></td></tr>
                <tr><td height="3"></td></tr>
                <tr><td><span id="ctl00_ContentPlaceHolder1_notice1_lbl_nDesc"></span></td></tr>
                <tr><td height="5"></td></tr>
                <tr><td><br />
                <input type="checkbox" name="chk_nvew" />
                24시간 동안 보지 않겠습니다<br /><br /></td></tr>
            </table>

        </td>
        </tr>
    </table>

</td>
</tr>
</table>

</div>
  
    <!-- 공지사항 -->
    
    <script>
    function bk_view(idx)
    {      
        
        var obj = eval("document.all.ctl00_ContentPlaceHolder1_listTicket_ctl0" + idx + "_lbl_bklist")
        
        if(obj.style.display == "none")
            obj.style.display = ""
        else        
            obj.style.display = "none"
    }
    </script>
    

<input type="hidden" name="ctl00$ContentPlaceHolder1$hid_page" id="ctl00_ContentPlaceHolder1_hid_page" value="1" />


<div id="bible_article02">


<table class="bible_tb"  width="100%" cellpadding="0" cellspacing="0" align="center" >











<tr>
		<td class="bilbe_jul" style="text-align:left;font-size:20px"><img src="image/ico_pro.png" />&nbsp;<span id="ContentPlaceHolder1_rpt_aBible_lbl_jul_0"><span id="ctl00_ContentPlaceHolder1_listTicket_ctl01_lbl_prName">3개월</span></span>
		    &nbsp;<input type="submit" name="ctl00$ContentPlaceHolder1$listTicket$ctl01$btn_reserve" value="예약" id="ctl00_ContentPlaceHolder1_listTicket_ctl01_btn_reserve" class="btn_login" />
		    
		    
		</td>
	</tr>
	<tr>
		<td class="bilbe_bdesc" style="text-align:left;font-size:20px"><span id="ContentPlaceHolder1_rpt_aBible_lbl_bDesc_0">
		2021-06-17 ~ 2021-10-05 <span id="ctl00_ContentPlaceHolder1_listTicket_ctl01_lbl_stay"></span>
		<br />
		    결제일 :&nbsp;
		<span id="ctl00_ContentPlaceHolder1_listTicket_ctl01_lbl_accDate"></span>		
		<input type="hidden" name="ctl00$ContentPlaceHolder1$listTicket$ctl01$hid_prNum" id="ctl00_ContentPlaceHolder1_listTicket_ctl01_hid_prNum" value="22937" />
		<input type="hidden" name="ctl00$ContentPlaceHolder1$listTicket$ctl01$hid_tnum" id="ctl00_ContentPlaceHolder1_listTicket_ctl01_hid_tnum" value="6344797" />
		</span>
		<br />
			
	
	<span id="ctl00_ContentPlaceHolder1_listTicket_ctl01_lbl_bklist" style="display:none"></span>
		
		
		</td>
	</tr> 
	
	<tr>
		<td height="8"></td>
	</tr>

















</table>
</div>



  
      
      </div>
      
      </td>     
      </tr>
      <tr><td height="20">
      
      <div id="footerwrap"> 			
		<div class="copy">
		<br />
			<img src="/image/easyspo_logo.png" />
			<p>경기도 안산시 단원구 민속공원로90 진화빌딩 지하1층  T. 031-484-0970 <br />Copyright&copy;2018 IT-Friends. All right reserved.</p>
			<br /><br />
			<div class="icon_btn" style="display:none">
			<!--
			<a href="/config/catemake.aspx">코치HOME</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:odap_open1('a')">전체오답노트100</a>
			&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;<a href="/config/catemake.aspx">비밀번호변경</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
			<a id="ctl00_btn_logout_bottom" href="javascript:__doPostBack('ctl00$btn_logout_bottom','')">로그아웃</a>			
			
				<a href="/04/dmap.aspx"><img src="/image/icon_map.png" /></a>
				<a href="/04/dtime.aspx"><img src="/image/icon_dtime.png" /></a>
			    <img src="/image/icon_pc.png" />
				<a href="#"><img src="/image/icon_top.png" /></a>-->
			</div>
		</div>
	  </div><!--//footerwrap-->  
	  
	  
	  
      </td></tr>
      </table>
  
    </form>
</body>
</html>
