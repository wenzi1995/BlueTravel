<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Main.Master" AutoEventWireup="true" CodeBehind="xgUser.aspx.cs" Inherits="BlueTravel.Admin.xgUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="admin_login_wrap" >
    <h1>修改密码</h1>
    <div class="adming_login_border" style="margin-left:100px; margin-top:80px;">
        <div class="admin_input">
            <form action="index.html" method="post">
                <ul class="admin_items">
                  
                    <li style="padding:8px 0;">
                        <label for="pwd">原始密码：</label>
                         <input type="password" name="pwd"  id="oldpwd" size="40" class="admin_input_style"  runat="server" clientidmode="Static" />
                     <li style="padding:8px 0;">
                        <label for="pwd">新&nbsp;&nbsp;密&nbsp;码：</label>
                  <input type="password" name="pwd" id="newspwd" size="40" class="admin_input_style"  runat="server" clientidmode="Static" />
                    <li style="padding:8px 100px;">
                        <input type="submit" tabindex="3" value="确认" class="btn btn-primary" runat="server" onserverclick="Unnamed_ServerClick1" />
                          <input type="submit" tabindex="3" value="取消" class="btn btn-primary"  onclick="history.go(-1)" />
                </ul>
            </form>
        </div>
    </div>
    <p class="admin_copyright"><a tabindex="5" href="index.aspx" target="_blank">返回首页</a> &copy; 2014 Powered by <a href="http://www.kzymw.com/" target="_blank"></a></p>
</div>

</asp:Content>
