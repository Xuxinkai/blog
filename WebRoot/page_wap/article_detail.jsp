<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<title>${article.title}-粒米博客</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Cache-Control" content="no-cache" />
<!--只是或者请求的消息不能缓存-->
<meta name="viewport" content="width=device-width" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<!--强制让文档与设备的宽度保持 1:1 ；
    文档最大的宽度比列是1.0（ initial-scale 初始刻度值和 maximum-scale 最大刻度值）；user-scalable 定义用户是否可以手动缩放（ no 为不缩放），使页面固定设备上面的大小；-->
<meta name="apple-mobile-web-app-capable" content="yes" />
<!--网站开启对 web app 程序的支持-->
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<!--（改变顶部状态条的颜色）-->
<link href="css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/modernizr.custom.js"></script>
<script type="text/javascript" src="js/jquery.dlmenu.js"></script>
<script src="js/jquery.min.js"></script>
<script src='js/hhSwipe.js' type="text/javascript"></script>
</head>
<body>
	<div class="wrap_box">
		<!--头部部分开始-->
		<jsp:include page="header.jsp"></jsp:include>
		<!--头部部分结束-->

		<!---内容开始-->
		<ul class="cgal_list">
			<li class="show_box1">
				<h1 class="show_box1_title">${article.title}</h1>
				<div class="cgal_list_text1">${article.content}</div>
			</li>
			<hr style="width: 98%; margin-left: auto; margin-right: auto" />
			<!--隐藏部分-->
			<li class="hidden_box2">
				<ul>
					<li class="show_box1">
						<p>评论：</p>
						<form action="" method="post" class="ly_box" id="comment_form">
							<div class="ly_text">
								<p>你的大名：</p>
								<p>评论内容：</p>
							</div>
							<div class="ly_input">
								<input type="text" name="comment_user" id="comment_user"/>
								<input type="hidden" name="aid" id="aid" value="${article.aid}"/>
								<textarea class="ly_content" name="comment_content" id="comment_content"></textarea>
								<button type="button" onclick="to_comment()">提交</button>
							</div>
						</form>
						<hr style="width: 98%; margin-left: auto; margin-right: auto" />
						<div>
						<p>最新的评论：</p>
						<ul class="lxwm_box_text">
						<span id = "addedcomment"></span>
							<c:forEach items="${ACList }" var="comment">
					       <li> <img src="images/liuyan_icon.png"/><p>[${comment.cuser }(${comment.ctime})]：${comment.content }</p></li>
					       </c:forEach>
					   </ul>
						</div>
					</li>
				</ul>
			</li>
			<!--隐藏部分结束-->
			<li id="more_but" onclick="javascript:this.innerHTML=(this.innerHTML=='评论文章'?'收起评论':'评论文章');">评论文章</li>
			<script>
				$("#more_but").click(function() {
					$(".hidden_box2").slideToggle(1000);
				});
			</script>
		</ul>
		<!--内容结束-->
		<!--页尾开始-->
		<!-- start footer 
<jsp:include page="footer.jsp"></jsp:include>
-->
		<!-- end footer -->
		<!--页尾结束-->
	</div>
<script type="text/javascript">
function currentTime(){
	var d = new Date(),str = '';
	 str += d.getFullYear()+'-';
	 str  += d.getMonth() + 1+'-';
	 str  += d.getDate()+' ';
	 str += d.getHours()+':'; 
	 str  += d.getMinutes()+':'; 
	str+= d.getSeconds(); 
	return str;
}
function to_comment(){
	var user = $("#comment_user").val();
	var content = $("#comment_content").val();
	if(user != '' && user != null && content !='' && content != null){
		$.ajax({
            url:"${pageContext.request.contextPath}/page/article_comment",
            type:"post",
            data:$('#comment_form').serialize(),
            success:function(data){
            	//清除字段值
                $("#comment_user").val('');
                $("#comment_content").val('');
                $("#addedcomment").html('<li> <img src=\"images/liuyan_icon.png\"/><p>['+user+'('+currentTime()+')]：'+content+'</p></li>');
                alert("评论成功");
                window.clearInterval(timer);
            },
            error:function(e){
                alert("错误！！");
                window.clearInterval(timer);
            }
        });
		
	}else if(user == '' || user == null){
		alert("请输入你的大名！");
	}else if(content =='' || content == null){
		alert("请输入评论的内容！");
	}
	
}
</script>
</body>
</html>