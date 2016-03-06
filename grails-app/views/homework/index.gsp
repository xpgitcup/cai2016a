
<%@ page import="cn.edu.cup.education.Homework" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'homework.label', default: 'Homework')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-homework" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                       <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                           </ul>
                           </div>
                           <div id="list-homework" class="content scaffold-list" role="main">
                       <h1><g:message code="default.list.label" args="[entityName]" /></h1>
                        <g:if test="${flash.message}">
                            <div class="message" role="status">${flash.message}</div>
                        </g:if>
                        <table>
                            <thead>
                                <tr>
                                    
                                        <g:sortableColumn property="taskDescription" title="${message(code: 'homework.taskDescription.label', default: 'Task Description')}" />
                                        
                                    <th><g:message code="homework.teaching.label" default="Teaching" /></th>
                                        
                                </tr>
                            </thead>
                            <tbody>
                                <g:each in="${homeworkInstanceList}" status="i" var="homeworkInstance">
                                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                        
                                        <td><g:link action="show" id="${homeworkInstance.id}">${fieldValue(bean: homeworkInstance, field: "taskDescription")}</g:link></td>
                                        
                                        <td>${fieldValue(bean: homeworkInstance, field: "teaching")}</td>
                                        
                                    </tr>
                                </g:each>
                            </tbody>
                        </table>
                        <div class="paginationGrails">
                            <g:paginate total="${homeworkInstanceCount ?: 0}" />
                        </div>
                        </div>
                        </body>
                        </html>
