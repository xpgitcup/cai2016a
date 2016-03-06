package cn.edu.cup.cai



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SchoolYearController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond SchoolYear.list(params), model:[schoolYearInstanceCount: SchoolYear.count()]
    }

    def show(SchoolYear schoolYearInstance) {
        respond schoolYearInstance
    }

    def create() {
        respond new SchoolYear(params)
    }

    @Transactional
    def save(SchoolYear schoolYearInstance) {
        if (schoolYearInstance == null) {
            notFound()
            return
        }

        if (schoolYearInstance.hasErrors()) {
            respond schoolYearInstance.errors, view:'create'
            return
        }

        schoolYearInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'schoolYear.label', default: 'SchoolYear'), schoolYearInstance.id])
                redirect schoolYearInstance
            }
            '*' { respond schoolYearInstance, [status: CREATED] }
        }
    }

    def edit(SchoolYear schoolYearInstance) {
        respond schoolYearInstance
    }

    @Transactional
    def update(SchoolYear schoolYearInstance) {
        if (schoolYearInstance == null) {
            notFound()
            return
        }

        if (schoolYearInstance.hasErrors()) {
            respond schoolYearInstance.errors, view:'edit'
            return
        }

        schoolYearInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'SchoolYear.label', default: 'SchoolYear'), schoolYearInstance.id])
                redirect schoolYearInstance
            }
            '*'{ respond schoolYearInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(SchoolYear schoolYearInstance) {

        if (schoolYearInstance == null) {
            notFound()
            return
        }

        schoolYearInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'SchoolYear.label', default: 'SchoolYear'), schoolYearInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'schoolYear.label', default: 'SchoolYear'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
