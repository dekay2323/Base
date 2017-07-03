package base.dk

import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional

@Transactional(readOnly = true)
class BookController {

    static scaffold = Book

}
