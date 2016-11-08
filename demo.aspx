<%@ Page Language="C#" AutoEventWireup="true" CodeFile="demo.aspx.cs" Inherits="demo" %>

<!DOCTYPE html>
<link href="StyleSheet.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

.left_zw p { padding:5px 10px; color:#333; letter-spacing:1px; _letter-spacing:0px; }
        .auto-style1 {
            margin: 0px;
            padding: 0px;
        }
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
     <table align="center" class="tbHeaderStyle">
        <tr>
            <td class="tbTopLeftBlankStyle">&nbsp;</td>
            <td style="border:medium;border-color:#ffffff;width:309px">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Picture/TitlePicture.png" />
            </td>
            <td class="tbTopMiddleBlankStyle">&nbsp;</td>
            <td class="tbQueryStyle">查找风景：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Image ID="Image3" runat="server" ImageUrl="~/Picture/btn_search.png" cssClass="btnPretty"/>
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
          <table>
            <tr>
                <td class="tbPictureStyle">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/Picture/banner_sea.png" />
                </td>
            </tr>
        </table>
    </div>
        <table class="tbMainTitleStyle">
        <tr>
            
            <td style="width:400px" class="tbTopLeftBlankStyle"></td>  
            <td class="tbMainTileCharaStyle"> 
                <asp:LinkButton ID="LinkButton12" runat="server"></asp:LinkButton>
               
            </td>
            <td class="tbTopCharaStyle">
                 <div class="divRightStyle">
                <asp:LinkButton ID="LinkButton13" runat="server">海天一线|</asp:LinkButton>
                <asp:LinkButton ID="LinkButton14" runat="server">海边日出|</asp:LinkButton>
                <asp:LinkButton ID="LinkButton15" runat="server">浪花|</asp:LinkButton>
                <asp:LinkButton ID="LinkButton16" runat="server">抓拍瞬间|</asp:LinkButton>
                <asp:LinkButton ID="LinkButton17" runat="server">夜间风光|</asp:LinkButton>
                <asp:LinkButton ID="LinkButton19" runat="server">名家拍摄|</asp:LinkButton>
                <asp:LinkButton ID="LinkButton20" runat="server">更多照片</asp:LinkButton> 
                 </div>
            </td>
              
        </tr>
    </table> 
       <div style="width:1700px">
           <table class="tbNewsStyle">
               <tr>
                   <td class="tbTopLeftBlankStyle"></td>
                   <td>
                       <p>“海悦城杯”中国（洞头）海洋海岸全国摄影大展15日在浙江温州市洞头县望海楼景区正式启动。据悉，以海洋海岸为主题的全国性摄影活动，在</p>
                       <p>国内尚属首次。</p>
                       <p>
                           　大展采用每月设置一个不同主题的形式，通过摄影爱好者们手中的镜头，展现洞头全年节庆活动及每月各异的自然风光。稿件征集时间从4月份</p>
                       <p>开始，将一直持续到10月份结束，并在11月份</p>
                       <p>完成评审，12月份公布获奖名单、举行颁奖。</p>
                       <p>
                           　　大展的参赛作品只接受网络投稿作品，分为“双月赛”和“总决赛”2个阶段。征稿期间，5月至10月每两个月产生5幅优胜作品(4月15日至4</p>
                       <p>月30期间的投稿作品，参与5月份的双月赛）,</p>
                       <p>其中3幅由网友投票决定,2幅由《中国摄影》资深编辑推荐，6个月共产生15幅优胜作品直接进入大展终评阶段。最终产生获奖作品122幅，其中包</p>
                       <p>括典藏奖2个、收藏奖4个、佳作奖6个、优秀</p>
                       <p>奖10个、入选奖100个，所有总评选的入围作品均颁发荣誉证书，并作为申请加入中国摄影家协会的条件之一。</p>
                       <p>
                           　　据悉，启动仪式结束后的第二天，恰逢“2013中国·温州国际山地户外运动挑战赛”洞头段赛事举行。激情四射的运动画面，配合山海一色的</p><p>秀美风光，将让参加活动的“摄友”们过足拍摄瘾。</p>
                      
                       <p>
                           　　影展的启动地点——洞头，素有“百岛之县”之美誉。其有333公里的海岸线，海域面积超2600平方公里，拥有天然深水良港港口、广阔的滩</p><p>涂、迷人的景观。</p>
                       <p>
                           　　它先后被评为“中国最佳海岸摄影地”、“浙江最美海岸拍摄地”、“中国十大摄影发烧风景地之一”、“全国一生60个必拍地之一”等。</p>

                   </td>
               </tr>
           </table>
       </div>
    </form>
</body>
</html>
