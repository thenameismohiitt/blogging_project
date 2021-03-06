package bloging

class Blog {
    String title
    String content
    static belongsTo = [user:User]
    static constraints = {
        title nullable: false,unique: false
        content nullable: false,unique: false
    }

}
