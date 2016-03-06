<%@ page import="cn.edu.cup.education.Homework" %>



<div class="fieldcontain ${hasErrors(bean: homeworkInstance, field: 'taskDescription', 'error')} required">
	<label for="taskDescription">
		<g:message code="homework.taskDescription.label" default="Task Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="taskDescription" required="" value="${homeworkInstance?.taskDescription}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: homeworkInstance, field: 'teaching', 'error')} required">
	<label for="teaching">
		<g:message code="homework.teaching.label" default="Teaching" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="teaching" name="teaching.id" from="${cn.edu.cup.education.Teaching.list()}" optionKey="id" required="" value="${homeworkInstance?.teaching?.id}" class="many-to-one"/>

</div>

