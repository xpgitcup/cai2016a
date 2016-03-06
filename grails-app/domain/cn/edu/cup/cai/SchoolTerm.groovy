package cn.edu.cup.cai

class SchoolTerm {
    
    String name
    
    static belongsTo = [schoolYear: SchoolYear]
    
    static constraints = {
    }
    
    String toString() {
        return "${schoolYear}.${name}"
    }
}
