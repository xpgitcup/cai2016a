package cn.edu.cup.cai.tools

import cn.edu.cup.cai.Student
import cn.edu.cup.cai.SchoolYear
import cn.edu.cup.cai.SchoolTerm
import cn.edu.cup.cai.StudentGroup
import cn.edu.cup.cai.GroupItem
import cn.edu.cup.education.Teaching
import cn.edu.cup.education.Learning
import cn.edu.cup.education.Homework
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CaiToolsController {

    /*
     * 加入小组
     * */
    @Transactional
    def joinIntoGroup() {
        println "退出小组：  ${params}"
        
        def group = StudentGroup.get(params.group)
        def student = session.currentStudent
        def item = GroupItem.findByStudentGroupAndStudent(group, student)
        if (!item) {
            item = new GroupItem(student: student, studentGroup: group)
            item.save(flush: true)
        }
        redirect(action: "index", controller: "caiTools")
    }
    
    /*
     * 退出小组
     * */
    @Transactional
    def deleteGroupItem() {
        println "退出小组：  ${params}"
        
        def group = StudentGroup.get(params.group)
        def student = session.currentStudent
        def item = GroupItem.findByStudentGroupAndStudent(group, student)
        if (item) {
            item.delete()
        }
        if (group.name.equals(student.name)) {
            group.delete()
        }
        redirect(action: "index", controller: "caiTools")
    }
    
    /*
     * 创建小组
     * */
    @Transactional
    def createGroup() {
        println "创建小组：  ${params}"
        def teaching = Teaching.get(params.id)
        def student = session.currentStudent
        def found = StudentGroup.findByTeachingAndName(teaching, student.name)
        if (!found) {
            def group = new StudentGroup(teaching: teaching, name: student.name)
            def groupItem = new GroupItem(studentGroup: group, student: student)
            group.save(flush: true)
            groupItem.save(flush: true)
        }
        redirect(action: "index", controller: "caiTools")
    }
    
    /*
     * 检索当前分组情况
     * */
    def queryGroup(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        
        println "检索分组情况    ${params}"
        
        //先检索所学的课程
        def learningList = Learning.findByStudent(session.currentStudent)
        def teachings = []
        learningList.each(){e->
            teachings.add(e.teaching)
        }
        //检索分组
        def qc = StudentGroup.createCriteria()
        def q = StudentGroup.createCriteria()
        def groups = q.list{
            'in'("teaching", teachings)
        }
        def items = [:]
        groups.each(){e->
            def found = GroupItem.findByStudentAndStudentGroup(session.currentStudent, e)
            if (found) {
                items.put(e, true)
            } else {
                items.put(e, false)
            }
        }
       
        if (request.xhr) {
            render(template: "group", model:[studentGroupInstanceList: groups, studentGroupInstanceCount: groups.size(), items: items])
        } else {
            model:[studentGroupInstanceList: groups, studentGroupInstanceCount: groups.size(), items: items]
        }
    }

    
    /*
     * 检索当前作业情况
     * */
    def queryHomework(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        
        println "检索作业    ${params}"
        
        //先检索所学的课程
        def learningList = Learning.findByStudent(session.currentStudent)
        def teachings = []
        learningList.each(){e->
            teachings.add(e.teaching)
        }
        //检索作业
        def qc = Homework.createCriteria()
        def q = Homework.createCriteria()
        def homeworks = q.list{
            'in'("teaching", teachings)
        }
       
        if (request.xhr) {
            render(template: "homework", model:[homeworkInstanceList: homeworks, homeworkInstanceCount: homeworks.size()])
        } else {
            model:[homeworkInstanceList: homeworks, homeworkInstanceCount: homeworks.size()]
        }
    }
    
    /*
     * 选课
     * */
    @Transactional
    def selectTheTeaching() {
        def t = Teaching.get(params.id)
        def l = Learning.findByTeachingAndStudent(t, session.currentStudent)
        if (!l) {
            l = new Learning(teaching: t, student: session.currentStudent)
            l.save(flush: true)
        }
        redirect(controller: "caiTools", action: "index")
    }
    
    /*
     * 列出所选课程
     * */
    def queryLearning(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        
        println "${params}"
        
        def learningList = Learning.findByStudent(session.currentStudent)
        println "${learningList}---"
        
        def q = Learning.createCriteria()
        def count = q.get {
            projections {
                countDistinct "teaching"
            }
            eq("student", session.currentStudent)
        }
        
        if (request.xhr) {
            render(template: "learning", model:[learningInstanceList: learningList, learningInstanceCount: count])
        } else {
            model:[learningInstanceList: learningList, learningInstanceCount: count]
        }
    }
    
    def queryTeaching(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        
        //println "${params}"
        
        def teachingList = Teaching.findBySchoolTerm(session.currentTerm)
        //println "${teachingList}---"
        
        if (request.xhr) {
            render(template: "teaching", model:[teachingInstanceList: teachingList, teachingInstanceCount: teachingList.count()])
        } else {
            model:[teachingInstanceList: teachingList, teachingInstanceCount: teachingList.count()]
        }
    }
    
    /*
     * 学生缺省界面
     * 显示基本信息
     * 显示所选课程
     * 显示需要完成的作业
     * 所属小组的信息
     * */
    def index() { 
        //用户名就是学生的学号
        def calendar = Calendar.getInstance()
        def year = calendar.get(Calendar.YEAR);
        def month = calendar.get(Calendar.MONTH);
        def schoolYear
        def schoolTerm
        def term
        def firstTerm = [8,9,10,11,12,1]
        //println "${month}, ${year}"
        if (firstTerm.contains(schoolYear)) {
            schoolYear = SchoolYear.findByStartYear(year)
            term = "秋"
        } else {
            schoolYear = SchoolYear.findByEndYear(year)
            term = "春"
        }
        schoolTerm = SchoolTerm.findBySchoolYearAndName(schoolYear, term)
        
        session.currentTerm = schoolTerm    //记录在会话中
        
        def student = Student.findByCode(session.user.userName)
        
        session.currentStudent = student
        
        model:[student: student, schoolYear: schoolYear, schoolTerm: schoolTerm]
    }
}
