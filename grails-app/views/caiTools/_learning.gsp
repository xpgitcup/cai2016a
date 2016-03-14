
<%@ page import="cn.edu.cup.education.Learning" %>
<!DOCTYPE html>
<div id="list-learning" class="content scaffold-list" role="main">
    <table>
        <thead>
            <tr>
                <th><g:message code="learning.teaching.label" default="Teaching" /></th>
                <th><g:message code="learning.student.label" default="Student" /></th>
                <th>操作</th>
            </tr>
        </thead>
        <tbody>
            <g:each in="${learningInstanceList}" status="i" var="learningInstance">
                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                    <td><g:link action="show" id="${learningInstance.id}">${fieldValue(bean: learningInstance, field: "teaching")}</g:link></td>
                    <td>${fieldValue(bean: learningInstance, field: "student")}</td>
                    <td><g:link action="createGroup" controller="caiTools" id="${learningInstance.teaching.id}">我是CEO（自己当组长，创建小组）</g:link></td>
                </tr>
            </g:each>
        </tbody>
    </table>
    <div class="paginationGrails">
        <g:paginate total="${learningInstanceCount ?: 0}" />
    </div>
</div>
