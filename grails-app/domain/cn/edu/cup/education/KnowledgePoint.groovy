package cn.edu.cup.education

class KnowledgePoint {

    String name
    
    static belongsTo = [course: Course]
    
    static hasMany = [question: Question]
    
    static constraints = {
        name(unique: true)
    }
    
    String toString() {
        return "${name}"
    }
}
