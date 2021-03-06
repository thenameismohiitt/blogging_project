package bloging

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_CUSTOMER'])
class CustomerController {
def springSecurityService
    def index() { }
    def create() {
        User user_id = springSecurityService.currentUser
        Blog blog = new Blog(params)
        blog.user = user_id
        blog.save()
    }
    def show() {
        User user = springSecurityService.currentUser as User
        List results = Blog.createCriteria().list {
            eq('user', user)
            projections {
                property('title')
                property('content')
            }
        }
        [results:results]
    }
}
