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
        <title>Sample title</title>
    </head>
    <body>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><a class="home">选课</a></li>
                <li><a class="home">创建小组</a></li>
                <li><a class="home">加入小组</a></li>
                <li><a class="home">交作业</a></li>
            </ul>
        </div>
        <div id="list-course" class="content scaffold-list" role="main">
            <h1>欢迎${student}同学！</h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <table>
                <thead>
                    <tr>

                        <g:sortableColumn property="code" title="${message(code: 'course.code.label', default: 'Code')}" />

                        <g:sortableColumn property="name" title="${message(code: 'course.name.label', default: 'Name')}" />

                    </tr>
                </thead>
                <tbody>
                    <g:each in="${courseInstanceList}" status="i" var="courseInstance">
                        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                            <td><g:link action="show" id="${courseInstance.id}">${fieldValue(bean: courseInstance, field: "code")}</g:link></td>

                            <td>${fieldValue(bean: courseInstance, field: "name")}</td>

                        </tr>
                    </g:each>
                </tbody>
            </table>
            <div class="paginationGrails">
                <g:paginate total="${courseInstanceCount ?: 0}" />
            </div>
        </div>

    </body>
</html>
