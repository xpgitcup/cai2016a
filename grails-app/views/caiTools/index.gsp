<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta name="layout" content="main">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>学生界面</title>
        <asset:javascript src="cai/cai4student.js"/>
    </head>
    <body>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><a class="list">选课</a></li>
                <li><a class="list">创建小组</a></li>
                <li><a class="list">加入小组</a></li>
                <li><a class="list">交作业</a></li>
            </ul>
        </div>
        <div id="list-course" class="content scaffold-list" role="main">
            <h1>欢迎${student}同学！[${student.grade}]</h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <table>
                <thead>
                    <tr>
                        <td colspan="2">课程</td>
                        <td colspan="2">作业</td>
                        <td colspan="2">小组</td>
                    </tr>
                    <tr>
                        <td>待选</td>
                        <td>已选</td>
                        <td>待完成</td>
                        <td>已完成</td>
                        <td>小组</td>
                        <td>小组</td>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <div id="learning"></div>
                        </td>
                        <td>
                            <div id="my_learning"></div>
                        </td>
                        <td>
                            <div id="homework"></div>
                        </td>
                        <td>
                            <div id="my_homework"></div>
                        </td>
                    </tr>
                </tbody>
            </table>
            <div class="paginationGrails">
                <g:paginate total="${courseInstanceCount ?: 0}" />
            </div>
        </div>

    </body>
</html>
