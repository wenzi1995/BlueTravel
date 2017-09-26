<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BlueTravel.Admin.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>后台管理系统-登录</title>
     <link href="assets/css/admin_login.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="admin_login_wrap">
    <h1>后台管理</h1>
    <div class="adming_login_border">
        <div class="admin_input">
            
                <ul class="admin_items">
                    <li>
                        <label for="user">用户名：</label>
                        <input type="text" name="username"  id="user" size="40" class="admin_input_style" runat="server" ClientIDMode="Static" />
                    </li>
                    <li>
                        <label for="pwd">密码：</label>
                        <input type="password" name="pwd"  id="pwd" size="40" class="admin_input_style" runat="server" ClientIDMode="Static" />
                    </li>
                    <li>
                        <input type="submit" tabindex="3" value="登录" class="btn btn-primary" runat="server" onserverclick="Unnamed_ServerClick1" />
                    </li>
                </ul>
            
        </div>
    </div>
    <p class="admin_copyright"><a tabindex="5" href="index.aspx" target="_blank">返回首页</a> &copy; 2017 Powered by 信阳职业技术学院</p>
</div>
    </form>
</body>
</html>
