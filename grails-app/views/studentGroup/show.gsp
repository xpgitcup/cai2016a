
<%@ page import="cn.edu.cup.cai.StudentGroup" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'studentGroup.label', default: 'StudentGroup')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-studentGroup" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-studentGroup" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list studentGroup">
			
				<g:if test="${studentGroupInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="studentGroup.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${studentGroupInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentGroupInstance?.homework}">
				<li class="fieldcontain">
					<span id="homework-label" class="property-label"><g:message code="studentGroup.homework.label" default="Homework" /></span>
					
						<span class="property-value" aria-labelledby="homework-label"><g:link controller="homework" action="show" id="${studentGroupInstance?.homework?.id}">${studentGroupInstance?.homework?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentGroupInstance?.groupItem}">
				<li class="fieldcontain">
					<span id="groupItem-label" class="property-label"><g:message code="studentGroup.groupItem.label" default="Group Item" /></span>
					
						<g:each in="${studentGroupInstance.groupItem}" var="g">
						<span class="property-value" aria-labelledby="groupItem-label"><g:link controller="groupItem" action="show" id="${g.id}">${g?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:studentGroupInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${studentGroupInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
