﻿<%@ Page Language="C#" Debug="true" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="T_fen_index" %>

<asp:Content ID="head" ContentPlaceHolderID="indexHead" runat="Server">
    <meta http-equiv="Content-type" content="text/html;charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=0.5, maximum-scale=2.0, user-scalable=yes" />
    <base target="_blank">
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <style type="text/css">
        @import url("css/global.css");
        @import url("css/pic.css");
        @import url("css/basic.css");
        @import url("css/font.css");
        @import url("css/Box/Box.css");
        @import url("css/Btn/Btn.css");
    </style>
    <script src="js/jquery-1.11.2.min.js"></script>
</asp:Content>

<asp:Content ID="body" ContentPlaceHolderID="indexBody" runat="Server">

    <!-- ScriptManager -->
    <asp:ScriptManager ID="indexScriptManager" runat="server">
        <Services>
            <asp:ServiceReference Path="~/pala_services/SLS.asmx" />
        </Services>
    </asp:ScriptManager>
    <!-- ScriptManager -->

    <div class="siteBg"></div>



    <div class="main">

        <div class="GuideCol">
            <div class="GuideBox">
                <div class="GuideHead fltL RdiuT">
                    <a href="index.aspx" target="_self">
                        <div class="UserIMG UserIMG_pic"></div>
                    </a>
                    <div class="SiteSummary">THAUMY的博客</div>
                    <div class="UserMotto fltL">签名</div>
                </div>
                <div class="GuideCardBox fltL RdiuB MagnB">
                    <%foreach (LibStructs.PaText PaText in List_text_index_page)
                        {
                            LibStructs.PaText PaTextMain = SLS.getTextMain(PaText.text_id);
                    %>
                    <a href="index.aspx?text_id=<%Response.Write(PaTextMain.text_id); %>" target="_self" class="GuideCard RdiuB RdiuT flx Tran">
                        <div class="GuideCardTitle flx_center"><%Response.Write(PaTextMain.text_title); %></div>
                    </a>
                    <%} %>
                    <div class="CopyrightMark">
                        <p>Thaumy的博客©2016-2019保留所有权利</p>
                        <p>基于pilipala开发</p>
                        <p>based on pilipala</p>
                        站点背景图来自
                    </div>
                </div>
            </div>
        </div>

        <a href="#top" target="_self" class="GoUpBtn RdiuT RdiuB Tran fltL">
            <div class="arrow_up GoUpBtn_pic"></div>
        </a>

        <div class="TxtCol">
            <div id="surface" runat="server">
                <%if (List_text_index_post != null)
                    {
                        foreach (LibStructs.PaText idxPaText in List_text_index_post)
                        {%>
                <%
                    LibStructs.PaText PaText = new LibStructs.PaText();
                    PaText = SLS.fill(SLS.getTextMain(idxPaText.text_id), SLS.getTextSub(idxPaText.text_id));
                %>
                <div class="TxtBox fltL RdiuB RdiuT Shadow MagnB">
                    <%if (PaText.cover_url != "")
                        {  %>
                    <a href="index.aspx?text_id=<%Response.Write(PaText.text_id); %>" target="_self">
                        <img alt="" class="RdiuT TxtImg" src="<%Response.Write(PaText.cover_url); %>" />
                    </a>
                    <%} %>
                    <div class="BoxStrip <%Response.Write(SLS.stripStyle(PaText.strip_color)); %>"></div>
                    <div class="TxtContent">
                        <a href="index.aspx?text_id=<%Response.Write(PaText.text_id); %>" id="goTextBtn" target="_self">
                            <div class="TxtBoxTitle"><%Response.Write(PaText.text_title); %></div>
                            <div class="TxtBoxSummary"><%Response.Write(PaText.text_summary); %></div>
                        </a>
                    </div>
                    <div class="fltL LabelBox LabelTxt LabelBg RdiuB">
                        <div class="LabelContent LabelTxt">
                            <div class="LBL_time"><%Response.Write(SLS.extime(PaText.date_created)); %></div>
                            <div class="LBL_class"><%Response.Write(PaText.text_class); %></div>
                            <div class="LBL_comment RdiuB RdiuT">评论<%Response.Write(PaText.count_comment); %></div>
                            <div class="LBL_like RdiuB RdiuT">点赞<%Response.Write(PaText.count_like); %></div>
                            <div class="LBL_pv">阅读<%Response.Write(PaText.count_pv); %></div>
                            <%foreach (string tag in SLS.extags(PaText.tags))
                                { %>
                            <div class="LBL_tag"><%Response.Write(tag); %></div>
                            <%} %>
                        </div>
                    </div>
                </div>
                <%} %>
                <a class="LoadPostBtn  fltL Tran RdiuB RdiuT">
                    <div class="arrow_down LoadPostBtn_pic"></div>
                </a>
                <%} %>
            </div>

            <div id="deepin" runat="server">
            <%if (List_text_index_post == null)
                {%>
            <div class="TxtBox fltL RdiuB RdiuT Shadow MagnB">
                <%if (PaText.cover_url != "")
                    {%>
                <img alt="" class="RdiuT TxtImg" src="<%Response.Write(PaText.cover_url); %>" />
                <%} %>
                <div class="BoxStrip <%Response.Write(SLS.stripStyle(PaText.strip_color)); %>"></div>
                <div class="TxtContent">
                    <div class="TxtBoxTitle"><%Response.Write(PaText.text_title); %></div>
                    <div class="TxtBoxSummary"><%Response.Write(PaText.text_summary); %></div>
                    <div class="TxtBoxContent linked"><%Response.Write(PaText.text_content); %></div>
                </div>
                <div class="TxtCoMark fltL RdiuB RdiuT">
                    <div class="TxtCoMarkTime">此文本由 <%Response.Write(PaText.text_editor); %> 最后维护于 <%Response.Write(SLS.extime(PaText.date_changed)); %></div>
                    <div class="TxtCoMarkId">文本序列号：<%Response.Write(PaText.text_id); %></div>
                    <div class="LabelBox fltL LabelTxt LabelBg RdiuB">
                        <div class="LabelContent LabelTxt">
                            <div class="LBL_time"><%Response.Write(SLS.extime(PaText.date_created)); %></div>
                            <div class="LBL_class"><%Response.Write(PaText.text_class); %></div>
                            <a class="Btn_comment RdiuB RdiuT">评论<%Response.Write(PaText.count_comment); %></a>
                            <a class="Btn_like RdiuB RdiuT">点赞<%Response.Write(PaText.count_like); %></a>
                            <div class="LBL_pv">阅读<%Response.Write(PaText.count_pv); %></div>
                            <%foreach (string tag in SLS.extags(PaText.tags))
                                {  %>
                            <div class="LBL_tag"><%Response.Write(tag); %></div>
                            <%} %>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <!-- 随机文本按钮 -->
                <%LibStructs.PaText rdmPaText = SLS.getTextMain(SLS.rdmTextIndex(rqsted_text_id, "post").text_id);%>
                <a href="index.aspx?text_id=<%Response.Write(rdmPaText.text_id); %>" target="_self" class="RandomBtn Tran RdiuB RdiuT MagnB">
                    <%Response.Write(rdmPaText.text_title); %>
                </a>
                <!-- 评论区 -->
                <div class="CommentBox fltL RdiuB RdiuT Shadow LabelBg MagnB">评论功能将于BETA测试结束后开放</div>
            </div>
            <%}%>
        </div>
        </div>

    </div>



    <footer>
        <div style="color: aliceblue">本博客目前处于第六开发板（pilipalalaBETA6），所有内容均为测试文本，可能不具备参考价值</div>
    </footer>
    <script>
        $('body').mousemove(function (e) {
            if (document.body.clientWidth >= 1024) {
                var x = (e.originalEvent.x * -1 / 30), y = (e.originalEvent.y * -1 / 30);
                $('.siteBg').css('background-position', x + 'px ' + y + 'px');
            }
        });
    </script>
</asp:Content>
