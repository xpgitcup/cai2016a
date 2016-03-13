package cn.edu.cup.cai

class Grade {

    String name
    
    static hasMany = [student: Student]
    
    static constraints = {
    }
    
    String toString() {
        return "${name}(共：${student?.size()}人)"
    }
}
