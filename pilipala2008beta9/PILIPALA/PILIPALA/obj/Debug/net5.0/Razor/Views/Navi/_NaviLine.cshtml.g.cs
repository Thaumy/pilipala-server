#pragma checksum "H:\pilipala\pilipala2008beta9\PILIPALA\PILIPALA\Views\Navi\_NaviLine.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "79cc4b34f9a572749403280946262ab71bfd3c40"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Navi__NaviLine), @"mvc.1.0.view", @"/Views/Navi/_NaviLine.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "H:\pilipala\pilipala2008beta9\PILIPALA\PILIPALA\Views\_ViewImports.cshtml"
using PILIPALA;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "H:\pilipala\pilipala2008beta9\PILIPALA\PILIPALA\Views\_ViewImports.cshtml"
using PILIPALA.Models;

#line default
#line hidden
#nullable disable
#nullable restore
#line 1 "H:\pilipala\pilipala2008beta9\PILIPALA\PILIPALA\Views\Navi\_NaviLine.cshtml"
using WaterLibrary.pilipala;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "H:\pilipala\pilipala2008beta9\PILIPALA\PILIPALA\Views\Navi\_NaviLine.cshtml"
using WaterLibrary.pilipala.Component;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"79cc4b34f9a572749403280946262ab71bfd3c40", @"/Views/Navi/_NaviLine.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"0e60be9c90af2170990e47eff766018c8e075941", @"/Views/_ViewImports.cshtml")]
    public class Views_Navi__NaviLine : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\r\n");
            WriteLiteral("\r\n");
#nullable restore
#line 6 "H:\pilipala\pilipala2008beta9\PILIPALA\PILIPALA\Views\Navi\_NaviLine.cshtml"
  
    CommentLake CommentLake = compoFty.GenCommentLake();

#line default
#line hidden
#nullable disable
            WriteLiteral(@"
<div id=""NavLine"" class=""L M bSha"">
    <div class=""contain cur bRds"" onclick=""up();showPost(12387, '我');"">
        <img class=""Avatar bSha"" src=""http://q1.qlogo.cn/g?b=qq&nk=1951327599&s=640"">
        <div class=""Name"">THAUMY的小站</div>
    </div>
    <div class=""SiderBtn R cur"" onclick=""ListToggle()""></div>
</div>

<div id=""SiderList"" class=""bSha"">
    <m-card v-for=""d in List"" v-bind:item=""d"" v-bind:key=""d.index""></m-card>

    <div class=""Co cur"" onclick=""up();showPost(12388, '关于博客');ListToggle()"">
        THAUMY的博客©2016-2020保留所有权利<br>
        基于pilipala构建<br>
        Field Theme Designed By Thaumy<br>
    </div>
</div>

<div class=""Shadow"" onclick=""ListToggle()""></div>

<!-- vue导航组件 -->
<script>
    Vue.component('m-card', {
        props: ['item'],
        template: '<div class=""Card cur bRds"" v-on:click=""m_card_click(item.ID)"" :key=""item.index""><div class=""contain"">{{item.Title}}</div></div>',
        methods: {
            m_card_click: function (ID) {
                up();");
            WriteLiteral(@"
                ListToggle();

                showPost(ID);

                AvaOutline.style = {
                    'border-color': 'rgba(0,0,0,0)'
                }
                CoOutline.style = {
                    'border-color': 'rgba(0,0,0,0)'
                }
            }
        }
    })
</script>

");
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public ComponentFactory compoFty { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<dynamic> Html { get; private set; }
    }
}
#pragma warning restore 1591
