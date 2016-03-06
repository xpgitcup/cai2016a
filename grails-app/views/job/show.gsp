
<%@ page import="cn.edu.cup.cai.Job" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'job.label', default: 'Job')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-job" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-job" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list job">
			
				<g:if test="${jobInstance?.homework}">
				<li class="fieldcontain">
					<span id="homework-label" class="property-label"><g:message code="job.homework.label" default="Homework" /></span>
					
						<span class="property-value" aria-labelledby="homework-label"><g:link controller="homework" action="show" id="${jobInstance?.homework?.id}">${jobInstance?.homework?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${jobInstance?.student}">
				<li class="fieldcontain">
					<span id="student-label" class="property-label"><g:message code="job.student.label" default="Student" /></span>
					
						<span class="property-value" aria-labelledby="student-label"><g:link controller="student" action="show" id="${jobInstance?.student?.id}">${jobInstance?.student?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${jobInstance?.studentGroup}">
				<li class="fieldcontain">
					<span id="studentGroup-label" class="property-label"><g:message code="job.studentGroup.label" default="Student Group" /></span>
					
						<span class="property-value" aria-labelledby="studentGroup-label"><g:link controller="studentGroup" action="show" id="${jobInstance?.studentGroup?.id}">${jobInstance?.studentGroup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:jobInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${jobInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
