package cn.edu.cup.education



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RandItemController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond RandItem.list(params), model:[randItemInstanceCount: RandItem.count()]
    }

    def show(RandItem randItemInstance) {
        respond randItemInstance
    }

    def create() {
        respond new RandItem(params)
    }

    @Transactional
    def save(RandItem randItemInstance) {
        if (randItemInstance == null) {
            notFound()
            return
        }

        if (randItemInstance.hasErrors()) {
            respond randItemInstance.errors, view:'create'
            return
        }

        randItemInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'randItem.label', default: 'RandItem'), randItemInstance.id])
                redirect randItemInstance
            }
            '*' { respond randItemInstance, [status: CREATED] }
        }
    }

    def edit(RandItem randItemInstance) {
        respond randItemInstance
    }

    @Transactional
    def update(RandItem randItemInstance) {
        if (randItemInstance == null) {
            notFound()
            return
        }

        if (randItemInstance.hasErrors()) {
            respond randItemInstance.errors, view:'edit'
            return
        }

        randItemInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'RandItem.label', default: 'RandItem'), randItemInstance.id])
                redirect randItemInstance
            }
            '*'{ respond randItemInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(RandItem randItemInstance) {

        if (randItemInstance == null) {
            notFound()
            return
        }

        randItemInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'RandItem.label', default: 'RandItem'), randItemInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'randItem.label', default: 'RandItem'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
