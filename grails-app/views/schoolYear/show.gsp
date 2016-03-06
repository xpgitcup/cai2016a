
<%@ page import="cn.edu.cup.cai.SchoolYear" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'schoolYear.label', default: 'SchoolYear')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-schoolYear" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-schoolYear" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list schoolYear">
			
				<g:if test="${schoolYearInstance?.endYear}">
				<li class="fieldcontain">
					<span id="endYear-label" class="property-label"><g:message code="schoolYear.endYear.label" default="End Year" /></span>
					
						<span class="property-value" aria-labelledby="endYear-label"><g:fieldValue bean="${schoolYearInstance}" field="endYear"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${schoolYearInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="schoolYear.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${schoolYearInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${schoolYearInstance?.schoolTerm}">
				<li class="fieldcontain">
					<span id="schoolTerm-label" class="property-label"><g:message code="schoolYear.schoolTerm.label" default="School Term" /></span>
					
						<g:each in="${schoolYearInstance.schoolTerm}" var="s">
						<span class="property-value" aria-labelledby="schoolTerm-label"><g:link controller="schoolTerm" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${schoolYearInstance?.startYear}">
				<li class="fieldcontain">
					<span id="startYear-label" class="property-label"><g:message code="schoolYear.startYear.label" default="Start Year" /></span>
					
						<span class="property-value" aria-labelledby="startYear-label"><g:fieldValue bean="${schoolYearInstance}" field="startYear"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:schoolYearInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${schoolYearInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
