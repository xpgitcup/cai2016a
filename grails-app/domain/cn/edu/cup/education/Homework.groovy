package cn.edu.cup.education

class Homework {

    String   taskDescription
    Teaching teaching
   
    static constraints = {
        taskDescription()
        teaching()
    }
    
    String toString() {
        return "${taskDescription}"
    }
}
