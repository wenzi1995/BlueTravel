<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Delicacy.aspx.cs" Inherits="BlueTravel.Delicacy" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--content-->

		<div class="content clearfix">
        	<div class="leftbar">
            	    <div class="leftnav">
               	    <h1>必吃美食</h1>
                    <ul class="ul_left">                                       
                       <li><h3>风味小吃</h3></li>    		
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
                 <div class="bread"><a href="/Index.aspx">首页</a> >风味小吃</div>
            	    <ul class="ul_zj clearfix">
                        <asp:Repeater ID="Repeater1" runat="server">
                          <ItemTemplate>
                             <li><a href="Meishi.aspx"><img src="images/<%# Eval("images") %>" width="220" height="140"><span><%# Eval("title") %></span></a>  </li>
                          </ItemTemplate>
                        </asp:Repeater>
                                <%--<li><a href="#"><img src="../images/d058ccbf6c81800a0ddb2b83b13533fa828b4704.jpg" width="220" height="140"><span>老友粉</span></a>  </li>
           		                <li><a href="#"><img src="../images/0dd7912397dda1447836ce3fb2b7d0a20cf48604.jpg" width="220" height="140"><span>南宁酸品</span></a></li>
           		                <li><a href="#"><img src="../images/a71ea8d3fd1f41348a31a7f3251f95cad1c85e3c.jpg" width="220" height="140"><span>粥品</span></a> </li>

               	                <li><a href="#"><img src="../images/94cad1c8a786c91731850b92c83d70cf3ac75792.jpg" width="220" height="140"><span>八仙粉</span></a> </li>

                                <li><a href="#"><img src="../images/622762d0f703918f605d6561503d269758eec489.jpg" width="220" height="140"><span>卷筒粉</span></a> </li>

                                <li><a href="#"><img src="../images/c995d143ad4bd1130dcdec995bafa40f4bfb051c.jpg" width="220" height="140"><span>粉饺</span></a> </li>
              	                <li><a href="#"><img src="../images/8b82b9014a90f603e74dd9ec3812b31bb151ed98.jpg" width="220" height="140"><span>柠檬鸭</span></a>  </li>--%>
                    </ul>
               </div>
               <div class="paging"></div>
    </div>
		<!--content end--> 
</asp:Content>
