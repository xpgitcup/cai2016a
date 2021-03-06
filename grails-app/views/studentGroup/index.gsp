
<%@ page import="cn.edu.cup.cai.StudentGroup" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'studentGroup.label', default: 'StudentGroup')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-studentGroup" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                       <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                           </ul>
                           </div>
                           <div id="list-studentGroup" class="content scaffold-list" role="main">
                       <h1><g:message code="default.list.label" args="[entityName]" /></h1>
                        <g:if test="${flash.message}">
                            <div class="message" role="status">${flash.message}</div>
                        </g:if>
                        <table>
                            <thead>
                                <tr>
                                    
                                        <g:sortableColumn property="name" title="${message(code: 'studentGroup.name.label', default: 'Name')}" />
                                        
                                    <th><g:message code="studentGroup.teaching.label" default="Teaching" /></th>
                                        
                                </tr>
                            </thead>
                            <tbody>
                                <g:each in="${studentGroupInstanceList}" status="i" var="studentGroupInstance">
                                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                        
                                        <td><g:link action="show" id="${studentGroupInstance.id}">${fieldValue(bean: studentGroupInstance, field: "name")}</g:link></td>
                                        
                                        <td>${fieldValue(bean: studentGroupInstance, field: "teaching")}</td>
                                        
                                    </tr>
                                </g:each>
                            </tbody>
                        </table>
                        <div class="paginationGrails">
                            <g:paginate total="${studentGroupInstanceCount ?: 0}" />
                        </div>
                        </div>
                        </body>
                        </html>
