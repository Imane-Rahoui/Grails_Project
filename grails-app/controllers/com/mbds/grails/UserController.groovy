package com.mbds.grails

import grails.plugin.springsecurity.annotation.Secured
import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

@Secured('ROLE_ADMIN')
class UserController {

    UserService userService
    UserRole userRole

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond userService.list(params), model:[userCount: userService.count()]
    }

    def show(Long id) {

        def user=userService.get(id)
        def roles = user.getAuthorities()
        //def role=UserRole.findByUser(user)
        println("ici"+roles)
        respond user,model:[roles: roles]
    }

    def create() {
        //println("create user")
        def roleList=Role.list()
        respond new User(params), model:[roleList: roleList]
    }

    def save(User user) {
        println("save user")
        if (user == null) {
            notFound()
            return
        }

        try {
            //userService.save(user)
            //def role=Role.findByAuthority("ROLE_ADMIN")
            //println("hii"+user)
            //UserRole.create(user,role,true);
            //println("yes")

            def role=Role.get(params.roleList)
            userService.save(user)
            UserRole.create(user,role,true);

        } catch (ValidationException e) {
            respond user.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), user.id])
                redirect user
            }
            '*' { respond user, [status: CREATED] }
        }
    }

    def edit(Long id) {
        def roleList=Role.list()
        respond userService.get(id),model:[roleList: roleList]
    }

    def update(User user) {
        if (user == null) {
            notFound()
            return
        }

        try {
            userService.save(user)
        } catch (ValidationException e) {
            respond user.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'user.label', default: 'User'), user.id])
                redirect user
            }
            '*'{ respond user, [status: OK] }
        }
    }

    @Secured("ROLE_ADMIN")
    def delete(Long id) {
        println("hihi")
        if (id == null) {
            notFound()
            return
        }

        def u=User.findById(id);
        u.getAuthorities().each {
            println(it)
            UserRole.remove(u,it)
        }
        userService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'user.label', default: 'User'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
