package cn.edu.cup.education

class RandItem {

    String className
    String groupName
    String memberName
    int ok
    
    static belongsTo = [randProject: RandProject]
    
    static constraints = {
        className()
        groupName()
        memberName()
        ok(nullable: true)
    }
    
    String toString() {
        return "${className}-${groupName}-${memberName}"
    }
}
