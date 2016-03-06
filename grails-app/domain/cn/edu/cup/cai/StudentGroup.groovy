package cn.edu.cup.cai

import cn.edu.cup.education.Homework

class StudentGroup {

    String name
    Homework homework
    
    static hasMany = [student: Student]
    
    static constraints = {
    }
    
    String toString() {
        return "${name}.${homework}"
    }
}
