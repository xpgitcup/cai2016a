<%@ page import="cn.edu.cup.cai.SchoolYear" %>



<div class="fieldcontain ${hasErrors(bean: schoolYearInstance, field: 'startYear', 'error')} required">
	<label for="startYear">
		<g:message code="schoolYear.startYear.label" default="Start Year" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="startYear" type="number" value="${schoolYearInstance.startYear}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: schoolYearInstance, field: 'endYear', 'error')} required">
	<label for="endYear">
		<g:message code="schoolYear.endYear.label" default="End Year" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="endYear" type="number" value="${schoolYearInstance.endYear}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: schoolYearInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="schoolYear.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${schoolYearInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: schoolYearInstance, field: 'schoolTerm', 'error')} ">
	<label for="schoolTerm">
		<g:message code="schoolYear.schoolTerm.label" default="School Term" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${schoolYearInstance?.schoolTerm?}" var="s">
    <li><g:link controller="schoolTerm" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="schoolTerm" action="create" params="['schoolYear.id': schoolYearInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'schoolTerm.label', default: 'SchoolTerm')])}</g:link>
</li>
</ul>


</div>

