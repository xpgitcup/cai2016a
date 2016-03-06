
<%@ page import="cn.edu.cup.education.Homework" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'homework.label', default: 'Homework')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-homework" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-homework" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list homework">
			
				<g:if test="${homeworkInstance?.taskDescription}">
				<li class="fieldcontain">
					<span id="taskDescription-label" class="property-label"><g:message code="homework.taskDescription.label" default="Task Description" /></span>
					
						<span class="property-value" aria-labelledby="taskDescription-label"><g:fieldValue bean="${homeworkInstance}" field="taskDescription"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${homeworkInstance?.teaching}">
				<li class="fieldcontain">
					<span id="teaching-label" class="property-label"><g:message code="homework.teaching.label" default="Teaching" /></span>
					
						<span class="property-value" aria-labelledby="teaching-label"><g:link controller="teaching" action="show" id="${homeworkInstance?.teaching?.id}">${homeworkInstance?.teaching?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:homeworkInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${homeworkInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
