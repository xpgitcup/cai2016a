package cn.edu.cup.cai

class Teacher {

    String code
    String name

    static constraints = {
    }
    
    String toString() {
        return "${code}/${name}"
    }
}
