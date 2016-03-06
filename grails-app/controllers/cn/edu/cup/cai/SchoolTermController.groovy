package cn.edu.cup.cai



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SchoolTermController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond SchoolTerm.list(params), model:[schoolTermInstanceCount: SchoolTerm.count()]
    }

    def show(SchoolTerm schoolTermInstance) {
        respond schoolTermInstance
    }

    def create() {
        respond new SchoolTerm(params)
    }

    @Transactional
    def save(SchoolTerm schoolTermInstance) {
        if (schoolTermInstance == null) {
            notFound()
            return
        }

        if (schoolTermInstance.hasErrors()) {
            respond schoolTermInstance.errors, view:'create'
            return
        }

        schoolTermInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'schoolTerm.label', default: 'SchoolTerm'), schoolTermInstance.id])
                redirect schoolTermInstance
            }
            '*' { respond schoolTermInstance, [status: CREATED] }
        }
    }

    def edit(SchoolTerm schoolTermInstance) {
        respond schoolTermInstance
    }

    @Transactional
    def update(SchoolTerm schoolTermInstance) {
        if (schoolTermInstance == null) {
            notFound()
            return
        }

        if (schoolTermInstance.hasErrors()) {
            respond schoolTermInstance.errors, view:'edit'
            return
        }

        schoolTermInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'SchoolTerm.label', default: 'SchoolTerm'), schoolTermInstance.id])
                redirect schoolTermInstance
            }
            '*'{ respond schoolTermInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(SchoolTerm schoolTermInstance) {

        if (schoolTermInstance == null) {
            notFound()
            return
        }

        schoolTermInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'SchoolTerm.label', default: 'SchoolTerm'), schoolTermInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'schoolTerm.label', default: 'SchoolTerm'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
