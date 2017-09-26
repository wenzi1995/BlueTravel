<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Main.Master" AutoEventWireup="true" CodeBehind="Indexs.aspx.cs" Inherits="BlueTravel.Admin.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font">&#xe06b;</i><span>欢迎【<%= Session["UserName"] %>】使用『文子』后台管理系统！</span></div>
        </div>
        <div class="result-wrap">
            <div class="result-title">
                <h1>快捷操作</h1>
            </div>
            <div class="result-content">
                <div class="short-wrap">
                    <a href="NewEdit.aspx"><i class="icon-font">&#xe001;</i>发布新闻</a>
                </div>
            </div>
        </div>
        <div class="result-wrap">
            <div class="result-title">
                <h1>系统基本信息</h1>
            </div>
            <div class="result-content">
                <ul class="sys-info-list">
                    <li>
                        <label class="res-lab">操作系统</label><span class="res-info"><%=Environment.OSVersion.ToString() %></span>
                    </li>
                    <li>
                        <label class="res-lab">运行环境</label><span class="res-info"><%=Request.ServerVariables["SERVER_SOFTWARE"] %></span>
                    </li>
                    <li>
                        <label class="res-lab">运行方式</label><span class="res-info">.NET　CLR<%=Environment.Version.Major.ToString() %></span>
                    </li>
                    <li>
                        <label class="res-lab">后台版本</label><span class="res-info">v-0.1</span>
                    </li>
                    <li>
                        <label class="res-lab">上传附件限制</label><span class="res-info">2M</span>
                    </li>
                    <li>
                        <label class="res-lab">北京时间</label><span class="res-info"><%=DateTime.Now %></span>
                    </li>
                    <li>
                        <label class="res-lab">服务器域名/IP</label><span class="res-info"><%=Request.ServerVariables["SERVER_NAME"] %> [127.0.0.1]</span>
                    </li>
                    <li>
                        <label class="res-lab">Host</label><span class="res-info"><%=Request.ServerVariables["HTTP_HOST"] %></span>
                    </li>
                </ul>
            </div>
        </div>
       
</asp:Content>
