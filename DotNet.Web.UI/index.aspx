<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="DotNet.Web.UI.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <title>Complex Layout - jQuery EasyUI Demo</title>
    <link rel="stylesheet" type="text/css" href="style/themes/gray/easyui.css" />
    <link rel="stylesheet" type="text/css" href="style/themes/icon.css" />
    <link rel="stylesheet" type="text/css" href="demo.css" />
    <script type="text/javascript" src="style/js/jquery.min.js"></script>
    <script type="text/javascript" src="style/js/jquery.easyui.min.js"></script>
    <script type="text/javascript">
        //$(function () {
        //    $(window).resize(function () {
        //        $('#main-layout').layout('resize');
        //    });
        //});


        function showTab(url, title) {
            var tab = $('#tab');
            if (tab.tabs('exists', title)) {
                tab.tabs('select', title);
            }
            else {
                tab.tabs('add', {
                    title: title,
                    content: "<iframe scrolling='yes' frameborder='0' src='/"
                        + url + "/Index/' style='width:100%;height:100%;'/>",
                    closable: true
                });

            }
        }
        $('#cc').layout();

        // 折叠 west panel   

        $('#cc').layout('collapse', 'west');
    </script>
</head>

<body class="easyui-layout">

    <div region="north" title="North Title" split="true" style="height: 100px;"></div>

    <div region="south" title="South Title" split="true" style="height: 100px;"></div>

    <div region="east" iconcls="icon-reload" title="East" split="true" style="width: 100px;"></div>

    <div region="west" split="true" title="West" style="width: 100px;"></div>

    <div region="center" title="center title" style="padding: 5px; background: #eee;"></div>



    <%--    <div data-options="region:'north'" style="height: 50px; border: 0;"></div>
    <div data-options="region:'south'" style="height: 20px; border: 0; text-align: center; line-height: 20px;">
        Copy Right ®2010-2011
    </div>

    <div data-options="region:'west',split:true" title="West" style="width: 230px;"></div>

    <div data-options="region:'center',title:'Main Title',iconCls:'icon-ok'"></div>--%>


    <%-- <div style="height: 80px; clear: both;">
            <div style="width: 150px;">
            </div>
            <div style="text-align: center; width: 150px; line-height: 80px;">
                <img alt="logo" src="/Images/logo_small.jpg" onclick="window.open('/Index.html')" />
            </div>
        </div>
        <div style="height: 20px; text-align: right">
            <div>
                登陆用户：<a href="#" onclick="">sdaf</a>&nbsp;&nbsp;
                <a href="#" onclick="showChangePasswordWin();">修改密码</a>&nbsp;&nbsp; <a href="/Home/LogOut/">退出系统</a>
                &nbsp;&nbsp;<a href="http://member.webweb.com/" target="_blank">空间管理</a>&nbsp;&nbsp;
                    <a href="http://new.cnzz.com/" target="_blank">站长在线</a>&nbsp;&nbsp;&nbsp;&nbsp;
            </div>
        </div>
    </div>--%>

    <%-- <div data-options="region:'west',split:true" title="West" style="width: 230px;">
        <div class="easyui-accordion" fit="true" border="false" style="background-color: #E0ECFF; background-repeat: repeat-x;">
            <div title="资料管理" style="overflow: auto;">
                <table border="0" cellspacing="1" cellpadding="1" align="center">
                    <tr>
                        <td height="23">
                            <a href="#" onclick="showTab('Forum',$(this).html());">版块管理</a>
                        </td>
                    </tr>
                    <tr>
                        <td height="23">
                            <a href="#" onclick="showTab('Category',$(this).html());">分类管理</a>
                        </td>
                    </tr>
                </table>
            </div>

            <div title="系统管理" style="overflow: auto;">
                <table border="0" cellspacing="1" cellpadding="1" align="center">
                    <tr>
                        <td height="23">
                            <a href="#" onclick="showTab('UserInfo',$(this).html());">管理员用户管理</a>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>--%>
    <%-- <div data-options="region:'center',title:'Main Title',iconCls:'icon-ok'">
          <div id="tab" class="easyui-tabs" fit="true" border="false">
            <div title="首页" style="padding: 20px; overflow: hidden;">
                <table width="98%" border="0" cellpadding="3" align="center" cellspacing="0" bgcolor="#F1EAE0">
                    <tr>
                        <td width="100%" bgcolor="#cccccc" height="5"></td>
                    </tr>
                    <tr>
                        <td width="100%" class="change_td" style="cursor: hand">服务器参数
                        </td>
                    </tr>
                </table>
                <table cellspacing="1" cellpadding="3" width="98%" align="center" bgcolor="#ffffff"
                    border="0">
                    <tbody>
                        <tr>
                            <td class="th1" align="center" colspan="2" style="height: 25px">服务器信息统计
                            </td>
                        </tr>
                        <tr bgcolor="#f9fbf0">
                            <td width="50%" style="height: 24px">&nbsp;<strong>服务器名</strong>：<%=System.Environment.MachineName%>
                            </td>
                            <td width="50%" style="height: 24px">&nbsp;<b>服务器端口：</b><%= HttpContext.Current.Request.ServerVariables["Server_Port"].ToString() %>
                            </td>
                        </tr>
                        <tr bgcolor="#f9fbf0">
                            <td width="50%" style="height: 23px">&nbsp;<b>脚本解释引擎：</b><%=System.Environment.Version%>
                            </td>
                            <td width="50%" style="height: 23px">
                                <b>&nbsp;站点物理路径：</b><%=HttpContext.Current.Request.PhysicalApplicationPath.ToString() %>
                            </td>
                        </tr>
                        <tr bgcolor="#f9fbf0">
                            <td width="50%" style="height: 23px">&nbsp;<b>服务器CPU个数：</b><%=System.Environment.ProcessorCount %>
                            </td>
                            <td width="50%" style="height: 23px">&nbsp;<b>服务器IIS版本：</b><%=Request.ServerVariables["SERVER_SOFTWARE"]%>
                            </td>
                        </tr>
                        <tr bgcolor="#f9fbf0">
                            <td width="50%">&nbsp;<b>开机运行时长</b>：<%=(System.Environment.TickCount/3600000).ToString("N2")%>
                                小时
                            </td>
                            <td width="50%">
                                <b>&nbsp;服务器时间：</b><%=DateTime.Now.ToString() %>
                            </td>
                        </tr>
                        <tr bgcolor="#f9fbf0">
                            <td colspan="2">&nbsp;<b>服务器操作系统：</b><span>
                                <%=System.Environment.OSVersion.ToString()%></span>
                            </td>
                        </tr>
                        <tr bgcolor="#f9fbf0">
                            <td colspan="2">&nbsp;
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>--%>
    <%--    <div id="winPassword" class="easyui-window" closed="true" modal="true" title="修改密码"
        style="width: 280px; height: 160px;" collapsible="false" minimizable="false"
        maximizable="false">
        <div class="easyui-layout" fit="true">
            <div region="center" border="false" style="padding: 10px; background: #fff; border: 1px solid #ccc;">
                <table>
                    <tr>
                        <td>旧密码：
                        </td>
                        <td>
                            <input type="password" id="iptOldPassword" />
                        </td>
                    </tr>
                    <tr>
                        <td>新密码：
                        </td>
                        <td>
                            <input type="password" id="iptPassword" />
                        </td>
                    </tr>
                    <tr>
                        <td>确认密码：
                        </td>
                        <td>
                            <input type="password" id="iptNewPassword" />
                        </td>
                    </tr>
                </table>
            </div>
            <div region="south" border="false" style="text-align: right; height: 30px; line-height: 30px;">
                <a class="easyui-linkbutton" iconcls="icon-ok" href="javascript:void(0)" onclick="changePassword()">确定</a> <a class="easyui-linkbutton" iconcls="icon-cancel" href="javascript:void(0)"
                    onclick="$('#winPassword').window('close');">取消</a>
            </div>
        </div>
    </div>--%>
</body>
</html>
