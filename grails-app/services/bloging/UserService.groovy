package bloging

import grails.gorm.transactions.Transactional

@Transactional
class UserService {

    def serviceMethod() {

    }
    User enterDetails(String firstName, String lastName, String username, String password, String email) {
        User users = new User()
        users.firstName = firstName
        users.lastName = lastName
        users.username = username
        users.password = password
        users.email = email
        users.save()
        return users
    }
}
