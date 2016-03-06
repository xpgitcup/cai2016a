package cn.edu.cup.cai



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class StudentUserController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond StudentUser.list(params), model:[studentUserInstanceCount: StudentUser.count()]
    }

    def show(StudentUser studentUserInstance) {
        respond studentUserInstance
    }

    def create() {
        respond new StudentUser(params)
    }

    @Transactional
    def save(StudentUser studentUserInstance) {
        if (studentUserInstance == null) {
            notFound()
            return
        }

        if (studentUserInstance.hasErrors()) {
            respond studentUserInstance.errors, view:'create'
            return
        }

        studentUserInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'studentUser.label', default: 'StudentUser'), studentUserInstance.id])
                redirect studentUserInstance
            }
            '*' { respond studentUserInstance, [status: CREATED] }
        }
    }

    def edit(StudentUser studentUserInstance) {
        respond studentUserInstance
    }

    @Transactional
    def update(StudentUser studentUserInstance) {
        if (studentUserInstance == null) {
            notFound()
            return
        }

        if (studentUserInstance.hasErrors()) {
            respond studentUserInstance.errors, view:'edit'
            return
        }

        studentUserInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'StudentUser.label', default: 'StudentUser'), studentUserInstance.id])
                redirect studentUserInstance
            }
            '*'{ respond studentUserInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(StudentUser studentUserInstance) {

        if (studentUserInstance == null) {
            notFound()
            return
        }

        studentUserInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'StudentUser.label', default: 'StudentUser'), studentUserInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'studentUser.label', default: 'StudentUser'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
