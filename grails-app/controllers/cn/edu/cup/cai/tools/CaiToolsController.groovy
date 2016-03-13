package cn.edu.cup.cai.tools

import cn.edu.cup.cai.Student
import cn.edu.cup.cai.SchoolYear
import cn.edu.cup.cai.SchoolTerm
import cn.edu.cup.education.Teaching
import cn.edu.cup.education.Learning
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CaiToolsController {

    
    /*
     * 做作业
     * */
    def studentDoHomework() {
        
    }
    
    /*
     * 加入某个小组
     * */
    def studentJoinGroup() {
        
    }
    
    /*
     * 列出所选课程
     * */
    def queryLearning(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        
        println "${params}"
        
        def learningList = Learning.findByStudent(session.currentStudent)
        println "${learningList}---"
        
        if (request.xhr) {
            render(template: "learning", model:[learningInstanceList: learningList, learningInstanceCount: learningList.count()])
        } else {
            model:[learningInstanceList: learningList, learningInstanceCount: learningList.count()]
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
