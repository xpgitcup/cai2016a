
<%@ page import="cn.edu.cup.education.RandProject" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'randProject.label', default: 'RandProject')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-randProject" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-randProject" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list randProject">
			
				<g:if test="${randProjectInstance?.classNames}">
				<li class="fieldcontain">
					<span id="classNames-label" class="property-label"><g:message code="randProject.classNames.label" default="Class Names" /></span>
					
						<span class="property-value" aria-labelledby="classNames-label"><g:fieldValue bean="${randProjectInstance}" field="classNames"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${randProjectInstance?.groupNumbers}">
				<li class="fieldcontain">
					<span id="groupNumbers-label" class="property-label"><g:message code="randProject.groupNumbers.label" default="Group Numbers" /></span>
					
						<span class="property-value" aria-labelledby="groupNumbers-label"><g:fieldValue bean="${randProjectInstance}" field="groupNumbers"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${randProjectInstance?.memberNumbers}">
				<li class="fieldcontain">
					<span id="memberNumbers-label" class="property-label"><g:message code="randProject.memberNumbers.label" default="Member Numbers" /></span>
					
						<span class="property-value" aria-labelledby="memberNumbers-label"><g:fieldValue bean="${randProjectInstance}" field="memberNumbers"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${randProjectInstance?.projectDate}">
				<li class="fieldcontain">
					<span id="projectDate-label" class="property-label"><g:message code="randProject.projectDate.label" default="Project Date" /></span>
					
						<span class="property-value" aria-labelledby="projectDate-label"><g:formatDate date="${randProjectInstance?.projectDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${randProjectInstance?.items}">
				<li class="fieldcontain">
					<span id="items-label" class="property-label"><g:message code="randProject.items.label" default="Items" /></span>
					
						<g:each in="${randProjectInstance.items}" var="i">
						<span class="property-value" aria-labelledby="items-label"><g:link controller="randItem" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${randProjectInstance?.teaching}">
				<li class="fieldcontain">
					<span id="teaching-label" class="property-label"><g:message code="randProject.teaching.label" default="Teaching" /></span>
					
						<span class="property-value" aria-labelledby="teaching-label"><g:link controller="teaching" action="show" id="${randProjectInstance?.teaching?.id}">${randProjectInstance?.teaching?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:randProjectInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${randProjectInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
