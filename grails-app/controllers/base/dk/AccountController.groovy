package base.dk

import grails.transaction.Transactional

@Transactional(readOnly = true)
class AccountController {
    static scaffold = Account
}
