<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
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
    <link href="css/lib/font-awesome.css" type="text/css" rel="stylesheet" />
    
    <!-- this page specific styles -->
    <link rel="stylesheet" href="css/compiled/user-list.css" type="text/css" media="screen" />

    <!-- open sans font
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css' />
 -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>

    <!-- navbar -->
   <jsp:include page="header.jsp"></jsp:include>
    <!-- end navbar -->

    <!-- sidebar -->
   <jsp:include page="leftside.jsp"></jsp:include>
    <!-- end sidebar -->
    

	<!-- main container -->
    <div class="content">
        
        <!-- settings changer -->
       
        
        <div class="container-fluid">
            <div id="pad-wrapper" class="users-list">
                <div class="row-fluid header">
                    <h3>用户</h3>
                    <div class="span10 pull-right">
                        <input type="text" class="span5 search" placeholder="输入用户名..." />
                        
                        <!-- custom popup filter -->
                        <!-- styles are located in css/elements.css -->
                        <!-- script that enables this dropdown is located in js/theme.js -->
                        

                        <a href="bghome?pg=new_user" class="btn-flat success pull-right">
                            <span>&#43;</span>
                          	  新增用户
                        </a>
                    </div>
                </div>

                <!-- Users table -->
                <div class="row-fluid table">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th class="span4 sortable">
                                    	用户名
                                </th>
                                <th class="span3 sortable">
                                    <span class="line"></span>邮箱
                                </th>
                                <th class="span3 sortable">
                                    <span class="line"></span>电话
                                </th>
                                <th class="span3 sortable">
                                    <span class="line"></span>注册时间
                                </th>
                                <th class="span3 sortable">
                                    <span class="line"></span>最后登录时间
                                </th>
                                <th class="span2 sortable">
                                    <span class="line"></span>操作
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                        <!-- row -->
                        <c:forEach items="${listUserBean }" var="user">
                        <tr class="first">
                            <td>
                                <img src="../${user.icon_url }" class="img-circle avatar hidden-phone" />
                                <a href="#" onclick="popwindow('personal_info?userId=${user.userid }');" class="name">${user.realname }</a>
                                <span class="subtext">${user.introduce }</span>
                            </td>
                            <td>
                                ${user.email }
                            </td>
                            <td>
                                ${user.telnumber }
                            </td>
                            <td>
                                ${user.lastlogintime }
                            </td>
                            <td>
                                ${user.lastlogintime }
                            </td>
                            <td class="align-right">
                                <a href="#" class="btn-glow primary" onclick="popwindow('personal_info?userId=${user.userid }');">修改用户信息</a><br>
                                <a href="#" class="btn-glow primary" onclick="popwindow('history_info?userId=${user.userid }')">查看登录历史</a>
                            </td>
                        </tr>
                        </c:forEach>
                        <!--end row -->
                        </tbody>
                    </table>
                </div>
                <!-- end users table -->
            </div>
        </div>
    </div>
    <!-- end main container -->


	<!-- scripts -->
    <script src="js/jquery-latest.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/theme.js"></script>
    <script type="text/javascript">
    function popwindow(url){
    	var iWidth=window.screen.width/2; //弹出窗口的宽度;
    	var iHeight=window.screen.height/2; //弹出窗口的高度;
    	//window.screen.height获得屏幕的高，window.screen.width获得屏幕的宽
    	var iTop = (window.screen.height-30-iHeight)/2; //获得窗口的垂直位置;
    	var iLeft = (window.screen.width-10-iWidth)/2; //获得窗口的水平位置;

    	var winObj = window.open(url, '用户信息修改','height='+iHeight+',innerHeight='+iHeight+',width='+iWidth+',innerWidth='+iWidth+',top='+iTop+',left='+iLeft+',toolbar=no,menubar=no,scrollbars=yes,z-look=no,resizeable=no,location=no,status=no');
    	var loop = setInterval(function() {       
    	        if(winObj.closed) {      
    	            clearInterval(loop);      
    	            //alert('closed');      
    	            parent.location.reload();   
    	        }      
    	    }, 1);  
    }
    
    </script>
</body>
</html>