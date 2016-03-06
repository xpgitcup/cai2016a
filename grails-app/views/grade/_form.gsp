<%@ page import="cn.edu.cup.cai.Grade" %>



<div class="fieldcontain ${hasErrors(bean: gradeInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="grade.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${gradeInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: gradeInstance, field: 'student', 'error')} ">
	<label for="student">
		<g:message code="grade.student.label" default="Student" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${gradeInstance?.student?}" var="s">
    <li><g:link controller="student" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="student" action="create" params="['grade.id': gradeInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'student.label', default: 'Student')])}</g:link>
</li>
</ul>


</div>

