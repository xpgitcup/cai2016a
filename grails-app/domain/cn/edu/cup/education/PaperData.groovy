package cn.edu.cup.education

class PaperData {

    Question question
    
    static belongsTo = [paper: Paper]
    
    static constraints = {
    }
    
    String toString() {
        return "${paper}.${question}"
    }
}
