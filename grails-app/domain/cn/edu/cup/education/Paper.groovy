package cn.edu.cup.education

class Paper {
    
    String name
    
    static hasMany = [paperConfig: PaperConfig, paperData: PaperData]
    
    static constraints = {
    }
    
    static mapping() {
        paperData(order: 'question.questionType')
    }
    
    String toString() {
        return "${name}"
    }
    
}
