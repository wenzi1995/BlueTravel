<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Beautiful.aspx.cs" Inherits="BlueTravel.Beautiful" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!--content-->
		<div class="content clearfix">
        	<div class="leftbar">
            	<div class="leftnav">
                	<h1>风景景点</h1>
                	<ul class="ul_left">
                     <li><h3>景点介绍</h3></li>
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
        	 <div class="rightbar clearfix">
            	<div class="bread"><a href="/Index.aspx">首页</a> > 旅游风景</div>
                    <ul class="ul_zj clearfix">
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <li><a href="special.aspx"><img src="images/<%# Eval("images") %>" width="220" height="140" /><span><%# Eval("title") %></span></a></li>
                            </ItemTemplate>
                        </asp:Repeater>
           	               <%-- <li><a href="#"> <img src="../images/201410301619396038.jpg" width="220" height="140"/><span>人民公园</span></a> </li>
                            <li><a href="#"><img src="../images/201410301618110413.jpg" width="220" height="140"/><span>南宁海底世界</span></a> </li>
	                        <li><a href="#"><img src="../images/201410301611286194.jpg" width="220" height="140"/><span>金花茶公园</span></a></li>
           	                <li><a href="#"> <img src="../images/201410301613498694.jpg" width="220" height="140"/><span>五象广场</span></a></li>
           	                <li><a href="#"> <img src="../images/201410301614494319.jpg" width="220" height="140"/><span>地王云顶</span></a></li>

           	                <li><a href="#"> <img src="../images/201410301615449632.jpg" width="220" height="140"/><span>南宁民歌湖游船</span></a> </li>

           	                <li> <a href="#"><img src="../images/201410301615449632.jpg" width="220" height="140"/><span>名树博览园</span></a> </li>--%>
                    </ul>
                 </div>
<!--content end--> 
         </div>
</asp:Content>
