<%@ page import="cn.edu.cup.cai.Teacher" %>



<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'code', 'error')} required">
	<label for="code">
		<g:message code="teacher.code.label" default="Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="code" required="" value="${teacherInstance?.code}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="teacher.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${teacherInstance?.name}"/>

</div>

