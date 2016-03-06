package cn.edu.cup.education

class QuestionType {

    String name
    
    static constraints = {
        name(unique: true)
    }
    
    String toString() {
        return "${name}"
    }
}
