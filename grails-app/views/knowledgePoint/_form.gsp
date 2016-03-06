<%@ page import="cn.edu.cup.education.KnowledgePoint" %>



<div class="fieldcontain ${hasErrors(bean: knowledgePointInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="knowledgePoint.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${knowledgePointInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: knowledgePointInstance, field: 'course', 'error')} required">
	<label for="course">
		<g:message code="knowledgePoint.course.label" default="Course" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="course" name="course.id" from="${cn.edu.cup.education.Course.list()}" optionKey="id" required="" value="${knowledgePointInstance?.course?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: knowledgePointInstance, field: 'question', 'error')} ">
	<label for="question">
		<g:message code="knowledgePoint.question.label" default="Question" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${knowledgePointInstance?.question?}" var="q">
    <li><g:link controller="question" action="show" id="${q.id}">${q?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="question" action="create" params="['knowledgePoint.id': knowledgePointInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'question.label', default: 'Question')])}</g:link>
</li>
</ul>


</div>

