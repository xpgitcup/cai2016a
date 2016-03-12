package cn.edu.cup.cai.tools

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
     * 学生选课
     * */
    def studentCourseSelection() {
        //选课以后返回
    }
    
    /*
     * 学生缺省界面
     * 显示基本信息
     * 显示所选课程
     * 显示需要完成的作业
     * 所属小组的信息
     * */
    def index() { }
}
