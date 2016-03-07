<%@ page import="cn.edu.cup.cai.GroupItem" %>



<div class="fieldcontain ${hasErrors(bean: groupItemInstance, field: 'student', 'error')} required">
	<label for="student">
		<g:message code="groupItem.student.label" default="Student" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="student" name="student.id" from="${cn.edu.cup.cai.Student.list()}" optionKey="id" required="" value="${groupItemInstance?.student?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: groupItemInstance, field: 'studentGroup', 'error')} required">
	<label for="studentGroup">
		<g:message code="groupItem.studentGroup.label" default="Student Group" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="studentGroup" name="studentGroup.id" from="${cn.edu.cup.cai.StudentGroup.list()}" optionKey="id" required="" value="${groupItemInstance?.studentGroup?.id}" class="many-to-one"/>

</div>

