<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="BlueTravel.News" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--content-->
		<div class="content clearfix">
        	<div class="leftbar">
            	<div class="leftnav">
                	    <h1>新闻分类</h1>
                       <ul class="ul_left">
                           <li><h3>旅游动态</h3></li>
         	           </ul>
                </div>
                <div class="left_lx">
                	    <h1>联系方式</h1>
                        <p>地址：南宁职业技术学院信息工程学院</p>
                        <p>联系人：王</p>
                        <p>电话：0771-333333</p>
                        <p>QQ：88888888</p>
                        <p>网址：http：//www.nanning.com</p>
                        <p>邮编：530001</p>
                </div>
             </div>
        	  <div class="rightbar">
            	     <div class="bread"><a href="/Index.aspx">首页</a> >最新动态</div>
	                     <ul class="ul_news"> 
                           <asp:Repeater ID="Repeater1" runat="server">
                                 <ItemTemplate>
                                     <li><a href="Newest.aspx?id=<%# Eval("id") %>"><%# Eval("title") %><span><%# Eval("time") %></span></a></li>
                                 </ItemTemplate>
                           </asp:Repeater>
                         </ul>     	    
                        <%--<li><a href="#">大数据:网友推荐暑期旅游热门景点排行榜<span></span></a></li>     
                        <li><a href="#">大数据:网友推荐暑期旅游热门景点排行榜<span></span></a></li>       
                        <li><a href="#">大数据:网友推荐暑期旅游热门景点排行榜<span></span></a></li>       
                        <li><a href="#">大数据:网友推荐暑期旅游热门景点排行榜<span></span></a></li> --%>   
               </div>
        </div>
		<!--content end--> 
</asp:Content>
