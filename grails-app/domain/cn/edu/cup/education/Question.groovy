package cn.edu.cup.education

class Question {

    String title
    String answer
    StudentUser student
    
    static belongsTo = [knowledgePoint: KnowledgePoint, questionType: QuestionType]
    
    static constraints = {
        title(unique: true)
        answer()
        student()
    }
    
    static mapping = {
        title(type:'text')
        answer(type:'text')
    }
    
    String toString() {
        return "${title}"
    }
}
