<%@ page import="cn.edu.cup.cai.SchoolTerm" %>



<div class="fieldcontain ${hasErrors(bean: schoolTermInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="schoolTerm.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${schoolTermInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: schoolTermInstance, field: 'schoolYear', 'error')} required">
	<label for="schoolYear">
		<g:message code="schoolTerm.schoolYear.label" default="School Year" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="schoolYear" name="schoolYear.id" from="${cn.edu.cup.cai.SchoolYear.list()}" optionKey="id" required="" value="${schoolTermInstance?.schoolYear?.id}" class="many-to-one"/>

</div>

