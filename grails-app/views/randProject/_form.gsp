<%@ page import="cn.edu.cup.education.RandProject" %>



<div class="fieldcontain ${hasErrors(bean: randProjectInstance, field: 'classNames', 'error')} required">
	<label for="classNames">
		<g:message code="randProject.classNames.label" default="Class Names" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="classNames" required="" value="${randProjectInstance?.classNames}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: randProjectInstance, field: 'groupNumbers', 'error')} required">
	<label for="groupNumbers">
		<g:message code="randProject.groupNumbers.label" default="Group Numbers" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="groupNumbers" required="" value="${randProjectInstance?.groupNumbers}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: randProjectInstance, field: 'memberNumbers', 'error')} required">
	<label for="memberNumbers">
		<g:message code="randProject.memberNumbers.label" default="Member Numbers" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="memberNumbers" required="" value="${randProjectInstance?.memberNumbers}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: randProjectInstance, field: 'projectDate', 'error')} required">
	<label for="projectDate">
		<g:message code="randProject.projectDate.label" default="Project Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="projectDate" precision="day"  value="${randProjectInstance?.projectDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: randProjectInstance, field: 'items', 'error')} ">
	<label for="items">
		<g:message code="randProject.items.label" default="Items" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${randProjectInstance?.items?}" var="i">
    <li><g:link controller="randItem" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="randItem" action="create" params="['randProject.id': randProjectInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'randItem.label', default: 'RandItem')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: randProjectInstance, field: 'teaching', 'error')} required">
	<label for="teaching">
		<g:message code="randProject.teaching.label" default="Teaching" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="teaching" name="teaching.id" from="${cn.edu.cup.education.Teaching.list()}" optionKey="id" required="" value="${randProjectInstance?.teaching?.id}" class="many-to-one"/>

</div>

