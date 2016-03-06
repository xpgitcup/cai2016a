package cn.edu.cup.education



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class KnowledgePointController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond KnowledgePoint.list(params), model:[knowledgePointInstanceCount: KnowledgePoint.count()]
    }

    def show(KnowledgePoint knowledgePointInstance) {
        respond knowledgePointInstance
    }

    def create() {
        respond new KnowledgePoint(params)
    }

    @Transactional
    def save(KnowledgePoint knowledgePointInstance) {
        if (knowledgePointInstance == null) {
            notFound()
            return
        }

        if (knowledgePointInstance.hasErrors()) {
            respond knowledgePointInstance.errors, view:'create'
            return
        }

        knowledgePointInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'knowledgePoint.label', default: 'KnowledgePoint'), knowledgePointInstance.id])
                redirect knowledgePointInstance
            }
            '*' { respond knowledgePointInstance, [status: CREATED] }
        }
    }

    def edit(KnowledgePoint knowledgePointInstance) {
        respond knowledgePointInstance
    }

    @Transactional
    def update(KnowledgePoint knowledgePointInstance) {
        if (knowledgePointInstance == null) {
            notFound()
            return
        }

        if (knowledgePointInstance.hasErrors()) {
            respond knowledgePointInstance.errors, view:'edit'
            return
        }

        knowledgePointInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'KnowledgePoint.label', default: 'KnowledgePoint'), knowledgePointInstance.id])
                redirect knowledgePointInstance
            }
            '*'{ respond knowledgePointInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(KnowledgePoint knowledgePointInstance) {

        if (knowledgePointInstance == null) {
            notFound()
            return
        }

        knowledgePointInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'KnowledgePoint.label', default: 'KnowledgePoint'), knowledgePointInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'knowledgePoint.label', default: 'KnowledgePoint'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
