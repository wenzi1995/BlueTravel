 <%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="BlueTravel.Index" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--content开始-->
		<div class="content"> 
			<p class="p_tit1">走进南宁</p>	
			  <ul class="ul_jishu clearfix">
                <asp:Repeater ID="Rep1" runat="server">
                   <ItemTemplate>
                       <li class="f1" style="width">
                          <a href="Introduce.aspx"><img src="images/<%# Eval("image") %>" width="291" height="126" alt="" title="" /></a>  
                          <p> <a href="Introduce.aspx"> <%# Eval("title") %>   </a>                 
                              <%# Eval("contents") %>   </p>      
                        </li>
                    </ItemTemplate>
			      </asp:Repeater>
                  <asp:Repeater ID="Rep2" runat="server">
                   <ItemTemplate>
                       <li class="ml20">
                          <a href="Culture.aspx"><img src="images/<%# Eval("image") %>" width="291" height="126" alt="" title="" /></a>  
                          <p> <a href="Culture.aspx"> <%# Eval("title") %>   </a>                 
                              <%# Eval("contents") %>   </p>      
                        </li>
                    </ItemTemplate>
			      </asp:Repeater>
                  <asp:Repeater ID="Rep3" runat="server">
                   <ItemTemplate>
                       <li class="fr">
                          <a href="Historic.aspx"><img src="images/<%# Eval("image") %>" width="291" height="126" alt="" title="" /></a>  
                          <p> <a href="Historic.aspx"> <%# Eval("title") %>   </a>                 
                              <%# Eval("contents") %>   </p>      
                        </li>
                    </ItemTemplate>
			      </asp:Repeater>
             </ul>
                  <%--<li class="fl">
                	<a href="Introduce.aspx"><img src="images/pic_1.jpg" width="291" height="126" alt="" title="" /></a>
                    	<p>
                           <a href="Introduce.aspx">南宁简介</a>
                           南宁，简称“邕”，是广西壮族自治区首府，全区政治、经济、交通、科教文卫、金融和信息中心，是中国面向东盟开放合作的前沿城市、中国—东盟博览会永久举办地、北部湾经济区核心城市、国家“一带一路”有机衔接的重要门户城市。   </p>
                  </li>
            	  <li class="fl ml20">
                	    <a href="Culture.aspx"><img src="images/pic_2.jpg" width="291" height="126" alt="" title="" /></a>
                    
                        <p><a href="Culture.aspx">南宁文化</a>
                           南宁别称绿城、凤凰城、五象城。旅游资源丰富，北连桂林，南接北海，构成了广西的黄金旅游带。壮丽的边关风采、浪漫的海滩风貌、迷人的异国情调，星罗棋布的灵山秀水，古朴悠远的古迹故址，山、水、人、情构成南宁多层次的旅游景观。
                        </p>
                  </li>
                  <li class="fr">
                	<a href="Historic.aspx"><img src="images/pic_3.jpg" width="291" height="126" alt="" title="" /></a>
                       <p>
                    	  <a href="Historic.aspx">南宁历史</a>
                           南宁历史悠久，在古代，南宁属于百越领地。秦始皇统一岭南地区后，南宁属于桂林郡。西汉时期，汉武帝又将它置于玉林郡管辖。东晋大兴元年（公元318年），置大兴郡，以南宁为郡治所在地，南宁建制从此开始，至今已有1600多年。</p>
                   </li>--%>
                  
             <div class="feilei">            
            	<div class="fl1 fldiv">
                	<img src="images/pic_4.jpg" width="75" height="76" alt="" title=""/>
                    <p>人民公园</p>
                </div>
                <div class="fl2 fldiv">
                	<img src="images/pic_5.jpg" width="75" height="76" alt="" title=""/>
                    <p>南宁海底世界</p>
                </div>
                <div class="fl3 fldiv">
                	<img src="images/pic_6.jpg" width="75" height="76" alt="" title=""/>
                    <p>金花茶公园</p>
                </div>
                <div class="fl4 fldiv">
                	<img src="images/pic_7.jpg" width="75" height="76" alt="" title="" />
                    <p>五象广场</p>
                </div>
                <div class="fl5 fldiv">
                	<img src="images/pic_8.jpg" width="75" height="76" alt="" title=""/>
                    <p>地王云顶</p>
                </div>
                <div class="fl6 fldiv">
                	<img src="images/pic_9.jpg" width="75" height="76" alt="" title=""/>
                    <p>南宁民歌湖游船</p>
                </div>
                <div class="fl7 fldiv">
                	<img src="images/pic_10.jpg" width="75" height="76" alt="" title=""/>
                    <p>名树博览园</p>
                </div>
            </div>
            <div class="zjfc">
            	<p class="p_tit1">秀丽南宁</p>
                  <div class="picScroll-left">
                    <div class="hd">
                        <a class="next"><</a>
                        <a class="prev">></a>
                    </div>
                  <div class="bd">
                      <ul class="picList">
                            <asp:Repeater ID="repxl" runat="server">
                                <ItemTemplate>
                                    <li>
                                        <div class="pic"><img src="images/<%# Eval("images") %>" width="231" height="151" /></div>
                                    </li> 
                                </ItemTemplate>
                            </asp:Repeater>
                   <%--<li>
                       <div class="pic"><img src="images/201410301619396038.jpg" width="231" height="151" /></div>
                   </li> 
                   <li>
                       <div class="pic"><img src="images/201410301618110413.jpg" width="231" height="151" /></div>
                   </li>
                   <li>
                       <div class="pic"><img src="images/201410301611286194.jpg" width="231" height="151" /></div>
                   </li>
                   <li>
                       <div class="pic"><img src="images/201410301613498694.jpg" width="231" height="151" /></div>
                    </li>
                   <li>
                        <div class="pic"><img src="images/201410301614494319.jpg" width="231" height="151" /></div>
                   </li>
                   <li>
                        <div class="pic"><img src="images/201410301615449632.jpg" width="231" height="151" /></div>
                   </li>        --%>                                
               </ul>
                    </div>
                </div>
        		<!--为秀丽南宁模块图片向左滚到--> 
                <script type="text/javascript">
                jQuery(".picScroll-left").slide({titCell:".hd ul",mainCell:".bd ul",autoPage:true,effect:"left",autoPlay:true,vis:4,trigger:"click"});
                </script>
            </div>
		</div>
    
		<!--content 结束--> 
</asp:Content>
