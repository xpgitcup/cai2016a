package cn.edu.cup.cai

class GroupItem {

    Student student
    
    static belongsTo = [studentGroup: StudentGroup]
    
    static constraints = {
    }
    
    String toString() {
        return "${student}"
    }
}
