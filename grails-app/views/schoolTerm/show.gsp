
<%@ page import="cn.edu.cup.cai.SchoolTerm" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'schoolTerm.label', default: 'SchoolTerm')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-schoolTerm" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-schoolTerm" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list schoolTerm">
			
				<g:if test="${schoolTermInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="schoolTerm.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${schoolTermInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${schoolTermInstance?.schoolYear}">
				<li class="fieldcontain">
					<span id="schoolYear-label" class="property-label"><g:message code="schoolTerm.schoolYear.label" default="School Year" /></span>
					
						<span class="property-value" aria-labelledby="schoolYear-label"><g:link controller="schoolYear" action="show" id="${schoolTermInstance?.schoolYear?.id}">${schoolTermInstance?.schoolYear?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:schoolTermInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${schoolTermInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
