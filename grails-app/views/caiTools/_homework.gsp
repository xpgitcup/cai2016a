
<%@ page import="cn.edu.cup.education.Homework" %>
<!DOCTYPE html>

<div id="list-homework" class="content scaffold-list" role="main">
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
<div class="easyui-panel">
    <div class="easyui-pagination" id="student1" data-options="total:${studentGroupInstanceCount}, 
         pageSize:10, 
         onSelectPage: function (pageNumber, pageSize) {
         console.info(pageNumber);
         console.info(pageSize);
         $(this).pagination('loading');
         //alert('pageNumber:' + pageNumber + ',pageSize:' + pageSize);
         loadData(pageNumber, pageSize);
         $(this).pagination('loaded');
         }">
    </div>
</div>
