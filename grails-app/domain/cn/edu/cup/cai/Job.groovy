package cn.edu.cup.cai

import cn.edu.cup.education.Homework

class Job {

    Homework homework
    Student student
    StudentGroup studentGroup
    
    static constraints = {
        homework(nullable: true)
        student(nullable: true)
    }
    
    String toString() {
        return "${student}-${homework}";
    }
}
