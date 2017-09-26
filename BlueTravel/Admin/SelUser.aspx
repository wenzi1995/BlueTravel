<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Main.Master" AutoEventWireup="true" CodeBehind="SelUser.aspx.cs" Inherits="BlueTravel.Admin.SelUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="result-wrap" >
         <h1>管理员</h1>
         <table class="result-tab" style="margin-top:100px; margin-left:100px">
             
                 <tr>
                     <th>管理员：</th>
                     <th>时间：</th>
                     <th>操作：</th>
                 </tr>
                 <asp:ListView ID="LVuser" runat="server" OnItemDeleting="LVuser_ItemDeleting1">
                     <ItemTemplate>
                         <tr>
                             <td><%# Eval("name") %></td>
                              <td><%# Eval("time") %></td>
                           <td><asp:LinkButton CssClass="link-del" runat="server" CommandName="Delete">删除</asp:LinkButton></td>

                         </tr>
                 </ItemTemplate>    
             </asp:ListView>
            
         </table>
       
     </div>
</asp:Content>
