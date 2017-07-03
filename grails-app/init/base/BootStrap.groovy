package base

import base.dk.Role
import base.dk.User
import base.dk.UserRole

class BootStrap {

    def init = { servletContext ->
        def adminRole = Role.findByAuthority('ROLE_ADMIN') ?: new Role(authority: 'ROLE_ADMIN', name: 'Admin').save(failOnError: true)
        def userRole = Role.findByAuthority('ROLE_USER') ?: new Role(authority: 'ROLE_USER', name: 'User').save(failOnError: true)

        def admin = User.findByUsername('admin') ?: new User(
                username: 'admin',
                email: 'dekay.2323@gmail.com',
                password: 'admin',
                enabled: true).save(failOnError: true)
        UserRole.findByUser(admin) ?: new UserRole(
                user: admin,
                role: adminRole).save(failOnError: true)

        User user = User.findByUsername('user1') ?: new User(
                username: 'user',
                email: 'dekay.2323@gmail.com',
                password: 'user',
                enabled: true).save(failOnError: true)
        UserRole.findByUser(user) ?: new UserRole(
                user: user,
                role: userRole).save(failOnError: true)
    }
    
    def destroy = {
    }
}
