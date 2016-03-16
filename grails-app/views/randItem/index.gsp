
<%@ page import="cn.edu.cup.education.RandItem" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'randItem.label', default: 'RandItem')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-randItem" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                       <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                           </ul>
                           </div>
                           <div id="list-randItem" class="content scaffold-list" role="main">
                       <h1><g:message code="default.list.label" args="[entityName]" /></h1>
                        <g:if test="${flash.message}">
                            <div class="message" role="status">${flash.message}</div>
                        </g:if>
                        <table>
                            <thead>
                                <tr>
                                    
                                        <g:sortableColumn property="className" title="${message(code: 'randItem.className.label', default: 'Class Name')}" />
                                        
                                        <g:sortableColumn property="groupName" title="${message(code: 'randItem.groupName.label', default: 'Group Name')}" />
                                        
                                        <g:sortableColumn property="memberName" title="${message(code: 'randItem.memberName.label', default: 'Member Name')}" />
                                        
                                        <g:sortableColumn property="ok" title="${message(code: 'randItem.ok.label', default: 'Ok')}" />
                                        
                                    <th><g:message code="randItem.randProject.label" default="Rand Project" /></th>
                                        
                                </tr>
                            </thead>
                            <tbody>
                                <g:each in="${randItemInstanceList}" status="i" var="randItemInstance">
                                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                        
                                        <td><g:link action="show" id="${randItemInstance.id}">${fieldValue(bean: randItemInstance, field: "className")}</g:link></td>
                                        
                                        <td>${fieldValue(bean: randItemInstance, field: "groupName")}</td>
                                        
                                        <td>${fieldValue(bean: randItemInstance, field: "memberName")}</td>
                                        
                                        <td>${fieldValue(bean: randItemInstance, field: "ok")}</td>
                                        
                                        <td>${fieldValue(bean: randItemInstance, field: "randProject")}</td>
                                        
                                    </tr>
                                </g:each>
                            </tbody>
                        </table>
                        <div class="paginationGrails">
                            <g:paginate total="${randItemInstanceCount ?: 0}" />
                        </div>
                        </div>
                        </body>
                        </html>
