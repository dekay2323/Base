package base.dk

class Account {
    String name
    String description
    
    Date dateCreated
    Date lastUpdated
    
    static hasMany = [entries: Entry]

    static constraints = {
        name nullable: false, blank: false
        description nullable: true
        
        dateCreated display: false
        lastUpdated display: false
    }
}
