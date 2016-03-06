package cn.edu.cup.cai

class SchoolYear {

    String name
    Integer startYear
    Integer endYear
    
    static hasMany = [schoolTerm: SchoolTerm]
    
    static constraints = {
    }
    
    def beforeInsert() {
        name.format("%d-%d", startYear, endYear)
    }
    
    String toString() {
        return "${name}"
    }
}
