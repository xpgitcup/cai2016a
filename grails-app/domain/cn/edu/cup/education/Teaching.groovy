package cn.edu.cup.education

import cn.edu.cup.cai.SchoolTerm
import cn.edu.cup.cai.Teacher

class Teaching {

    SchoolTerm schoolTerm
    Teacher    teacher
    Course     course
    
    static constraints = {
        schoolTerm()
        teacher()
        course()
    }
    
    String toString() {
        return "${course}-${schoolTerm}-${teacher}"
    }
}
