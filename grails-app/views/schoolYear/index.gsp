
<%@ page import="cn.edu.cup.cai.SchoolYear" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'schoolYear.label', default: 'SchoolYear')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-schoolYear" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                       <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                           </ul>
                           </div>
                           <div id="list-schoolYear" class="content scaffold-list" role="main">
                       <h1><g:message code="default.list.label" args="[entityName]" /></h1>
                        <g:if test="${flash.message}">
                            <div class="message" role="status">${flash.message}</div>
                        </g:if>
                        <table>
                            <thead>
                                <tr>
                                    
                                        <g:sortableColumn property="endYear" title="${message(code: 'schoolYear.endYear.label', default: 'End Year')}" />
                                        
                                        <g:sortableColumn property="name" title="${message(code: 'schoolYear.name.label', default: 'Name')}" />
                                        
                                        <g:sortableColumn property="startYear" title="${message(code: 'schoolYear.startYear.label', default: 'Start Year')}" />
                                        
                                </tr>
                            </thead>
                            <tbody>
                                <g:each in="${schoolYearInstanceList}" status="i" var="schoolYearInstance">
                                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                        
                                        <td><g:link action="show" id="${schoolYearInstance.id}">${fieldValue(bean: schoolYearInstance, field: "endYear")}</g:link></td>
                                        
                                        <td>${fieldValue(bean: schoolYearInstance, field: "name")}</td>
                                        
                                        <td>${fieldValue(bean: schoolYearInstance, field: "startYear")}</td>
                                        
                                    </tr>
                                </g:each>
                            </tbody>
                        </table>
                        <div class="paginationGrails">
                            <g:paginate total="${schoolYearInstanceCount ?: 0}" />
                        </div>
                        </div>
                        </body>
                        </html>
