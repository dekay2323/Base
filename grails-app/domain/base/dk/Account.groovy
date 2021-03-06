package base.dk

import grails.rest.Resource

@Resource(uri='/books', formats=['json'])
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
