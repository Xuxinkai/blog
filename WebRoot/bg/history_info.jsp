<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>用户登录历史</title>
    
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
    <link rel="stylesheet" href="css/compiled/tables.css" type="text/css" media="screen" />

    <!-- open sans font
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css' />
 -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>


	<!-- main container -->
    <div class="content" style="margin-left: 0px;margin-bottom:0px">
        
        <div class="container-fluid">
            <div id="pad-wrapper">
                
                <!-- orders table -->
                <div class="table-wrapper orders-table section" style="margin-bottom: 0px">
                    <div class="row-fluid head">
                        <div class="span12">
                            <h4>${user.realname }</h4>
                        </div>
                    </div>
				
                    <div class="row-fluid">
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th class="span3">
                                        	登录时间
                                    </th>
                                    <th class="span2">
                                        	登录IP
                                    </th>
                                    <th class="span3">
                                        <span class="line"></span>
                                        	物理IP
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <!-- row -->
                                <c:forEach items="${lhs }" var="lh">
                                <tr>
                                    <td>
                                        ${lh.loginTime }
                                    </td>
                                    <td>
                                        ${lh.loginIp }
                                    </td>
                                    <td>
                                        ${lh.visitaddr }
                                    </td>
                                </tr>
                               </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- end orders table -->

            </div>
        </div>
    </div>
    <!-- end main container -->

	<!-- scripts -->
    <script src="js/jquery-latest.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/theme.js"></script>
</body>
</html>