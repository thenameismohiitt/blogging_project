package bloging

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString
import grails.compiler.GrailsCompileStatic

@GrailsCompileStatic
@EqualsAndHashCode(includes='username')
@ToString(includes='username', includeNames=true, includePackage=false)
class User implements Serializable {

    private static final long serialVersionUID = 1

    String firstName
    String lastName
    String username
    String password
    String email
    boolean enabled = true
    boolean accountExpired
    boolean accountLocked
    boolean passwordExpired
    static hasMany = [blog:Blog]
    /*User(String firstName,String lastName,String username,String password)
    {
        this.firstName = firstName
        this.lastName = lastName
        this.username = username
        this.password = password
    }*/

    Set<Role> getAuthorities() {
        (UserRole.findAllByUser(this) as List<UserRole>)*.role as Set<Role>
    }

    static constraints = {
        firstName size: 3..15,blank: false,unique: false
        lastName size: 3..15,blank: false,unique: false
        password blank: false, password: true
        username blank: false, unique: true
        email blank: false, unique: true
    }

    static mapping = {
	    password column: '`password`'
    }
}
