<%@ page import="cn.edu.cup.cai.Student" %>



<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'code', 'error')} required">
	<label for="code">
		<g:message code="student.code.label" default="Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="code" required="" value="${studentInstance?.code}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="student.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${studentInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'grade', 'error')} required">
	<label for="grade">
		<g:message code="student.grade.label" default="Grade" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="grade" name="grade.id" from="${cn.edu.cup.cai.Grade.list()}" optionKey="id" required="" value="${studentInstance?.grade?.id}" class="many-to-one"/>

</div>

