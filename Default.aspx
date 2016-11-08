<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
    <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.0.js"></script>
    <script type="text/javascript">
        var t = n = 0,
        count;
        $(document).ready(function () {
            count = $("#banner_list a").length;
            $("#banner_list a:not(:first-child)").hide();
            $("#banner_info").html($("#banner_list a:first-child").find("img").attr('alt'));
            $("#banner_info").click(function () {
                window.open($("#banner_list a:first-child").attr('href'), "_blank")
            });
            $("#banner li").click(function () {
                var i = $(this).text() - 1; //获取Li元素内的值，即1，2，3，4
                n = i;
                if (i >= count) return;
                $("#banner_info").html($("#banner_list a").eq(i).find("img").attr('alt'));
                $("#banner_info").unbind().click(function () {
                    window.open($("#banner_list a").eq(i).attr('href'), "_blank")
                }); $("#banner_list a").filter(":visible").fadeOut(500).parent().children().eq(i).fadeIn(1000);
                document.getElementById("banner").style.background = "";
                $(this).toggleClass("on");
                $(this).siblings().removeAttr("class");
            });
            t = setInterval("showAuto()", 4000);
            $("#banner").hover(function () {
                clearInterval(t)
            },
            function () {
                t = setInterval("showAuto()", 4000);
            });
        })

        function showAuto() {
            n = n >= (count - 1) ? 0 : ++n;
            $("#banner li").eq(n).trigger('click');
        }
</script>
<link href="StyleSheet.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        </style>
    </head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="taTotalStyle">
            <tr>
                <td class="tbTopLeftBlankStyle"></td>
                <td><span class="tbTopCharaStyle">天堂网 — 创建于2006年，大型网上风景展览平台，绿色环保，带你领略大自然的另一面</span></td>
                <td class="tbTopMiddleBlankStyle"></td>
                <td class="tbTopCharaStyle">
                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="tbTopCharaStyle">用户登录|</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="tbTopCharaStyle">免费注册|</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton3" runat="server" CssClass="tbTopCharaStyle">帮助中心</asp:LinkButton>
                </td>
                <td class="tbTopLeftBlankStyle">&nbsp;</td>
            </tr>
        </table>
    
    </div>
    <table align="center" class="tbHeaderStyle">
        <tr>
            <td class="tbTopLeftBlankStyle">&nbsp;</td>
            <td style="border:medium;border-color:#ffffff;width:309px">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Picture/TitlePicture.png" />
            </td>
            <td class="tbTopMiddleBlankStyle">&nbsp;</td>
            <td class="tbQueryStyle">查找风景：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Image ID="Image23" runat="server"  ImageUrl="~/Picture/query.png" cssClass="btnPretty"/>
            </td>
            <td class="tbTopLeftBlankStyle">&nbsp;</td>
        </tr>
    </table>
    <table align="center" class="tbListStyle">
        <tr>
            <td class="tbTopLeftBlankStyle">&nbsp;</td>
            <td>
                <asp:LinkButton ID="LinkButton4" runat="server">首页</asp:LinkButton>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton5" runat="server">网上展览馆</asp:LinkButton>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton6" runat="server">快速建馆</asp:LinkButton>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton7" runat="server">民俗风情</asp:LinkButton>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton8" runat="server">自然写实</asp:LinkButton>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton9" runat="server">天堂网咨询</asp:LinkButton>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton10" runat="server">帮助中心</asp:LinkButton>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton11" runat="server">关于天堂网</asp:LinkButton>
            </td>
            <td class="tbTopLeftBlankStyle">&nbsp;</td>
        </tr>
    </table>

 <div id="banner">  
    <div id="banner_bg">       
    </div>
 <!--标题背景-->
    <div id="banner_info"> 
    </div>
<!--标题-->
    <ul>   
        <li class="on">
            1
        </li>
        <li>
            2
        </li>
        <li>
            3
        </li>
        <li>
            4
        </li>
    </ul>
    <div id="banner_list">
        <a href="Default.aspx" ><img src="Picture/banner_1.png" title="七星湖" alt="七星湖"></a> <a href="Default.aspx" ><img src="Picture/banner_2.jpg" title="晚霞" alt="晚霞"></a> <a href="Default.aspx" ><img src="Picture/banner_3.jpg" title="天路" alt="天路"></a> <a href="Default.aspx" ><img src="Picture/banner_4.jpg" title="云海" alt="云海"></a>
    </div>
</div>    

        <table class="tbMainTitleStyle">
        <tr>
            
            <td style="width:400px" class="tbTopLeftBlankStyle"></td>  
            <td class="tbMainTileCharaStyle"> 
                <asp:LinkButton ID="LinkButton12" runat="server">最新风景</asp:LinkButton>
               
            </td>
            <td class="tbTopCharaStyle">
                 <div class="divRightStyle">
                <asp:LinkButton ID="LinkButton13" runat="server" OnClick="LinkButton13_Click">大海风景|</asp:LinkButton>
                <asp:LinkButton ID="LinkButton14" runat="server" OnClick="LinkButton14_Click">日出日落|</asp:LinkButton>
                <asp:LinkButton ID="LinkButton15" runat="server" OnClick="LinkButton15_Click">自然写实|</asp:LinkButton>
                <asp:LinkButton ID="LinkButton16" runat="server" OnClick="LinkButton16_Click">抓拍瞬间|</asp:LinkButton>
                <asp:LinkButton ID="LinkButton17" runat="server">夜间风光|</asp:LinkButton>
                <asp:LinkButton ID="LinkButton18" runat="server">星空系列|</asp:LinkButton>
                <asp:LinkButton ID="LinkButton19" runat="server">名家拍摄|</asp:LinkButton>
                <asp:LinkButton ID="LinkButton20" runat="server">更多照片</asp:LinkButton> 
                 </div>
            </td>
              
        </tr>
    </table> 
        <div style="width:1700px">
              <div class="divLeftStyle">
    
    <table>

        <tr>
            <td class="tbJdPictureStyle">
                <asp:Image ID="Image3" runat="server" ImageUrl="~/Picture/Jd1.png" />
                <br />
                <a>在海边</a><br />
            </td>
            <td class="tbJdPictureStyle">
                <asp:Image ID="Image4" runat="server" ImageUrl="~/Picture/Jd2.png" />
                <br />
                <a>湖天一色</a></td>
            <td class="tbJdPictureStyle">
                <asp:Image ID="Image5" runat="server" ImageUrl="~/Picture/Jd3.png" />
                <br />
                <a>赤壁</a></td>
            <td class="tbJdPictureStyle">
                <asp:Image ID="Image6" runat="server" ImageUrl="~/Picture/Jd4.png" />
                <br />
                <a>冬树</a></td>
            <td class="tbJdPictureStyle">
                <asp:Image ID="Image7" runat="server" ImageUrl="~/Picture/Jd5.png" />
                <br />
                <a>日出</a></td>
            <td class="tbJdPictureStyle">
                <asp:Image ID="Image8" runat="server" ImageUrl="~/Picture/Jd6.png" />
                <br />
               <a>晚霞</a> </td>
            <td class="tbJdPictureStyle">
                <asp:Image ID="Image9" runat="server" ImageUrl="~/Picture/Jd8.png" />
                <br />
                <a>日落</a></td>
        </tr>
        <tr>
            <td class="tbJdPictureStyle">
                <asp:Image ID="Image10" runat="server" ImageUrl="~/Picture/Jd9.png" />
                <br />
                <a>海底的阳光</a><br />
            </td>
            <td class="tbJdPictureStyle">
                <asp:Image ID="Image11" runat="server" ImageUrl="~/Picture/Jd10.png" />
                <br />
               <a>浪漫海景</a> </td>
            <td class="tbJdPictureStyle">
                <asp:Image ID="Image12" runat="server" ImageUrl="~/Picture/Jd11.png" />
                <br />
                <a>海浪</a></td>
            <td class="tbJdPictureStyle">
                <asp:Image ID="Image13" runat="server" ImageUrl="~/Picture/Jd12.png" />
                <br />
                <a>金色的远方</a><br />
            </td>
            <td class="tbJdPictureStyle">
                <asp:Image ID="Image14" runat="server" ImageUrl="~/Picture/Jd13.png" />
                <br />
                <a>湖边日落</a></td>
            <td class="tbJdPictureStyle">
                <asp:Image ID="Image15" runat="server" ImageUrl="~/Picture/Jd7.png" />
                <br />
                <a>水中树</a><br />
               </td>
            <td class="tbJdPictureStyle">
                <asp:Image ID="Image16" runat="server" ImageUrl="~/Picture/Jd14.png" />
                <br />
                <a>星空宇宙</a></td>
        </tr>
    </table>
   </div>
            <div class="divRightStyle">
                <table class="tbLoginStyle">
                    <tr>
                        <td class="tbMainTileCharaStyle">
                            用户登录
                        </td>
                    </tr>
                    <tr>
                        <td class="tbLoginchara">用户名：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="tbLoginchara">密码：&nbsp;&nbsp; 
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="tbLoginchara">
                            <div style="float:left">
                            <asp:CheckBox ID="CheckBox1" runat="server" Text="30天免费登录" /></div>
                            <div class="divRightStyle"><a>忘记密码？</a></div>
                            </td>
                    </tr>
                    <tr>
                        <td style="height:20px; text-align:center">
                            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Picture/btn_login.png" />
                        </td>
                    </tr>
                    <tr>
                        <td class="tbLoginchara"><a >用户注册，免费建立网上展览馆</a></td>
                    </tr>
                </table>
        </div>
        </div>
      

   <div style="width:1700px">
    <div class="divLeftStyle">
    <table class="tbNewJdList">
        <tr>
            <td class="tbJdPictureStyle">
                <asp:Image ID="Image17" runat="server" ImageUrl="~/Picture/FoodBread.png" />
            </td>
            <td class="tableIntruductionBlankStyle"><a>食物带给你的感动和幸福，时时刻刻记录下来</a><br />
                <a>---来自吃货拍摄</a> </td>
            <td class="tbJdMiddleBlankStyle"></td>
            <td class="tbJdPictureStyle">
                <asp:Image ID="Image19" runat="server" ImageUrl="~/Picture/FoodCake.png" />
            </td>
            <td class="tableIntruductionBlankStyle"><a>小老鼠和蛋糕你更喜欢哪个呢？</a><br />
                <a>---童趣话家</a></td>
        </tr>
        <tr>
            <td class="tbJdPictureStyle">
                <asp:Image ID="Image18" runat="server" ImageUrl="~/Picture/FoodIceCream.png" />
            </td>
            <td class="tableIntruductionBlankStyle"><a>下雪天，一起吃支冰淇淋吧</a><br />
                <a>---来自爱吃冰淇淋的美食家</a></td>
            <td class="tbJdMiddleBlankStyle">&nbsp;</td>
            <td class="tbJdPictureStyle">
                <asp:Image ID="Image20" runat="server" ImageUrl="~/Picture/FoodMKL.png" />
            </td>
            <td class="tableIntruductionBlankStyle"><a>马卡龙给我们的生活带来色彩</a><br />
                <a>---周游世界的自由主义者</a></td>
        </tr>
    </table>
       
    </div>
        <div class="divRightStyle">
       <table class="tbLoginStyle">
            <tr> <td class="tbMainTileCharaStyle">那个不经意的瞬间</td> </tr>
             <tr> <td class="tbShowPictureCharaStyle">你拿起相机捕捉到的画面</td> </tr>
             <tr> <td class="tbShowPictureCharaStyle">现在呈现在这里</td> </tr>
             <tr> <td class="tbShowPictureStyle">
                 <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Picture/ShowPicture3.png" Width="92px" />
                 <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/Picture/ShowPicture2.png" Width="92px" />
                 <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/Picture/ShowPicture5.png" Width="95px" />
                 </td> </tr>
             <tr> <td class="tbShowPictureStyle">
                 <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/Picture/ShowPicture4.png" Width="94px" />
                 <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="~/Picture/ShowPicture6.png" Width="95px" />
                 </td> </tr>
             <tr> <td class="tbMainTileCharaStyle"><a>+查看更多</a></td> </tr>
        </table>
        </div>
       
   </div>
        <div style="width:1700px">
        <div class="divLeft2Style">
        <table>
            <tr>
               <td class="tbInfoStyle">
                   <asp:ImageButton ID="ImageButton9" runat="server" ImageUrl="~/Picture/InfoPicture.png" />
                </td>
               <td class="tbJdMiddleBlankStyle"></td>
               <td class="tbInfoStyle">
                   <asp:ImageButton ID="ImageButton10" runat="server" ImageUrl="~/Picture/InfoPicture2.png" />
                </td>
            </tr>
        </table>
           
            
        </div>
        <div style="float:right;width:293px;border:outset;border-color:#808080;margin-top:3px">
         <table>
          <tr>
              <td class="auto-style1">摄影咨询</td>
              <td class="auto-style2"><div style="float:right"><a>更多</a></div></td>
          </tr>
           <tr>
              <td class="tbResultPhotoPictureStyle">
                  <asp:ImageButton ID="ImageButton11" runat="server" ImageUrl="~/Picture/ResultPicture.png" />
               </td>
              <td style="font-size:20px;font-family:'Microsoft YaHei',Arial"><a>如何拍出美丽星空</a></td>
          </tr>
      </table>
            
             <ul style="margin-left:12px;padding:0px;float:left;">
                <li class="ListCharaStyle"><a>摄影入门、初级教材</a></li>
                <li class="ListCharaStyle"><a>2016年达物摄影大赛正在进行....</a></li>
                <li class="ListCharaStyle"><a>重庆《你好。化龙桥》影展圆满结束..</a></li>
                <li class="ListCharaStyle"><a>滤水青山总有情2016蜂鸟网&贝图滤镜七月月赛获奖名单..</a></li>
                <li class="ListCharaStyle"><a>东北石油大学人物写实摄影大赛火热进行中...</a></li>
            </ul>
        </div>
        <div class="divLeftStyle">
        <table >
                <tr>
                   <td class="ListTitleStyle"><div style="float:left">摄影技术交流</div>
                       <div style="float:right;font-size:12px"><a>更多</a></div>
                   </td>
                    <td class="tbJdMiddleBlankStyle"></td>
                    <td class="ListTitleStyle"><div style="float:left">摄影作品刊登</div>
                         <div style="float:right;font-size:12px"><a>更多</a></div>
                    </td>
                </tr>
            </table>
              <div style="float:left;margin-left:7px">
            <ul style="margin-left:3px;padding:0px;float:right;">
                <li class="ListCharaStyle"><a>摄影时为什么逆光人物脸变暗</a></li>
                <li class="ListCharaStyle"><a>摄影时如何找角度</a></li>
                <li class="ListCharaStyle"><a>摄影时人物比列多少最合适</a></li>
                <li class="ListCharaStyle"><a>现学摄影技巧</a></li>
                <li class="ListCharaStyle"><a>怎样抓拍人物</a></li>
            </ul>
        </div>
              <div style="float:left;margin-left:280px;">
            <ul style="margin:0px;padding:0px;float:right;">
                <li class="ListCharaStyle"><a>青年摄影师作品集</a></li>
                <li class="ListCharaStyle"><a>抽象派摄影集</a></li>
                <li class="ListCharaStyle"><a>自然采风集</a></li>
                <li class="ListCharaStyle"><a>生活摄影集</a></li>
                <li class="ListCharaStyle"><a>写实摄影集</a></li>
            </ul>
                 
        </div> 
        </div></div>
  
       <div class="divLeftStyle3">
     <table>       
        <tr><td style="border-bottom:outset;border-bottom-color:#808080">
            <div style="float:left;font-family:'Microsoft YaHei',Arial;font-size:15px;color:#ffffff">常用链接:&nbsp;&nbsp;
            </div><div style="float:left;font-size:13px"">
                <a>如何使用单反</a>
                <a>如何调节光圈大小</a>
                <a>怎么虚化人物背景</a>
               <a>怎么ps图片</a> 
                <a>如何选择滤镜</a>                                       
               </div></td></tr>
        <tr><td style="width:900px">
            <div style="float:left;font-family:'Microsoft YaHei',Arial;font-size:15px;color:#ffffff">友情链接:&nbsp;&nbsp; </div><div style="float:left;font-size:13px"">
                <a>网上摄影展在线观看</a>
                <a>最近涌现的青年摄影师</a>
                <a>业余大神照片锦集</a>
               <a>ps图片大神作品集</a>                               
               </div></td></tr>
                  </table></div>
                <div style="width:2100px">
              
                    <table class="tbEndStyle"><tr><td>天堂网——带你领略摄影的奇妙、为你的作品提供一个展示平台</td></tr></table>
                </div>
        <div style="width:2100px">
            <table class="tbEndBlankStyle">
                <tr>
                    <td>Copyright © 2006 - 2016 www.tiantang6.com All Rights Reserved.</span></td>
                </tr>
                <tr>
                    <td>版权所有&nbsp; 天堂摄影&nbsp; 东北石油大学</td>
                </tr>
                <tr>
                    <td>
                        <asp:Image ID="Image21" runat="server" ImageUrl="~/Picture/endPicture.png" />
                        <asp:Image ID="Image22" runat="server" ImageUrl="~/Picture/endPicture2.png" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
    </body>
</html>
