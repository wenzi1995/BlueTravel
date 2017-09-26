<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Main.Master" AutoEventWireup="true" CodeBehind="NewEdit.aspx.cs" Inherits="BlueTravel.Admin.NewEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font">
                 </i><a href="index.aspx">首页</a><span class="crumb-step">&gt;</span>
                <a class="crumb-name" href="NewList.aspx">新闻管理</a>
                <span class="crumb-step">&gt;</span><span><%=Request["action"]=="edit"? "编辑新闻" : "发布新闻" %></span></div>
        </div>
        <div class="result-wrap">
            <div class="result-content">
                    <table class="insert-tab" width="100%">
                        <tbody><tr>
                            <th width="120"><i class="require-red">*</i>栏目：</th>
                            <td>
                                <select name="colId" id="tipe" class="required" runat="server" ClientIDMode="Static">
                                    <option value="0">最新动态</option>
                                    <option value="1">新闻详情</option>
                                </select>
                            </td>
                        </tr>
                            <tr>
                                <th><i class="require-red">*</i>标题：</th>
                                <td>
                                    <input class="common-text required" id="title" name="title" size="50" type="text" runat="server" ClientIDMode="Static">
                                </td>
                            </tr> 
                            <tr>
                                <th>内容：</th>
                                <td><textarea name="content" class="common-textarea" id="content" style="width: 98%;" runat="server" ClientIDMode="Static"></textarea></td>
                            </tr>
                            <tr>
                                <th></th>
                                <td>
                                    <input class="btn btn-primary btn6 mr10" value="提交" type="submit" runat="server" onserverclick="Unnamed_ServerClick"/>
                                    <input class="btn btn6" onclick="history.go(-1)" value="返回" type="button"/>
                                </td>
                            </tr>
                        </tbody></table>
               
            </div>
        </div>
    <script src="ueditor/ueditor.config.js"></script>
    <script src="ueditor/ueditor.all.min.js"></script>
    <script>
       
            UE.getEditor("content");
        
    </script>
</asp:Content>
