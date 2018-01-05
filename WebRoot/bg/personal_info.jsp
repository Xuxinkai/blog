<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>用户信息修改</title>
    
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
    <link rel="stylesheet" href="css/compiled/personal-info.css" type="text/css" media="screen" />

    <!-- open sans font 
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css' />
-->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>

    <div class="content wide-content" style="margin-bottom:0px">
        <div class="container-fluid">
            <div class="settings-wrapper" id="pad-wrapper">
                <!-- avatar column -->
                <div class="span3 avatar-box">
                    <div class="personal-image">
                        <img src="../${userBean.icon_url }" class="avatar img-circle" style="width: 150px"/>
                        <p>Upload a different photo...</p>
                        
                        <input type="file" />
                    </div>
                </div>

                <!-- edit form column -->
                <div class="span7 personal-info">
                   
                    <h5 class="personal-title">个人信息</h5>

                    <form />
                        <div class="field-box">
                            <label>姓名:</label>
                            <input class="span5 inline-input" type="text" value="${userBean.realname }" />
                        </div>
                        <div class="field-box">
                            <label>性别:</label>
                            <input class="span5 inline-input" type="text" value="${userBean.sex }" />
                        </div>
                        <div class="field-box">
                            <label>出生日期:</label>
                            <input class="span5 inline-input" type="text" value="${userBean.birthday }" />
                        </div>
                        <div class="field-box">
                            <label>电话:</label>
                            <input class="span5 inline-input" type="text" value="${userBean.telnumber }" />
                        </div>
                        <div class="field-box">
                            <label>邮箱:</label>
                            <input class="span5 inline-input" type="text" value="${userBean.email }" />
                        </div>
                         <div class="field-box">
                            <label>出生地:</label>
                            <input class="span5 inline-input" type="text" value="${userBean.birthplace }" />
                        </div>
                        <div class="field-box">
                            <label>现在所在时区:</label>
                            <div class="ui-select">
                                <select id="user_time_zone" name="user[time_zone]">
                                    <option value="Hawaii" />(GMT-10:00) Hawaii
                                    <option value="Alaska" />(GMT-09:00) Alaska
                                    <option value="Pacific Time (US &amp; Canada)" />(GMT-08:00) Pacific Time (US &amp; Canada)
                                    <option value="Arizona" />(GMT-07:00) Arizona
                                    <option value="Mountain Time (US &amp; Canada)" />(GMT-07:00) Mountain Time (US &amp; Canada)
                                    <option value="Central Time (US &amp; Canada)" selected="selected" />(GMT-06:00) Central Time (US &amp; Canada)
                                    <option value="Eastern Time (US &amp; Canada)" />(GMT-05:00) Eastern Time (US &amp; Canada)
                                    <option value="Indiana (East)" />(GMT-05:00) Indiana (East)                                    
                                </select>
                            </div>
                        </div>
                         <div class="field-box">
                            <label>介绍:</label>
                            <textarea class="span5">${userBean.introduce }</textarea>
                        </div>
                        <div class="field-box">
                            <label>登陆名:</label>
                            <input class="span5 inline-input" type="text" value="${userBean.loginname }"" />
                        </div>
                        <div class="field-box">
                            <label>密码:</label>
                            <input class="span5 inline-input" type="password" value="${userBean.password }" />
                        </div>
                        <div class="field-box">
                            <label>确认密码:</label>
                            <input class="span5 inline-input" type="password" />
                        </div>
                        <div class="span6 field-box actions">
                            <input type="button" class="btn-glow primary" value="Save Changes" />
                            <span>OR</span>
                            <input type="reset" value="Cancel" class="reset" />
                        </div>
                    </form>
                </div>
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