<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Newest.aspx.cs" Inherits="BlueTravel.Newest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!--content开始-->
		<div class="content clearfix">
        	<div class="leftbar">
            	<div class="leftnav">
                	<h1>新闻分类</h1>
                	<ul class="ul_left">
                        <li><h3>最新动态</h3></li> 
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
            	<div class="bread"><a href="/Index.aspx">首页</a>><a href="News.aspx">  最新动态</a>>详细内容</div>    
            	  <div class="con_news">
                         <asp:Repeater ID="Repeater1" runat="server" ClientIDMode="Static">
                             <ItemTemplate>
                                 <p class="p_tit2">
                    	             <span><%# Eval("title") %></span>
                                     发布人：管理员  &nbsp;&nbsp;   发布时间：<%# Eval("time") %>
                                 </p>
                	            <div class="con">  
                                      <span><%# Eval("contents") %></span> 
                                </div>   
                            </ItemTemplate>     
                          </asp:Repeater>   
                   </div>
             </div>                       
      </div>

		<!--content结束--> 
</asp:Content>
