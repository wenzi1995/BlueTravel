<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Main.Master" AutoEventWireup="true" CodeBehind="NewList.aspx.cs" Inherits="BlueTravel.Admin.NewList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="Index.aspx">首页</a><span class="crumb-step">&gt;</span>
                <span class="crumb-name">新闻管理</span>
                <span class="crumb-step">&gt;</span><span><%=Request["action"] == "edit" ? "编辑新闻" :"发布新闻"%></span>
            </div>
        </div>
        <div class="search-wrap">
            <div class="search-content">               
                    <table class="search-tab">
                        <tr>
                            <th width="120">选择栏目:</th>
                            <td>
                                <select name="search-sort" id="searchType" runat="server" ClientIDMode="Static">
                                    <option value="-1">全部</option>
                                    <option value="0">最新动态</option><option value="1">新闻详情</option>
                                </select>
                            </td>
                            <th width="70">标题:</th>
                            <td><input class="common-text" placeholder="标题" name="keywords" id="searchTitle" type="text" runat="server" ClientIDMode="Static"/></td>
                            <td><input class="btn btn-primary btn2" name="sub" value="查询" type="submit" runat="server" OnServerClick="Unnamed_ServerClick1"/></td>
                        </tr>
                    </table>             
                  </div>
               </div>
              <div class="result-wrap">   
                <div class="result-content">                           
                    <table class="result-tab" width="100%">
                        <tr>
                            <th>ID</th>
                            <th>标题</th>                        
                           
                           
                            <th>更新时间</th>                          
                            <th>操作</th>
                        </tr>
                        <asp:ListView ID="lvNewList" runat="server" OnItemEditing="lvNewList_ItemEditing" OnItemCanceling="lvNewList_ItemCanceling" OnItemUpdating="lvNewList_ItemUpdating" OnItemDeleting="lvNewList_ItemDeleting" >
                            <ItemTemplate>
                           <tr>            
                            <td><%# Eval("id") %></td>
                            <td><a target="_blank" href='/index.aspx?id=<%# Eval("id") %>'><%# Eval("title") %>"></a></td>
                            
                          
                            <td><%# Eval("time") %></td>                          
                            <td>
                                <asp:LinkButton  runat="server" CssClass="link-update" CommandName="Edit">编辑</asp:LinkButton>
                                <a href="NewEdit.aspx?action=edit&id=<%# Eval("id") %>" target="_blank">编辑详情</a>
                                <asp:LinkButton  runat="server" CssClass="link-del" CommandName="Delete">删除</asp:LinkButton>
                            </td>
                        </tr>
                            </ItemTemplate>

                            <EditItemTemplate>
                          <tr>            
                            <td><%# Eval("id") %></td>
                            <td><asp:TextBox ID="tbTitle" runat="server" Text='<%# Bind("title") %>'></asp:TextBox></td>  
                           <%-- <td><asp:TextBox ID="tbDianji" runat="server" Text='<%# Bind("hit") %>'></asp:TextBox></td>                                               
                            <td><asp:TextBox ID="tbType" runat="server" Text='<%# Bind("tipe") %>'></asp:TextBox></td>--%>
                             <td><asp:TextBox ID="tbNtime" runat="server" Text='<%# Bind("time") %>'></asp:TextBox></td>
                                                    
                            <td>
                                <asp:LinkButton  runat="server" CssClass="link-update" CommandName="Update">更新</asp:LinkButton>
                                <asp:LinkButton  runat="server" CssClass="link-del" CommandName="Cancel">取消</asp:LinkButton>
                            </td>
                        </tr>
                            </EditItemTemplate>
                            <EmptyDataTemplate>
                                <tr>
                                    <td colspan="6">表中没有数据,请查询</td>
                                </tr>
                            </EmptyDataTemplate>
                        </asp:ListView>                                  
                    </table>
                    <div class="list-page">  1/1 页</div>
                </div>      
        </div>

      
    
</asp:Content>
