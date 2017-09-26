<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Main.Master" AutoEventWireup="true" CodeBehind="AddUser.aspx.cs" Inherits="BlueTravel.Admin.AddUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="admin_login_wrap"">

    <h1>添加管理员</h1>
    <div class="admin_Adduser_border"  style="margin-left:100px; margin-top:80px;>
        <div class="admin_input">
                <ul class="admin_items">
                   <li style="padding:8px 0;">
                        <label for="user">用户名：</label>                    
                        <input type="text" name="username" id="user" size="40" class="admin_input_style" runat="server" ClientIDMode="Static" />
                       </li>
                        <li style="padding:8px 0;">       
                           <label for="pwd">密&nbsp;&nbsp;&nbsp;码：</label>
                           <input type="password" name="pwd" id="pwd" size="40" class="admin_input_style" runat="server" ClientIDMode="Static" />
                        </li>
                        <li style="padding:8px 100px;"><input type="submit" tabindex="3" value="添加" class="btn btn-primary" runat="server"  onserverclick="Unnamed_ServerClick1" /></li>
              </ul>
    </div>
    <p class="admin_copyright"><a tabindex="5" href="SelUser.aspx" target="_blank">返回管理员列表</a></p>
</div>

</asp:Content>
