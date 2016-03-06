
<%@ page import="cn.edu.cup.cai.SchoolTerm" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'schoolTerm.label', default: 'SchoolTerm')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-schoolTerm" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                       <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                           </ul>
                           </div>
                           <div id="list-schoolTerm" class="content scaffold-list" role="main">
                       <h1><g:message code="default.list.label" args="[entityName]" /></h1>
                        <g:if test="${flash.message}">
                            <div class="message" role="status">${flash.message}</div>
                        </g:if>
                        <table>
                            <thead>
                                <tr>
                                    
                                        <g:sortableColumn property="name" title="${message(code: 'schoolTerm.name.label', default: 'Name')}" />
                                        
                                    <th><g:message code="schoolTerm.schoolYear.label" default="School Year" /></th>
                                        
                                </tr>
                            </thead>
                            <tbody>
                                <g:each in="${schoolTermInstanceList}" status="i" var="schoolTermInstance">
                                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                        
                                        <td><g:link action="show" id="${schoolTermInstance.id}">${fieldValue(bean: schoolTermInstance, field: "name")}</g:link></td>
                                        
                                        <td>${fieldValue(bean: schoolTermInstance, field: "schoolYear")}</td>
                                        
                                    </tr>
                                </g:each>
                            </tbody>
                        </table>
                        <div class="paginationGrails">
                            <g:paginate total="${schoolTermInstanceCount ?: 0}" />
                        </div>
                        </div>
                        </body>
                        </html>
