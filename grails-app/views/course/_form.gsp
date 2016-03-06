<%@ page import="cn.edu.cup.education.Course" %>



<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'code', 'error')} required">
	<label for="code">
		<g:message code="course.code.label" default="Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="code" required="" value="${courseInstance?.code}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="course.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${courseInstance?.name}"/>

</div>

