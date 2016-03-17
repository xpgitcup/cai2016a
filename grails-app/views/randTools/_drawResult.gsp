<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sample title</title>
    </head>
    <body>
        <table class="drawResult" id="realTimeDraw">
            <tr>
                <td>班级</td>
                <td>组号</td>
                <td>成员</td>
                <td>抽选次数</td>
                <td>状态</td>
            </tr>
            <tr>
                <td><g:link action="show" id="${randItemInstance.id}">${fieldValue(bean: randItemInstance, field: "className")}</g:link></td>
                <td>第${fieldValue(bean: randItemInstance, field: "groupName")}组</td>
                <td>${student}#同学</td>
                <td>${randItemInstance.ok}</td>
                <td>
                    <g:if test="${goon}">
                    </g:if>
                    <g:else>
                        已经抽选一遍了！
                    </g:else>
                </td>
            </tr>
        </table>
    </body>
</html>
