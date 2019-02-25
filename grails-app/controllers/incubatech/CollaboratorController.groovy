package incubatech

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class CollaboratorController {

    CollaboratorService collaboratorService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond collaboratorService.list(params), model:[collaboratorCount: collaboratorService.count()]
    }

    def show(Long id) {
        respond collaboratorService.get(id)
    }

    def create() {
        respond new Collaborator(params)
    }

    def save(Collaborator collaborator) {
        if (collaborator == null) {
            notFound()
            return
        }

        try {
            collaboratorService.save(collaborator)
        } catch (ValidationException e) {
            respond collaborator.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'collaborator.label', default: 'Collaborator'), collaborator.id])
                redirect collaborator
            }
            '*' { respond collaborator, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond collaboratorService.get(id)
    }

    def update(Collaborator collaborator) {
        if (collaborator == null) {
            notFound()
            return
        }

        try {
            collaboratorService.save(collaborator)
        } catch (ValidationException e) {
            respond collaborator.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'collaborator.label', default: 'Collaborator'), collaborator.id])
                redirect collaborator
            }
            '*'{ respond collaborator, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        collaboratorService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'collaborator.label', default: 'Collaborator'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'collaborator.label', default: 'Collaborator'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
