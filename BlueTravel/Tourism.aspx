<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Tourism.aspx.cs" Inherits="BlueTravel.Tourism" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<!--content-->
		<div class="content clearfix">
        	<div class="leftbar">
            	<div class="leftnav">
                	<h1>必玩景点</h1>
                	<ul class="ul_left">
                       <li><h3>线路介绍</h3></li>
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
            	<div class="bread"><a href="/Index.aspx">首页</a> > 旅游景点</div>
            	   <ul class="ul_zj clearfix">
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                               <li><a href="Lvyou.aspx"><img src="images/<%# Eval("images") %>" width="220" height="140" /><span><%# Eval("title") %></span></a></li>
                            </ItemTemplate>
                        </asp:Repeater>
                             <%--<li><a href="#"><img src="../images/ac2fc3c443a030a138db4941.jpg" width="220" height="140"><span>青秀山</span></a>  </li>
                               <li><a href="#"><img src="../images/8cb1cb13495409232994fbb49258d109b2de497f.jpg" width="220" height="140"><span>灵水</span></a></li>
                               <li><a href="#"><img src="../images/03087bf40ad162d9e177468510dfa9ec8b13cd89.jpg" width="220" height="140"><span>南宁大明山</span></a> </li>
                               <li><a href="#"><img src="../images/0865b5188d74656d34fa416e.jpg" width="220" height="140"><span>药用植物园</span></a></li>
                               <li><a href="#"><img src="../images/902397dda144ad340cc4a51ed1a20cf431ad852b.jpg" width="220" height="140"><span>广西民族博物馆</span></a> </li>
                               <li><a href="#"><img src="../images/c71d0e381eddfbaab311c753.jpg" width="220" height="140"><span>西津湖</span></a> </li>
                               <li><a href="#"><img src="../images/b90e7bec54e736d1aa1945aa9b504fc2d562690e.jpg" width="220" height="140"><span>九龙瀑布森林公园</span></a></li>         --%>
                  </ul>
            </div>
     </div>
<!--content end--> 

</asp:Content>
