package cn.edu.cup.education

import grails.transaction.Transactional

@Transactional(readOnly = true)
class RandToolsController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    @Transactional
    def draw() {
        def randProjectInstance = RandProject.get(params.id)
        Integer max = randProjectInstance.items.size()
        println "从${max}组中抽选！"
        
        def random = new Random()
        def k = random.nextInt(max)
        def randItemInstance = randProjectInstance.items[k]
        def count = 0
        
        while ((randItemInstance.ok) &&(count < 1000)) {
            k = random.nextInt(max)    
            randItemInstance = randProjectInstance.items[k]
            count++
        }
        
        def goon = count < max
        
        def m = Integer.parseInt(randItemInstance.memberName)
        println "从${m}中抽选一个人, ${count}"
        
        def p = random.nextInt(m)

        def ok = randItemInstance.ok
        randItemInstance.ok = ok + 1
        randItemInstance.save()
        
        if (request.xhr) {
            render(template:"drawResult", model:[randItemInstance:randItemInstance, student: p + 1, goon: goon])
        }
        else {
            model:[randItemInstance:randItemInstance, student: p, goon: goon]
        }
    }
    
    @Transactional
    def createItems(RandProject randProjectInstance) {
        randProjectInstance.createItems()
        redirect(controller: "randTools", action: "index")
    }
    
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond RandProject.list(params), model:[randProjectInstanceCount: RandProject.count()]
    }
    
}
