package bloging

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_CUSTOMER'])
class CustomerController {
def springSecurityService
    def index() { }
    def create() {
        Integer user_id = springSecurityService.currentUserId
        User users = User.get(user_id)
        Blog blog = new Blog(params)
        blog.user = users
        blog.save()
    }
}
