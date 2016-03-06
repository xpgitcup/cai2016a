<%@ page import="cn.edu.cup.education.Course" %>



<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="course.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${courseInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'code', 'error')} required">
	<label for="code">
		<g:message code="course.code.label" default="Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="code" required="" value="${courseInstance?.code}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'knowledgePoint', 'error')} ">
	<label for="knowledgePoint">
		<g:message code="course.knowledgePoint.label" default="Knowledge Point" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${courseInstance?.knowledgePoint?}" var="k">
    <li><g:link controller="knowledgePoint" action="show" id="${k.id}">${k?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="knowledgePoint" action="create" params="['course.id': courseInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'knowledgePoint.label', default: 'KnowledgePoint')])}</g:link>
</li>
</ul>


</div>

