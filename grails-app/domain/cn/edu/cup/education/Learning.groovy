package cn.edu.cup.education

import cn.edu.cup.cai.Student

class Learning {

    Teaching teaching
    Student  student
    
    static constraints = {
        teaching()
        student()
    }
    
    String toString() {
        return "${teaching}.${student}"
    }
    
}
