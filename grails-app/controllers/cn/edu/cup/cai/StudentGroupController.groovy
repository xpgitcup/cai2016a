package cn.edu.cup.cai



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class StudentGroupController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond StudentGroup.list(params), model:[studentGroupInstanceCount: StudentGroup.count()]
    }

    def show(StudentGroup studentGroupInstance) {
        respond studentGroupInstance
    }

    def create() {
        respond new StudentGroup(params)
    }

    @Transactional
    def save(StudentGroup studentGroupInstance) {
        if (studentGroupInstance == null) {
            notFound()
            return
        }

        if (studentGroupInstance.hasErrors()) {
            respond studentGroupInstance.errors, view:'create'
            return
        }

        studentGroupInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'studentGroup.label', default: 'StudentGroup'), studentGroupInstance.id])
                redirect studentGroupInstance
            }
            '*' { respond studentGroupInstance, [status: CREATED] }
        }
    }

    def edit(StudentGroup studentGroupInstance) {
        respond studentGroupInstance
    }

    @Transactional
    def update(StudentGroup studentGroupInstance) {
        if (studentGroupInstance == null) {
            notFound()
            return
        }

        if (studentGroupInstance.hasErrors()) {
            respond studentGroupInstance.errors, view:'edit'
            return
        }

        studentGroupInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'StudentGroup.label', default: 'StudentGroup'), studentGroupInstance.id])
                redirect studentGroupInstance
            }
            '*'{ respond studentGroupInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(StudentGroup studentGroupInstance) {

        if (studentGroupInstance == null) {
            notFound()
            return
        }

        studentGroupInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'StudentGroup.label', default: 'StudentGroup'), studentGroupInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'studentGroup.label', default: 'StudentGroup'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
