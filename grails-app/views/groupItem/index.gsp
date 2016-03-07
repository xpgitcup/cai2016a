
<%@ page import="cn.edu.cup.cai.GroupItem" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'groupItem.label', default: 'GroupItem')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-groupItem" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                       <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                           </ul>
                           </div>
                           <div id="list-groupItem" class="content scaffold-list" role="main">
                       <h1><g:message code="default.list.label" args="[entityName]" /></h1>
                        <g:if test="${flash.message}">
                            <div class="message" role="status">${flash.message}</div>
                        </g:if>
                        <table>
                            <thead>
                                <tr>
                                    
                                    <th><g:message code="groupItem.student.label" default="Student" /></th>
                                        
                                    <th><g:message code="groupItem.studentGroup.label" default="Student Group" /></th>
                                        
                                </tr>
                            </thead>
                            <tbody>
                                <g:each in="${groupItemInstanceList}" status="i" var="groupItemInstance">
                                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                        
                                        <td><g:link action="show" id="${groupItemInstance.id}">${fieldValue(bean: groupItemInstance, field: "student")}</g:link></td>
                                        
                                        <td>${fieldValue(bean: groupItemInstance, field: "studentGroup")}</td>
                                        
                                    </tr>
                                </g:each>
                            </tbody>
                        </table>
                        <div class="paginationGrails">
                            <g:paginate total="${groupItemInstanceCount ?: 0}" />
                        </div>
                        </div>
                        </body>
                        </html>
