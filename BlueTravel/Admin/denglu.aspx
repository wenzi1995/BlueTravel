<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="denglu.aspx.cs" Inherits="BlueTravel.Admin.denglu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/b_login.css"/>

    <title>后台管理登录系统</title>
</head>
<body>
    <form id="form1" runat="server" class="form-horizontal">
    <div class="login">
	  <div class="loginmain">
		   <h2>登录管理系统</h2>
		           <!-- 让表单在一行中显示form-horizontal -->
		          <div class="form-group">
		              <label for="username" class="col-lg-1 control-label">用户名</label>
		              <div class="col-lg-4">
		                  <input type="text" name="username" id="user" class="form-control" runat="server" ClientIDModel="Static"/>
		              </div>              
		          </div>
				  <div class="form-group"></div>
				  <div class="form-group"></div>
		          <div class="form-group">
		              <label for="password" class="col-lg-1 control-label">密&nbsp;&nbsp;&nbsp;&nbsp;码</label>
		              <div class="col-lg-4">
		                 <input type="password" name="password" id="pwd" class="form-control" runat="server" ClientIDModel="Static"/>
		              </div>              
		          </div>
                   <div class="form-group"></div>
                   <!-- <div class="form-group"></div> -->
		         <%-- <div class="form-group">
		            <div class="col-lg-11 col-lg-offset-1">              
		                <span class="checkbox ">
		                    <label><input type="checkbox" name="" class="checkbox-inline"/>记住我</label> 
		                </span>           
		            </div>
		          </div>--%>

		          <div class="form-group">
		            <div class="col-lg-4 col-lg-offset-1">
		                <input type="button" name="button" value="登录" class="btn btn-danger btn-lg" runat="server" onserverclick="Unnamed_ServerClick"/>
		                <span class="text"></span>              
		            </div>
		          </div>
      </div>
	            <div class="rightpic">
		            <div id="container">
			            <!-- <img src="picture/1.jpg" alt="" width="500px" height="330px"> -->
		            </div>
	            </div>
  </div>

<script src="public/js/jquery-3.1.1.min.js"></script>
<script src="public/js/bootstrap.min.js"></script>
<script src="public/js/delaunay.js"></script>
<script src="public/js/TweenMax.js"></script>
<script src="js/effect.js"></script>

<script src="js/b_login.js"></script>	
    </form>
</body>
</html>
