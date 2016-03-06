<%@ page import="cn.edu.cup.education.Teaching" %>



<div class="fieldcontain ${hasErrors(bean: teachingInstance, field: 'schoolTerm', 'error')} required">
	<label for="schoolTerm">
		<g:message code="teaching.schoolTerm.label" default="School Term" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="schoolTerm" name="schoolTerm.id" from="${cn.edu.cup.cai.SchoolTerm.list()}" optionKey="id" required="" value="${teachingInstance?.schoolTerm?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: teachingInstance, field: 'teacher', 'error')} required">
	<label for="teacher">
		<g:message code="teaching.teacher.label" default="Teacher" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="teacher" name="teacher.id" from="${cn.edu.cup.cai.Teacher.list()}" optionKey="id" required="" value="${teachingInstance?.teacher?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: teachingInstance, field: 'course', 'error')} required">
	<label for="course">
		<g:message code="teaching.course.label" default="Course" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="course" name="course.id" from="${cn.edu.cup.education.Course.list()}" optionKey="id" required="" value="${teachingInstance?.course?.id}" class="many-to-one"/>

</div>

