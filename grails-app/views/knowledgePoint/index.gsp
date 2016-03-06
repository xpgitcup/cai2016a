
<%@ page import="cn.edu.cup.education.KnowledgePoint" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'knowledgePoint.label', default: 'KnowledgePoint')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-knowledgePoint" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                       <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                           </ul>
                           </div>
                           <div id="list-knowledgePoint" class="content scaffold-list" role="main">
                       <h1><g:message code="default.list.label" args="[entityName]" /></h1>
                        <g:if test="${flash.message}">
                            <div class="message" role="status">${flash.message}</div>
                        </g:if>
                        <table>
                            <thead>
                                <tr>
                                    
                                        <g:sortableColumn property="name" title="${message(code: 'knowledgePoint.name.label', default: 'Name')}" />
                                        
                                    <th><g:message code="knowledgePoint.course.label" default="Course" /></th>
                                        
                                </tr>
                            </thead>
                            <tbody>
                                <g:each in="${knowledgePointInstanceList}" status="i" var="knowledgePointInstance">
                                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                        
                                        <td><g:link action="show" id="${knowledgePointInstance.id}">${fieldValue(bean: knowledgePointInstance, field: "name")}</g:link></td>
                                        
                                        <td>${fieldValue(bean: knowledgePointInstance, field: "course")}</td>
                                        
                                    </tr>
                                </g:each>
                            </tbody>
                        </table>
                        <div class="paginationGrails">
                            <g:paginate total="${knowledgePointInstanceCount ?: 0}" />
                        </div>
                        </div>
                        </body>
                        </html>
