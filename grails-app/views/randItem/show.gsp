
<%@ page import="cn.edu.cup.education.RandItem" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'randItem.label', default: 'RandItem')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-randItem" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-randItem" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list randItem">
			
				<g:if test="${randItemInstance?.className}">
				<li class="fieldcontain">
					<span id="className-label" class="property-label"><g:message code="randItem.className.label" default="Class Name" /></span>
					
						<span class="property-value" aria-labelledby="className-label"><g:fieldValue bean="${randItemInstance}" field="className"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${randItemInstance?.groupName}">
				<li class="fieldcontain">
					<span id="groupName-label" class="property-label"><g:message code="randItem.groupName.label" default="Group Name" /></span>
					
						<span class="property-value" aria-labelledby="groupName-label"><g:fieldValue bean="${randItemInstance}" field="groupName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${randItemInstance?.memberName}">
				<li class="fieldcontain">
					<span id="memberName-label" class="property-label"><g:message code="randItem.memberName.label" default="Member Name" /></span>
					
						<span class="property-value" aria-labelledby="memberName-label"><g:fieldValue bean="${randItemInstance}" field="memberName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${randItemInstance?.ok}">
				<li class="fieldcontain">
					<span id="ok-label" class="property-label"><g:message code="randItem.ok.label" default="Ok" /></span>
					
						<span class="property-value" aria-labelledby="ok-label"><g:fieldValue bean="${randItemInstance}" field="ok"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${randItemInstance?.randProject}">
				<li class="fieldcontain">
					<span id="randProject-label" class="property-label"><g:message code="randItem.randProject.label" default="Rand Project" /></span>
					
						<span class="property-value" aria-labelledby="randProject-label"><g:link controller="randProject" action="show" id="${randItemInstance?.randProject?.id}">${randItemInstance?.randProject?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:randItemInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${randItemInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
