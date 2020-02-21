package bloging

import grails.plugins.mail.MailService

class WelcomeController {
    MailService mailService

    def index() {
        List<Blog> blogs = Blog.findAll()
        [blogs: blogs]
    }

    def register() {}

    def login() {}

    def blog() {}

    def reset() {}

    def send() {
        User users = User.findByEmail(params.email)
        if (users != null) {
            mailService.sendMail {
                to "${params.email}"
                from "mmca2k18@gmail.com"
                subject "Reset Password"
                text "To reset the password click on the link http://localhost:8080/welcome/resetpassword"
            }
            flash.message = "Reset link sent at ${params.email}"
            redirect(action: 'reset')
        } else {
            flash.message = "You are not a authorized person"
            redirect(action: 'reset')
        }
    }

    def resetpassword() {}

    def res() {
        User user = User.findByEmail(params.email)
        if (user) {
            User.executeUpdate("update User set password = ? where username = ?", [params.password, users.username])
            flash.message = "Password successfully updated"
            redirect(action: 'resetpassword')
        }else {
            flash.message = "Mail doesnot exists"
            redirect(action: 'resetpassword')
        }
    }
}

