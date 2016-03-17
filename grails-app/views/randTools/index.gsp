
<%@ page import="cn.edu.cup.education.RandProject" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'randProject.label', default: 'RandProject')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    <asset:javascript src="cai/tools.js"/>
</head>
<body>
    <a href="#list-randProject" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
    <div id="list-randProject" class="content scaffold-list" role="main">
        <table>
            <thead>
                <tr>
                    <g:sortableColumn property="classNames" title="${message(code: 'randProject.classNames.label', default: 'Class Names')}" />
                    <g:sortableColumn property="groupNumbers" title="${message(code: 'randProject.groupNumbers.label', default: 'Group Numbers')}" />
                    <g:sortableColumn property="memberNumbers" title="${message(code: 'randProject.memberNumbers.label', default: 'Member Numbers')}" />
                    <g:sortableColumn property="projectDate" title="${message(code: 'randProject.projectDate.label', default: 'Project Date')}" />
                    <td>创建小组</td>
                    <td>抽签</td>
                </tr>
            </thead>
            <tbody>
                <g:each in="${randProjectInstanceList}" status="i" var="randProjectInstance">
                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                        <td><g:link action="show" id="${randProjectInstance.id}">${fieldValue(bean: randProjectInstance, field: "classNames")}</g:link></td>
                        <td>${fieldValue(bean: randProjectInstance, field: "groupNumbers")}</td>
                        <td>${fieldValue(bean: randProjectInstance, field: "memberNumbers")}</td>
                        <td><g:formatDate date="${randProjectInstance.projectDate}" /></td>
                        <td>
                            <g:if test="${!randProjectInstance.items?.size()}">
                                <g:link action="createItems" id="${randProjectInstance.id}">${fieldValue(bean: randProjectInstance, field: "classNames")}</g:link>
                            </g:if>
                            <g:else>
                                ${randProjectInstance.items?.size()}
                            </g:else>
                        </td>
                        <td>
                            <a href='javascript:draw(${randProjectInstance.id})'>抽选</a>
                        </td>
                    </tr>
                </g:each>
            </tbody>
        </table>
        <div class="pagination">
            <g:paginate total="${randProjectInstanceCount ?: 0}" />
        </div>
        <hr>
        <div id="drawResult"></div>
        <hr>
        <table id="drawed"></table>
    </div>
</body>
</html>
