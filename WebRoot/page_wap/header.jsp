<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="nav_box">
	<a class="back_but" href="home"><img src="images/home_icon2.png" /></a>
	<p class="nav_title">${title}</P>
	<div class="menu">
		<!--<img class="menu_but" src="images/menu_icon.png"/>-->
		<div id="dl-menu" class="dl-menuwrapper">
			<button id="dl-menu-button">Open Menu</button>
			<ul class="dl-menu">
				<li><a href="home">首页</a></li>
				<li><a href="gyhq.jsp">博文分类</a></li>
				<li><a href="ywjs.jsp">相册预览</a></li>
				<li><a href="lyb.jsp">留言板</a></li>
				<li><a href="lxwm.jsp">关于我</a></li>
			</ul>
		</div>
		<script type="text/javascript">
        $(function(){
            $( '#dl-menu' ).dlmenu();
        });
        </script>
	</div>
</div>