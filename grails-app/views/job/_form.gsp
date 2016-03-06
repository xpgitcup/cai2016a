<%@ page import="cn.edu.cup.cai.Job" %>



<div class="fieldcontain ${hasErrors(bean: jobInstance, field: 'homework', 'error')} ">
	<label for="homework">
		<g:message code="job.homework.label" default="Homework" />
		
	</label>
	<g:select id="homework" name="homework.id" from="${cn.edu.cup.education.Homework.list()}" optionKey="id" value="${jobInstance?.homework?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: jobInstance, field: 'student', 'error')} ">
	<label for="student">
		<g:message code="job.student.label" default="Student" />
		
	</label>
	<g:select id="student" name="student.id" from="${cn.edu.cup.cai.Student.list()}" optionKey="id" value="${jobInstance?.student?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: jobInstance, field: 'studentGroup', 'error')} required">
	<label for="studentGroup">
		<g:message code="job.studentGroup.label" default="Student Group" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="studentGroup" name="studentGroup.id" from="${cn.edu.cup.cai.StudentGroup.list()}" optionKey="id" required="" value="${jobInstance?.studentGroup?.id}" class="many-to-one"/>

</div>

