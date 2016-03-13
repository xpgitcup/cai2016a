<div id="list-teaching" class="content scaffold-list" role="main">
    <table>
        <thead>
            <tr>
                <th><g:message code="teaching.schoolTerm.label" default="School Term" /></th>
            </tr>
        </thead>
        <tbody>
            <g:each in="${teachingInstanceList}" status="i" var="teachingInstance">
                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                    <td><g:link action="selectTheTeaching" controller="caiTools" id="${teachingInstance.id}">${teachingInstance}</g:link></td>
                </tr>
            </g:each>
        </tbody>
    </table>
    <div class="paginationGrails">
        <g:paginate total="${teachingInstanceCount ?: 0}" />
    </div>
</div>
