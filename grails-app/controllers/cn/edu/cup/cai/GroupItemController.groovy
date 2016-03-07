package cn.edu.cup.cai



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class GroupItemController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond GroupItem.list(params), model:[groupItemInstanceCount: GroupItem.count()]
    }

    def show(GroupItem groupItemInstance) {
        respond groupItemInstance
    }

    def create() {
        respond new GroupItem(params)
    }

    @Transactional
    def save(GroupItem groupItemInstance) {
        if (groupItemInstance == null) {
            notFound()
            return
        }

        if (groupItemInstance.hasErrors()) {
            respond groupItemInstance.errors, view:'create'
            return
        }

        groupItemInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'groupItem.label', default: 'GroupItem'), groupItemInstance.id])
                redirect groupItemInstance
            }
            '*' { respond groupItemInstance, [status: CREATED] }
        }
    }

    def edit(GroupItem groupItemInstance) {
        respond groupItemInstance
    }

    @Transactional
    def update(GroupItem groupItemInstance) {
        if (groupItemInstance == null) {
            notFound()
            return
        }

        if (groupItemInstance.hasErrors()) {
            respond groupItemInstance.errors, view:'edit'
            return
        }

        groupItemInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'GroupItem.label', default: 'GroupItem'), groupItemInstance.id])
                redirect groupItemInstance
            }
            '*'{ respond groupItemInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(GroupItem groupItemInstance) {

        if (groupItemInstance == null) {
            notFound()
            return
        }

        groupItemInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'GroupItem.label', default: 'GroupItem'), groupItemInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'groupItem.label', default: 'GroupItem'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
