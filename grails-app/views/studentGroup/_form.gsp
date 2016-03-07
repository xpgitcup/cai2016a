<%@ page import="cn.edu.cup.cai.StudentGroup" %>



<div class="fieldcontain ${hasErrors(bean: studentGroupInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="studentGroup.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${studentGroupInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentGroupInstance, field: 'homework', 'error')} required">
	<label for="homework">
		<g:message code="studentGroup.homework.label" default="Homework" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="homework" name="homework.id" from="${cn.edu.cup.education.Homework.list()}" optionKey="id" required="" value="${studentGroupInstance?.homework?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentGroupInstance, field: 'student', 'error')} ">
	<label for="student">
		<g:message code="studentGroup.student.label" default="Student" />
		
	</label>
	<g:select name="student" from="${cn.edu.cup.cai.Student.list()}" multiple="multiple" optionKey="id" size="5" value="${studentGroupInstance?.student*.id}" class="many-to-many"/>

</div>

