package base.dk

import grails.rest.Resource

@Resource(uri='/books', formats=['json'])
class Entry {
    String property
    Date datePurchased
    BigDecimal amount
    BigDecimal pricePaid
    BigDecimal pricePer
    
    Date dateCreated
    Date lastUpdated

    static belongsTo = [account: Account]
    
    static constraints = {
        property nullable: false, blank: false
        datePurchased nullable: false, blank: true
        amount nullable: false, blank: true
        pricePaid nullable: true
        pricePer nullable: true

        dateCreated display: false
        lastUpdated display: false
    }
}
