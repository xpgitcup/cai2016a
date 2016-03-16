<%@ page import="cn.edu.cup.education.RandItem" %>



<div class="fieldcontain ${hasErrors(bean: randItemInstance, field: 'className', 'error')} required">
	<label for="className">
		<g:message code="randItem.className.label" default="Class Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="className" required="" value="${randItemInstance?.className}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: randItemInstance, field: 'groupName', 'error')} required">
	<label for="groupName">
		<g:message code="randItem.groupName.label" default="Group Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="groupName" required="" value="${randItemInstance?.groupName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: randItemInstance, field: 'memberName', 'error')} required">
	<label for="memberName">
		<g:message code="randItem.memberName.label" default="Member Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="memberName" required="" value="${randItemInstance?.memberName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: randItemInstance, field: 'ok', 'error')} required">
	<label for="ok">
		<g:message code="randItem.ok.label" default="Ok" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="ok" type="number" value="${randItemInstance.ok}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: randItemInstance, field: 'randProject', 'error')} required">
	<label for="randProject">
		<g:message code="randItem.randProject.label" default="Rand Project" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="randProject" name="randProject.id" from="${cn.edu.cup.education.RandProject.list()}" optionKey="id" required="" value="${randItemInstance?.randProject?.id}" class="many-to-one"/>

</div>

