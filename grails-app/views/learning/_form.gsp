<%@ page import="cn.edu.cup.education.Learning" %>



<div class="fieldcontain ${hasErrors(bean: learningInstance, field: 'teaching', 'error')} required">
	<label for="teaching">
		<g:message code="learning.teaching.label" default="Teaching" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="teaching" name="teaching.id" from="${cn.edu.cup.education.Teaching.list()}" optionKey="id" required="" value="${learningInstance?.teaching?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: learningInstance, field: 'student', 'error')} required">
	<label for="student">
		<g:message code="learning.student.label" default="Student" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="student" name="student.id" from="${cn.edu.cup.cai.Student.list()}" optionKey="id" required="" value="${learningInstance?.student?.id}" class="many-to-one"/>

</div>

