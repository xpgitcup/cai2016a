package cn.edu.cup.education

class Course {
    
    String name
    String code

    static hasMany = [knowledgePoint: KnowledgePoint]
    
    static constraints = {
        name()
        code(unique: true)
    }
    
    String toString() {
        return "${name}/${code}"
    }
    
}
