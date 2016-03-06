
<%@ page import="cn.edu.cup.education.KnowledgePoint" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'knowledgePoint.label', default: 'KnowledgePoint')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-knowledgePoint" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-knowledgePoint" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list knowledgePoint">
			
				<g:if test="${knowledgePointInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="knowledgePoint.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${knowledgePointInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${knowledgePointInstance?.course}">
				<li class="fieldcontain">
					<span id="course-label" class="property-label"><g:message code="knowledgePoint.course.label" default="Course" /></span>
					
						<span class="property-value" aria-labelledby="course-label"><g:link controller="course" action="show" id="${knowledgePointInstance?.course?.id}">${knowledgePointInstance?.course?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${knowledgePointInstance?.question}">
				<li class="fieldcontain">
					<span id="question-label" class="property-label"><g:message code="knowledgePoint.question.label" default="Question" /></span>
					
						<g:each in="${knowledgePointInstance.question}" var="q">
						<span class="property-value" aria-labelledby="question-label"><g:link controller="question" action="show" id="${q.id}">${q?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:knowledgePointInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${knowledgePointInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
