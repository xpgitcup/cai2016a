package cn.edu.cup.education



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class HomeworkController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Homework.list(params), model:[homeworkInstanceCount: Homework.count()]
    }

    def show(Homework homeworkInstance) {
        respond homeworkInstance
    }

    def create() {
        respond new Homework(params)
    }

    @Transactional
    def save(Homework homeworkInstance) {
        if (homeworkInstance == null) {
            notFound()
            return
        }

        if (homeworkInstance.hasErrors()) {
            respond homeworkInstance.errors, view:'create'
            return
        }

        homeworkInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'homework.label', default: 'Homework'), homeworkInstance.id])
                redirect homeworkInstance
            }
            '*' { respond homeworkInstance, [status: CREATED] }
        }
    }

    def edit(Homework homeworkInstance) {
        respond homeworkInstance
    }

    @Transactional
    def update(Homework homeworkInstance) {
        if (homeworkInstance == null) {
            notFound()
            return
        }

        if (homeworkInstance.hasErrors()) {
            respond homeworkInstance.errors, view:'edit'
            return
        }

        homeworkInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Homework.label', default: 'Homework'), homeworkInstance.id])
                redirect homeworkInstance
            }
            '*'{ respond homeworkInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Homework homeworkInstance) {

        if (homeworkInstance == null) {
            notFound()
            return
        }

        homeworkInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Homework.label', default: 'Homework'), homeworkInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'homework.label', default: 'Homework'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
