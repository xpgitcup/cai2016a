<div id="list-teaching" class="content scaffold-list" role="main">
    <table>
        <thead>
            <tr>
                <th><g:message code="teaching.schoolTerm.label" default="School Term" /></th>
                <th><g:message code="teaching.teacher.label" default="Teacher" /></th>
                <th><g:message code="teaching.course.label" default="Course" /></th>
            </tr>
        </thead>
        <tbody>
            <g:each in="${teachingInstanceList}" status="i" var="teachingInstance">
                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                    <td><g:link action="show" id="${teachingInstance.id}">${fieldValue(bean: teachingInstance, field: "schoolTerm")}</g:link></td>
                    <td>${fieldValue(bean: teachingInstance, field: "teacher")}</td>
                    <td>${fieldValue(bean: teachingInstance, field: "course")}</td>
                </tr>
            </g:each>
        </tbody>
    </table>
    <div class="paginationGrails">
        <g:paginate total="${teachingInstanceCount ?: 0}" />
    </div>
</div>
