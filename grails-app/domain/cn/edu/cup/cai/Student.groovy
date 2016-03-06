package cn.edu.cup.cai

class Student {

    String code
    String name
    
    static belongsTo = [grade: Grade]
    
    static constraints = {
        code(unique: true)
        name()
    }
    
    String toString() {
        return "${code}/${name}"
    }
    
}
