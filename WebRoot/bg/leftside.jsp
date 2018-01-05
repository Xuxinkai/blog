<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
 <div id="sidebar-nav">
        <ul id="dashboard-menu">
            <li>
                
                <a href="bghome?pg=Index">
                    <i class="icon-home"></i>
                    <span>主页</span>
                </a>
            </li>  
            <li  class="active">
            
            <div class="pointer">
                    <div class="arrow"></div>
                    <div class="arrow_border"></div>
                </div>
                
                <a class="dropdown-toggle" href="#">
                    <i class="icon-group"></i>
                    <span>用户管理</span>
                    <i class="icon-chevron-down"></i>
                </a>
                <ul class="active submenu">
                    <li><a href="bghome?pg=user_list"  class="active">用户列表</a></li>
                    <li><a href="new-user.html">添加新用户</a></li>
                    
                </ul>
            </li>
            <li>
                <a class="dropdown-toggle" href="#">
                    <i class="icon-edit"></i>
                    <span>文章管理</span>
                    <i class="icon-chevron-down"></i>
                </a>
                <ul class="submenu">
                	<li><a href="form-showcase.html">文章分类</a></li>
                    <li><a href="form-showcase.html">添加文章</a></li>
                </ul>
            </li>
            <li>
                <a class="dropdown-toggle" href="#">
                    <i class="icon-picture"></i>
                    <span>相册管理</span>
                    <i class="icon-chevron-down"></i>
                </a>
                <ul class="submenu">
                	<li><a href="form-showcase.html">相册分类</a></li>
                    <li><a href="form-showcase.html">添加照片</a></li>
                </ul>
            </li>
           
           
            <li>
                <a class="dropdown-toggle" href="#">
                    <i class="icon-th-large"></i>
                    <span>系统设置</span>
                    <i class="icon-chevron-down"></i>
                </a>
                <ul class="submenu">
                    <li><a href="code-editor.html">访问浏览</a></li>
                    <li><a href="grids.html">Grids</a></li>
                    <li><a href="signin.html">Sign in</a></li>
                    <li><a href="signup.html">Sign up</a></li>
                </ul>
            </li>
        </ul>
    </div>