<%@ page import="cn.edu.cup.cai.StudentUser" %>



<div class="fieldcontain ${hasErrors(bean: studentUserInstance, field: 'code', 'error')} required">
	<label for="code">
		<g:message code="studentUser.code.label" default="Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="code" required="" value="${studentUserInstance?.code}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentUserInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="studentUser.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${studentUserInstance?.name}"/>

</div>

