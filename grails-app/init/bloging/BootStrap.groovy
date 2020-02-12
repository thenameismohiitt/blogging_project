package bloging
import org.springframework.security.web.access.channel.ChannelDecisionManagerImpl
import bloging.User
import bloging.Role
import bloging.UserRole

class BootStrap {

    def init = { servletContext ->

        User testUser = User.findOrSaveWhere(firstName: 'Mohit', lastName: 'Chandani', username: 'mohiitt', password: 'pass', email: 'mohit@gmail.com')
        User testUserTwo = User.findOrSaveWhere(firstName: 'Parineeta', lastName: 'Jain', username: 'parineet', password: 'pass', email: 'pari@gmail.com')
        User testUserThree = User.findOrSaveWhere(firstName: 'Anuj', lastName: 'Kumar', username: 'anujk', password: 'pass', email: 'anujk5301@gmail.com')
        User testUserAdmin = bloging.User.findOrSaveWhere(firstName: 'Mohit', lastName: 'Chandani', username: 'thenameismohiitt', password: 'passw', email: 'mohitchandani50@gmail.com')
        Role testRole = Role.findOrSaveWhere(authority: 'ROLE_CUSTOMER')
        Role testRoleTwo = Role.findOrSaveWhere(authority: 'ROLE_ADMIN')
        if (!testUserAdmin.authorities.contains(testRoleTwo)) {
            UserRole.create testUserAdmin, testRoleTwo, true
        }
        if (!testUser.authorities.contains(testRoleTwo)) {
            UserRole.create testUser, testRole, true
        }
        if (!testUserTwo.authorities.contains(testRoleTwo))
        {
            UserRole.create testUserTwo,testRole,true
        }
        if (!testUserThree.authorities.contains(testRoleTwo))
        {
            UserRole.create testUserThree,testRole,true
        }
    }
    def destroy = {
    }
}
