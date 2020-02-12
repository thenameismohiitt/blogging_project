package bloging

class UserController {
    def userService

    def register() {
        User users = userService.enterDetails(params.firstName, params.lastName, params.username, params.password, params.email)
        Role roles = Role.findOrSaveWhere(authority: 'ROLE_CUSTOMER')
        if (users && roles) {
            UserRole.create users, roles, true
            flash.message = "Successfully registered! Welcome to family happy blogging"
        } else {
            flash.message = "Your registeration fails"
        }
        redirect(controller: 'Welcome', action: 'register')
    }

}
