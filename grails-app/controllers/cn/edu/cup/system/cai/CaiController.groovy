package cn.edu.cup.system.cai

import cn.edu.cup.cai.Student
import cn.edu.cup.system.SystemRole
import cn.edu.cup.system.SystemUser
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CaiController {
    
    @Transactional
    def registerStudent() {
        println "${params}"
        
        Student studentInstance = new Student(params)
        studentInstance.save()
        
        params.userName = studentInstance.code
        params.password = "123456"
        params.repassword = "123456"
        
        if (params.password.equals(params.repassword)) {
            SystemRole role = SystemRole.findByRoleName("本科生")
            params.role = role
            SystemUser newUser = new SystemUser(params)
            newUser.save()
            println("${newUser}")
            chain(controller:'home', action:'login', params:params)
        } else {
            flash.message = "密码不一致"
            chain(controller:'home', action:'loginUI', params:[flash:flash])
        }
    }

    def index() { }
}
