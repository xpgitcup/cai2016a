package cn.edu.cup.cai

import cn.edu.cup.education.Homework

class StudentGroup {

    String name
    Homework homework
    
    static hasMany = [groupItem: GroupItem]
    
    static constraints = {
        name()
        homework()
    }
    
    String toString() {
        return "${name}.${homework}"
    }
}
