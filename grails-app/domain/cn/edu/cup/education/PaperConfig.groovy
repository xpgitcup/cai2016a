package cn.edu.cup.education

class PaperConfig {
    
    QuestionType questionType
    Integer      numberOfQuestion
    
    static belongsTo = [paper: Paper]
    
    static constraints = {
    }
    
    String toString() {
        return "(${questionType},${numberOfQuestion})"
    }
}
