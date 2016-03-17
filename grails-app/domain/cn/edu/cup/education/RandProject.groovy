package cn.edu.cup.education

class RandProject {
    
    String classNames
    String groupNumbers
    String memberNumbers
    Date   projectDate
    
    static belongsTo = [teaching: Teaching]
    
    static hasMany = [items: RandItem]
    
    static constraints = {
        classNames()
        groupNumbers()
        memberNumbers()
        projectDate()
    }
    
    def createItems() {
        String[] classes = classNames.split()
        String[] groups = groupNumbers.split()
        String[] members = memberNumbers.split()
        
        println "${classes}"
        println "${groups}"
        println "${members}"
        
        def items = []
        def groupNumber
        def mName
        def m = groups.size()
        classes.eachWithIndex() {e, i->
            if (i<m) {
                println "${i} ${e}"
                groupNumber = Integer.parseInt(groups[i])
                mName = members[i]
            }
            for (int k=0; k<groupNumber; k++) {
                def item = new RandItem(className: e, groupName: k + 1, memberName: mName, randProject: this)
                item.save(flush: true)
            }
        }
        model:[items: items]
    }
    
    String toString() {
        return "${classNames}"
    }
}
