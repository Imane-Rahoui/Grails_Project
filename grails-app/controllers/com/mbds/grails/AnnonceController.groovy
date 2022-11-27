package com.mbds.grails

import grails.plugin.springsecurity.SpringSecurityService
import grails.plugin.springsecurity.annotation.Secured
import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

@Secured(['ROLE_ADMIN'])
class AnnonceController {

    AnnonceService annonceService
    SpringSecurityService springSecurityService
    IllustrationService illustrationService
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        def currentLoggedInUser = ((User)springSecurityService.getCurrentUser());
        // def roles = springSecurityService.getPrincipal().getAuthorities()

        def roles = currentLoggedInUser.getAuthorities();
        def flag= Boolean.FALSE
        roles.each {
            //println(it.authority == "ROLE_ADMIN")
            if(it.authority == "ROLE_ADMIN") {
                flag=Boolean.TRUE
                respond annonceService.list(params), model: [annonceCount: annonceService.count()]
            }
        }
        if(flag==Boolean.FALSE)
            respond Annonce.findAllByAuthor(currentLoggedInUser), model:[annonceCount: annonceService.count()]

        // respond annonceService.list(params), model:[annonceCount: annonceService.count()]
    }

    def show(Long id) {
        respond annonceService.get(id)
    }

    def create() {
        def users = User.getAll()
        //def role=UserRole.findByUser(user)
        println("ici"+users)
        respond new Annonce(params),model:[users: users]
    }

    def save(Annonce annonce) {
        println("je suis là")
        if (annonce == null) {
            notFound()
            return
        }

        try {


            println(annonce)
            def x = request.getFiles('myillustration')

            x.each{

                if (it == null || it.empty){
                    flash.message = "ops no illustration found !!"
                    return
                }else{

                    def pool = ['a'..'z','A'..'Z',0..9,'_'].flatten()
                    Random rand = new Random(System.currentTimeMillis())
                    def randomTab = (0..10).collect { pool[rand.nextInt(pool.size())] }

                    def randomString =""
                    for (item in randomTab) {
                        randomString = randomString + item
                    }

                    randomString =  randomString + ".png"

                    def File = new File (grailsApplication.config.illustrations.basePath + randomString)

                    if (File.exists()){
                        flash.message = "already existing"
                        return
                    }else{
                        it.transferTo(File)
                        annonce.addToIllustrations(new Illustration(filename: randomString))
                    }
                }

            }

            annonceService.save(annonce)

        } catch (ValidationException e) {
            respond annonce.errors, view: 'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'annonce.label', default: 'Annonce'), annonce.id])
                redirect annonce
            }
            '*' { respond annonce, [status: CREATED] }
        }
    }
    def edit(Long id) {
        if (id == null) {
            notFound()
            return
        }

        println("hh")
        def an=annonceService.get(id);
        println(an)

        respond annonceService.get(id)

        // annonceService.(id)

    }
    def update(Annonce annonce) {
        if (annonce == null) {
            notFound()
            return
        }

        try {
            annonceService.save(annonce)

        } catch (ValidationException e) {
            respond annonce.errors, view: 'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'annonce.label', default: 'Annonce'), annonce.id])
                redirect annonce
            }
            '*' { respond annonce, [status: OK] }
        }
    }
    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        annonceService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'annonce.label', default: 'Annonce'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'annonce.label', default: 'Annonce'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
