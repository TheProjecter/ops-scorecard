class ServiceController extends SecureController {
    
    def index = { redirect(action:list,params:params) }

    // the delete, save and update actions only accept POST requests
    def allowedMethods = [delete:'POST', save:'POST', update:'POST']

    def list = {
        if(!params.max) params.max = 10
        [ serviceList: Service.list( params ) ]
    }

    def show = {
        def service = Service.get( params.id )

        if(!service) {
            flash.message = "Service not found with id ${params.id}"
            redirect(action:list)
        }
        else { return [ service : service ] }
    }

    def delete = {
        def service = Service.get( params.id )
        if(service) {
            service.delete()
            flash.message = "Deleted: '${params.id}'"
            redirect(action:list)
        }
        else {
            flash.message = "Service not found with id ${params.id}"
            redirect(action:list)
        }
    }

    def edit = {
        def service = Service.get( params.id )

        if(!service) {
            flash.message = "Service not found with id ${params.id}"
            redirect(action:list)
        }
        else {
            return [ service : service ]
        }
    }

    def update = {
        def service = Service.get( params.id )
        if(service) {
            service.properties = params
            if(!service.hasErrors() && service.save()) {
                flash.message = "Updated: ${params.name}"
                redirect(action:list)
            }
            else {
                render(view:'edit',model:[service:service])
            }
        }
        else {
            flash.message = "Service not found with id ${params.id}"
            redirect(action:edit,id:params.id)
        }
    }

    def create = {
        def service = new Service()
        service.properties = params
        return ['service':service]
    }

    def save = {
        def service = new Service(params)
        if(!service.hasErrors() && service.save()) {
            flash.message = "Created: '${service.name}'"
            redirect(action:list)
        }
        else {
            render(view:'create',model:[service:service])
        }
    }
}