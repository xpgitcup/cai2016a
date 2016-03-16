
<%@ page import="cn.edu.cup.education.RandProject" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'randProject.label', default: 'RandProject')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-randProject" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                       <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                           </ul>
                           </div>
                           <div id="list-randProject" class="content scaffold-list" role="main">
                       <h1><g:message code="default.list.label" args="[entityName]" /></h1>
                        <g:if test="${flash.message}">
                            <div class="message" role="status">${flash.message}</div>
                        </g:if>
                        <table>
                            <thead>
                                <tr>
                                    
                                        <g:sortableColumn property="classNames" title="${message(code: 'randProject.classNames.label', default: 'Class Names')}" />
                                        
                                        <g:sortableColumn property="groupNumbers" title="${message(code: 'randProject.groupNumbers.label', default: 'Group Numbers')}" />
                                        
                                        <g:sortableColumn property="memberNumbers" title="${message(code: 'randProject.memberNumbers.label', default: 'Member Numbers')}" />
                                        
                                        <g:sortableColumn property="projectDate" title="${message(code: 'randProject.projectDate.label', default: 'Project Date')}" />
                                        
                                    <th><g:message code="randProject.teaching.label" default="Teaching" /></th>
                                        
                                </tr>
                            </thead>
                            <tbody>
                                <g:each in="${randProjectInstanceList}" status="i" var="randProjectInstance">
                                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                        
                                        <td><g:link action="show" id="${randProjectInstance.id}">${fieldValue(bean: randProjectInstance, field: "classNames")}</g:link></td>
                                        
                                        <td>${fieldValue(bean: randProjectInstance, field: "groupNumbers")}</td>
                                        
                                        <td>${fieldValue(bean: randProjectInstance, field: "memberNumbers")}</td>
                                        
                                        <td><g:formatDate date="${randProjectInstance.projectDate}" /></td>
                                        
                                        <td>${fieldValue(bean: randProjectInstance, field: "teaching")}</td>
                                        
                                    </tr>
                                </g:each>
                            </tbody>
                        </table>
                        <div class="paginationGrails">
                            <g:paginate total="${randProjectInstanceCount ?: 0}" />
                        </div>
                        </div>
                        </body>
                        </html>
