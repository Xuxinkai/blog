<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
    <link rel="stylesheet" type="text/css" href="css/lib/font-awesome.css" />
    
    <!-- this page specific styles -->
    <link rel="stylesheet" href="css/compiled/new-user.css" type="text/css" media="screen" />

    <!-- open sans font 
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css' />
-->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    
<SCRIPT LANGUAGE="JavaScript">  
function setImagePreview(docObj,localImagId,imgObjPreview)     
    {    
          
        var name=docObj.value;  
        var type=name.split(".");  
        type=type[type.length-1];  
        if("jpg"!=type &&"png"!=type &&"jpeg"!=type&&"gif"!=type){  
            alert("错误的类型，请选择图片");  
            document.getElementById("txtSrc").value=null;//防止将非图片类型上传  
            return ;  
        }  
          
        if(docObj.files && docObj.files[0])    
        {    
  
            //alert("hello"+docObj.files[0]);  
            //火狐7以上版本不能用上面的getAsDataURL()方式获取，需要一下方式      
            document.getElementById("imgDiv").style.display="block";  
            document.getElementById("img").src= window.URL.createObjectURL(docObj.files[0]);    
        }    
        else    
        {    
            //IE下，使用滤镜    
            docObj.select();    
            var imgSrc = document.selection.createRange().text;    
                
            //必须设置初始大小    
            localImagId.style.width = "300px";    
            localImagId.style.height = "200px";    
                
            //图片异常的捕捉，防止用户修改后缀来伪造图片    
            try    
            {    
                localImagId.style.filter="progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";    
                localImagId.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc;    
             }    
             catch(e)    
             {    
                alert("您上传的图片格式不正确，请重新选择!");    
                return false;    
             }                              
             imgObjPreview.style.display = 'none';    
             document.selection.empty();    
       }    
       return true;    
   }   
</SCript> 
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
        <div class="container-fluid">
            <div id="pad-wrapper" class="new-user">
                <div class="row-fluid header">
                    <h3>新建管理员</h3>
                </div>

                <div class="row-fluid form-wrapper">
                    <!-- left column -->
                    <div class="span9 with-sidebar">
                        <div class="container">
                            <form class="new_user_form inline-input" method="post" enctype="multipart/form-data" name="frm_test"/>
                                <div class="span3 avatar-box">
				                    <div class="personal-image">
				                    <div  align="center" id="imgDiv">
				                        <img src="../${userBean.icon_url }" class="avatar img-circle" style="width: 150px" id="img"/>
				                        </div>
				                        <p>Upload a different photo...</p>
				                        <input type="file" name="logo" data-validate="required:请选择上传文件,regexp#.+.(jpg|jpeg|png|gif)$:只能上传jpg|gif|png格式文件"  onChange="setImagePreview(this,imgDiv,img);"/>
				                    </div>
				                </div>
                                <div class="span12 field-box">
                                    <label>登录名:</label>
                                    <input class="span9" type="text" />
                                </div>
                                
                                <div class="span12 field-box">
                                    <label>密码:</label>
                                    <input class="span9" type="password" />
                                </div>
                                <div class="span12 field-box">
                                    <label>确认密码:</label>
                                    <input class="span9" type="password" />
                                </div>
                                <div class="span12 field-box">
                                    <label>真实姓名:</label>
                                    <input class="span9" type="text" />
                                </div>
                                <div class="span12 field-box">
                                    <label>性别:</label>
                                    <input class="span9" type="text" />
                                </div>
                                <div class="span12 field-box">
                                    <label>出生日期:</label>
                                    <input class="span9" type="text" />
                                </div>
                                <div class="span12 field-box">
                                    <label>邮箱:</label>
                                    <input class="span9" type="text" />
                                </div>
                                <div class="span12 field-box">
                                    <label>电话:</label>
                                    <input class="span9" type="text" />
                                </div>
                                <div class="span12 field-box">
                                    <label>出生地:</label>
                                    <div class="address-fields">
                                        <input class="span12 small" type="text" placeholder="国籍" />
                                        <input class="span12 small" type="text" placeholder="省份" />
                                        <input class="span12 small last" type="text" placeholder="市" />
                                        <input class="span12" type="text" placeholder="县，镇，村，街道" />
                                    </div>
                                </div>
                                <div class="span12 field-box">
                                    <label>居住地:</label>
                                    <div class="address-fields">
                                    	<input class="span12 small" type="text" placeholder="国籍" />
                                        <input class="span12 small" type="text" placeholder="省份" />
                                        <input class="span12 small last" type="text" placeholder="市" />
                                        <input class="span12" type="text" placeholder="县，镇，村，街道" />
                                        
                                    </div>
                                </div>
                                <div class="span12 field-box textarea">
                                    <label>介绍:</label>
                                    <textarea class="span9"></textarea>
                                    <span class="charactersleft">字段限制为100个字符</span>
                                </div>
                                 
                                <div class="span11 field-box actions">
                                    <input type="button" class="btn-glow primary" value="Create user" />
                                    <span>OR</span>
                                    <input type="reset" value="Cancel" class="reset" />
                                </div>
                            </form>
                        </div>
                    </div>

                    <!-- side right column -->
                    <div class="span3 form-sidebar pull-right">
                        <div class="btn-group toggle-inputs hidden-tablet">
                            <button class="glow left active" data-input="inline">INLINE INPUTS</button>
                            <button class="glow right" data-input="normal">NORMAL INPUTS</button>
                        </div>
                        <div class="alert alert-info hidden-tablet">
                            <i class="icon-lightbulb pull-left"></i>
                         	  单击上面，可以看到表单内的内联和正常输入之间的差异
                        </div>                        
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end main container -->


	<!-- scripts -->
    <script src="js/jquery-latest.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/theme.js"></script>

    <script type="text/javascript">
        $(function () {

            // toggle form between inline and normal inputs
            var $buttons = $(".toggle-inputs button");
            var $form = $("form.new_user_form");

            $buttons.click(function () {
                var mode = $(this).data("input");
                $buttons.removeClass("active");
                $(this).addClass("active");

                if (mode === "inline") {
                    $form.addClass("inline-input");
                } else {
                    $form.removeClass("inline-input");
                }
            });
        });
    </script>
</body>
</html>