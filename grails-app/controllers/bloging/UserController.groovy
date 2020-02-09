package bloging

class UserController {
    def userService
    def register()
    {
        User users = userService.enterDetails(params.firstName,params.lastName,params.username,params.password)
        Role roles = Role.findOrSaveWhere(authority: 'ROLE_CUSTOMER')
        UserRole.create users,roles,true
        [:]
    }
    def success()
    {}
}
