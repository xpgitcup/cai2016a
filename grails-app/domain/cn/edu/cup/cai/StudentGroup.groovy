package cn.edu.cup.cai

import cn.edu.cup.education.Teaching

class StudentGroup {

    String name
    Teaching teaching
    
    static hasMany = [groupItem: GroupItem]
    
    static constraints = {
        name()
        teaching()
    }
    
    String toString() {
        return "${name}.${teaching}"
    }
}
