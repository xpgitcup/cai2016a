package cn.edu.cup.cai

class SchoolYear {

    String name
    Integer startYear
    Integer endYear
    
    static hasMany = [schoolTerm: SchoolTerm]
    
    static constraints = {
        startYear()
        endYear()
        name(nullable: true)
    }
    
    def beforeInsert() {
        name = String.format("%d-%d", startYear, endYear)
    }
    
    String toString() {
        return "${name}"
    }
}
