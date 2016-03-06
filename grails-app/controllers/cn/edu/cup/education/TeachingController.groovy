package cn.edu.cup.education



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TeachingController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Teaching.list(params), model:[teachingInstanceCount: Teaching.count()]
    }

    def show(Teaching teachingInstance) {
        respond teachingInstance
    }

    def create() {
        respond new Teaching(params)
    }

    @Transactional
    def save(Teaching teachingInstance) {
        if (teachingInstance == null) {
            notFound()
            return
        }

        if (teachingInstance.hasErrors()) {
            respond teachingInstance.errors, view:'create'
            return
        }

        teachingInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'teaching.label', default: 'Teaching'), teachingInstance.id])
                redirect teachingInstance
            }
            '*' { respond teachingInstance, [status: CREATED] }
        }
    }

    def edit(Teaching teachingInstance) {
        respond teachingInstance
    }

    @Transactional
    def update(Teaching teachingInstance) {
        if (teachingInstance == null) {
            notFound()
            return
        }

        if (teachingInstance.hasErrors()) {
            respond teachingInstance.errors, view:'edit'
            return
        }

        teachingInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Teaching.label', default: 'Teaching'), teachingInstance.id])
                redirect teachingInstance
            }
            '*'{ respond teachingInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Teaching teachingInstance) {

        if (teachingInstance == null) {
            notFound()
            return
        }

        teachingInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Teaching.label', default: 'Teaching'), teachingInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'teaching.label', default: 'Teaching'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
