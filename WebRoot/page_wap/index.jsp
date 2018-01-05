<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
    <title>粒米博客</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Cache-Control" content="no-cache" /><!--只是或者请求的消息不能缓存-->
    <meta name="viewport" content="width=device-width" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" /><!--强制让文档与设备的宽度保持 1:1 ；
    文档最大的宽度比列是1.0（ initial-scale 初始刻度值和 maximum-scale 最大刻度值）；user-scalable 定义用户是否可以手动缩放（ no 为不缩放），使页面固定设备上面的大小；-->
    <meta name="apple-mobile-web-app-capable" content="yes" /><!--网站开启对 web app 程序的支持-->
    <meta name="apple-mobile-web-app-status-bar-style" content="black" /><!--（改变顶部状态条的颜色）-->
    <link href="css/style.css" rel="stylesheet" type="text/css">  
	<script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/modernizr.custom.js"></script>
    <script type="text/javascript" src="js/jquery.dlmenu.js"></script>
    <script src='js/hhSwipe.js' type="text/javascript"></script> 
</head>
<body>
<div class="wrap_box">
<!--头部部分开始-->
<jsp:include page="header.jsp"></jsp:include>
<!--头部部分结束-->     
<!--banner图开始-->     
<div class="addWrap">
       <div class="swipe" id="mySwipe">
             <div class="swipe-wrap">
             	  <c:forEach items="${imgList}" var="img">
                  <div><a href="../${img.imgurl }" target="_blanck"><img class="img-responsive" src="../${img.imgurl }" style="width: 100%;height: 250px"/></a></div>
                  </c:forEach>
             </div>
            </div>
	      <!--按转换按钮开始-->
            <ul id="position">
                   <li class="cur"></li>
                   <li></li>
                   <li></li>
            </ul>
          <!--按转换按钮结束-->  
</div>
<script type="text/javascript">
	var bullets = document.getElementById('position').getElementsByTagName('li');
	var banner = Swipe(document.getElementById('mySwipe'), {
		auto: 4000,
		continuous: true,
		disableScroll:false,
		callback: function(pos) {
			var i = bullets.length;
			while (i--) {
				bullets[i].className = ' ';
			}
			bullets[pos].className = 'cur';
		}
     })
</script>
<!--banner结束-->
<div id="xiangce" style="height: 150px">
<ul class="obj_box">
	<c:forEach items="${albumList }" var="album" begin="0" end="2">
    <li class="leftIn">
       <a href=""><img src="images/album_icon.png"/></a>
       <h1>${album.alname }</h1>
       <P>${album.aldesc }</P>
    </li>
    </c:forEach>
   <li class="leftIn">
       <a href=""><img src="images/more_icon.png"/></a>
       <h1>更多</h1>
       <P>点击查看更多相册</P>
    </li>
</ul>
</div>
<hr style="width: 90%;margin-left: auto;margin-right: auto"/>
<div id="articleType" style="height: 150px">
<ul class="obj_box">
    <c:forEach items="${atList }" var="at" begin="0" end="2">
    <li class="rightIn">
       <a href=""><img src="images/articleType_icon.png"/></a>
       <h1>${at.tname }</h1>
       <P>${at.tdesc }</P>
    </li>
     </c:forEach>
     <li class="rightIn">
       <a href=""><img src="images/more_icon.png"/></a>
       <h1>更多</h1>
       <P>点击查看更多博文分类</P>
    </li>
</ul>
</div>
<hr style="width: 90%;margin-left: auto;margin-right: auto"/>

<div id="Article_TuiJian" class="obj_box2 leftIn">
<ul class="news_box">
	<c:forEach  begin="0" end="4" items="${articList}" var="art">
   <li class="news_show"><a href="article_detail?article_id=${art.aid }">[${art.tid }]《${art.title }》[${art.time}]</a></li>	
   </c:forEach>
   <!--隐藏部分-->
   <div class="hidden_box3">
   <c:forEach  begin="5" end="11" items="${articList}" var="art">
   <li class="news_show"><a href="article_detail?article_id=${art.aid }">[${art.tid }]《${art.title }》[${art.time}]</a></li>
   </c:forEach>
   </div>
   <!--隐藏部分结束-->
   <li id="more_but" onclick="javascript:this.innerHTML=(this.innerHTML=='显示更多'?'收起':'显示更多');">显示更多</li>
    <script>
      $("#more_but").click(function(){
		   $(".hidden_box3").slideToggle(1000);
	  });
   </script>
</ul>
</div>
<!-- start footer 
<jsp:include page="footer.jsp"></jsp:include>
-->
<!-- end footer -->
</div>
</body>
</html>
