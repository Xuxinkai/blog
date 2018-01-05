<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="login-bg">
<head>
	<title>粒米博客-后台管理</title>
    
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
    <!-- bootstrap -->
    <link href="css/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap/bootstrap-responsive.css" rel="stylesheet" />
    <link href="css/bootstrap/bootstrap-overrides.css" type="text/css" rel="stylesheet" />

    <!-- global styles -->
    <link rel="stylesheet" type="text/css" href="css/layout.css" />
    <link rel="stylesheet" type="text/css" href="css/elements.css" />
    <link rel="stylesheet" type="text/css" href="css/icons.css" />

    <!-- libraries -->
    <link rel="stylesheet" type="text/css" href="css/lib/font-awesome.css" />
    
    <!-- this page specific styles -->
    <link rel="stylesheet" href="css/compiled/signin.css" type="text/css" media="screen" />

    <!-- open sans font 
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css' />-->

    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>


    <!-- background switcher -->
    <div class="bg-switch visible-desktop">
        <div class="bgs">
            <a href="#" data-img="landscape.jpg" class="bg active">
                <img src="img/bgs/landscape.jpg" />
            </a>
            <a href="#" data-img="blueish.jpg" class="bg">
                <img src="img/bgs/blueish.jpg" />
            </a>            
            <a href="#" data-img="7.jpg" class="bg">
                <img src="img/bgs/7.jpg" />
            </a>
            <a href="#" data-img="8.jpg" class="bg">
                <img src="img/bgs/8.jpg" />
            </a>
            <a href="#" data-img="9.jpg" class="bg">
                <img src="img/bgs/9.jpg" />
            </a>
            <a href="#" data-img="10.jpg" class="bg">
                <img src="img/bgs/10.jpg" />
            </a>
            <a href="#" data-img="11.jpg" class="bg">
                <img src="img/bgs/11.jpg" />
            </a>
        </div>
    </div>

<!-- start 登陆框 -->
    <div class="row-fluid login-wrapper">
        <a href="#">
            <img class="logo" src="img/logo-white.png" />
        </a>
        <div class="span4 box">
            <div class="content-wrap">
                <h6>管理员登录</h6>
                <input class="span12" type="text" id='username' name='username' placeholder="用户名" />
                <input class="span12" type="password" id='pwd' name='pwd' placeholder="密码" />
                <a href="#" class="forgot">忘记密码?</a>
                <div class="remember">
                    <input id="remember-me" type="checkbox" />
                    <label for="remember-me">记住我</label>
                </div>
                <a class="btn-glow primary login" href="#" onclick="to_login();">登录</a>
            </div>
        </div>
    </div>
<!-- end 登陆框 -->
	<!-- scripts -->
    <script src="js/jquery-latest.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/theme.js"></script>

    <!-- pre load bg imgs -->
    <script type="text/javascript">
        $(function () {
            // bg switcher
            var $btns = $(".bg-switch .bg");
            $btns.click(function (e) {
                e.preventDefault();
                $btns.removeClass("active");
                $(this).addClass("active");
                var bg = $(this).data("img");

                $("html").css("background-image", "url('img/bgs/" + bg + "')");
            });

        });
    </script>   
    <script type="text/javascript">
    //登陆控制
    function to_login(){
    	var _username = $("#username").val();
    	var _pwd = $("#pwd").val();
    	if(_username != "" && _username != null && _pwd != null && _pwd != ""){
    		$.ajax({
                url:"${pageContext.request.contextPath}/bg/Signin",
                type:"post",
                data:{username:_username,pwd:_pwd},
                success:function(data){
                	if(data == "OK"){
                		//跳转到主页面，这里是一个Servlet
                		$(location).attr('href', 'bghome?pg=Index');
                	}else{
                		alert("用户名或者密码错误，请重新输入！");
                		$("#pwd").val("");
                	}
                },
                error:function(e){
                    alert("错误！！");
                    window.clearInterval(timer);
                }
            });
    	}else if(_username == "" || _username == null){
    		alert('请输入用户名');
    	}else if(_pwd == "" || _pwd == null){
    		alert('请输入密码');
    	}
    }
    
    
    </script>
</body>
</html>