package cn.edu.cup.cai

class StudentUser {

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
