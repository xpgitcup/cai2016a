<%@ page import="cn.edu.cup.cai.StudentGroup" %>



<div class="fieldcontain ${hasErrors(bean: studentGroupInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="studentGroup.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${studentGroupInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentGroupInstance, field: 'teaching', 'error')} required">
	<label for="teaching">
		<g:message code="studentGroup.teaching.label" default="Teaching" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="teaching" name="teaching.id" from="${cn.edu.cup.education.Teaching.list()}" optionKey="id" required="" value="${studentGroupInstance?.teaching?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentGroupInstance, field: 'groupItem', 'error')} ">
	<label for="groupItem">
		<g:message code="studentGroup.groupItem.label" default="Group Item" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${studentGroupInstance?.groupItem?}" var="g">
    <li><g:link controller="groupItem" action="show" id="${g.id}">${g?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="groupItem" action="create" params="['studentGroup.id': studentGroupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'groupItem.label', default: 'GroupItem')])}</g:link>
</li>
</ul>


</div>

