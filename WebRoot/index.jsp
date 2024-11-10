<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312" %>
 
<%@ include file="iframe/head.jsp" %> 

<div class="blank"></div>
<div class="flash">
  <div class="flexslider">
	<ul class="slides">
<SCRIPT type=text/javascript>
var imgUrl = new Array();
var imgtext = new Array();
var imgLink = new Array();

imgUrl[0]='pic/roll/1.jpg';
imgLink[0]='';
imgtext[0]='';

imgUrl[1]='pic/roll/2.jpg';
imgLink[1]='';
imgtext[1]='';

imgUrl[2]='pic/roll/3.jpg';
imgLink[2]='';
imgtext[2]='';

imgUrl[3]='pic/roll/4.jpg';
imgLink[3]='';
imgtext[3]='';


				

var pics=imgUrl[0];
var links=imgLink[0];
var texts=imgtext[0];
for(var i=1;i<imgUrl.length;i++){
	pics+='|'+imgUrl[i];
	links+='|'+imgLink[i];
	texts+='|'+imgtext[i];
}

var focus_width=980
var focus_height=250
var text_height=22
var swf_height = focus_height+text_height

document.write('<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" width="'+ focus_width +'" height="'+ swf_height +'">');
document.write('<param name="allowScriptAccess" value="sameDomain" /><param name="movie" value="<%=basePath%>images/rollpic.swf" /><param name="quality" value="high" /><param name="bgcolor" value="#F0F0F0">');
document.write('<param name="menu" value="false"><param name=wmode value="opaque">');
document.write('<param name="FlashVars" value="pics='+pics+'&links='+links+'&texts='+texts+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'">');
document.write('<embed src="<%=basePath%>images/rollpic.swf" wmode="opaque" FlashVars="pics='+pics+'&links='+links+'&texts='+texts+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'" menu="false" bgcolor="#F0F0F0" quality="high" width="'+ focus_width +'" height="'+ focus_height +'" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />');
document.write('</object>');

</SCRIPT>
	</ul> 
</div>
</div>
<div class="blank"></div>	
<div class="main">
 <div class="m-rightxx">
    <div class="location">
        <h2><p>±¨¿¯ÐÅÏ¢</p></h2>
      </div>
  <div class="blank"></div>
  <div class="cr-imglist">
        <ul>
<%   
	List pagelist3 = cb.getCom("select * from cp order by id desc limit 8",7); 
		if(!pagelist3.isEmpty()){
		for(int i=0;i<pagelist3.size();i++){
			List pagelist2 =(ArrayList)pagelist3.get(i);
%>           
      <li>
            <p><a href="<%=basePath%>cpinfo.jsp?id=<%=pagelist2.get(0).toString()%>"><img src="<%=basePath+pagelist2.get(6).toString()%>"/></a></p>
            <h3><a href="<%=basePath%>cpinfo.jsp?id=<%=pagelist2.get(0).toString()%>"><%=pagelist2.get(1).toString() %></a></h3>
      </li>
<%}} %> 
    </ul>
        <div class="clear"></div>
      </div>
  <div class="blank"></div> 
</div>
    <div class="clear"></div>
</div>


<div class="clear"></div>
</div>
 
<%@ include file="iframe/foot.jsp" %>