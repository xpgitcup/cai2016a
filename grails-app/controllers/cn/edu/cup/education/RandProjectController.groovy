package cn.edu.cup.education



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RandProjectController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond RandProject.list(params), model:[randProjectInstanceCount: RandProject.count()]
    }

    def show(RandProject randProjectInstance) {
        respond randProjectInstance
    }

    def create() {
        respond new RandProject(params)
    }

    @Transactional
    def save(RandProject randProjectInstance) {
        if (randProjectInstance == null) {
            notFound()
            return
        }

        if (randProjectInstance.hasErrors()) {
            respond randProjectInstance.errors, view:'create'
            return
        }

        randProjectInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'randProject.label', default: 'RandProject'), randProjectInstance.id])
                redirect randProjectInstance
            }
            '*' { respond randProjectInstance, [status: CREATED] }
        }
    }

    def edit(RandProject randProjectInstance) {
        respond randProjectInstance
    }

    @Transactional
    def update(RandProject randProjectInstance) {
        if (randProjectInstance == null) {
            notFound()
            return
        }

        if (randProjectInstance.hasErrors()) {
            respond randProjectInstance.errors, view:'edit'
            return
        }

        randProjectInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'RandProject.label', default: 'RandProject'), randProjectInstance.id])
                redirect randProjectInstance
            }
            '*'{ respond randProjectInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(RandProject randProjectInstance) {

        if (randProjectInstance == null) {
            notFound()
            return
        }

        randProjectInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'RandProject.label', default: 'RandProject'), randProjectInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'randProject.label', default: 'RandProject'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
