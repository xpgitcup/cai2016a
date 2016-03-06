package cn.edu.cup.education



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class LearningController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Learning.list(params), model:[learningInstanceCount: Learning.count()]
    }

    def show(Learning learningInstance) {
        respond learningInstance
    }

    def create() {
        respond new Learning(params)
    }

    @Transactional
    def save(Learning learningInstance) {
        if (learningInstance == null) {
            notFound()
            return
        }

        if (learningInstance.hasErrors()) {
            respond learningInstance.errors, view:'create'
            return
        }

        learningInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'learning.label', default: 'Learning'), learningInstance.id])
                redirect learningInstance
            }
            '*' { respond learningInstance, [status: CREATED] }
        }
    }

    def edit(Learning learningInstance) {
        respond learningInstance
    }

    @Transactional
    def update(Learning learningInstance) {
        if (learningInstance == null) {
            notFound()
            return
        }

        if (learningInstance.hasErrors()) {
            respond learningInstance.errors, view:'edit'
            return
        }

        learningInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Learning.label', default: 'Learning'), learningInstance.id])
                redirect learningInstance
            }
            '*'{ respond learningInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Learning learningInstance) {

        if (learningInstance == null) {
            notFound()
            return
        }

        learningInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Learning.label', default: 'Learning'), learningInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'learning.label', default: 'Learning'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
