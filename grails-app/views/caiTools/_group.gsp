
<%@ page import="cn.edu.cup.cai.StudentGroup" %>
<!DOCTYPE html>
<div id="list-studentGroup" class="content scaffold-list" role="main">
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
            <tr>
                <td>编号</td>
                <td>组长</td>
                <td>人数</td>
                <td>状态(是否属于)</td>
                <td>课程</td>
                <td>操作</td>
            </tr>
        </thead>
        <tbody>
            <g:each in="${items}" status="i" var="e">
                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                    <td>${e.key.id}</td>
                    <td>${e.key.name}</td>
                    <td>${e.key.groupItem.size()}</td>
                    <td>${e.value}</td>
                    <td>${e.key}</td>
                    <td>
                        <g:if test="${e.value}">
                            <a href="caiTools/deleteGroupItem?group=${e.key.id}">退出</a>
                        </g:if>
                        <g:else>
                            <g:if test="${e.key.groupItem.size()<3}">
                                <a href="caiTools/joinIntoGroup?group=${e.key.id}">加入</a>
                            </g:if>
                            <g:else>
                                人数已满
                            </g:else>
                        </g:else>
                    </td>
                    <td></td>
                </tr>
            </g:each>
        </tbody>
    </table>
    <div class="paginationGrails">
        <g:paginate total="${studentGroupInstanceCount ?: 0}" />
    </div>
</div>
