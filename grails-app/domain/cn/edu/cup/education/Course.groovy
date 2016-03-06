package cn.edu.cup.education

class Course {

    String code
    String name
    
    static constraints = {
        code(unique: true)
        name()
    }
    
    String toString() {
        return "${code}/${name}"
    }
    
}
