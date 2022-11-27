package com.mbds.grails

import grails.plugin.springsecurity.annotation.Secured
import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

@Secured('ROLE_ADMIN')
class IllustrationController {

    IllustrationService illustrationService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond illustrationService.list(params), model:[illustrationCount: illustrationService.count()]
    }

    def show(Long id) {
        respond illustrationService.get(id)
    }

    /*def add(Long id){
        def annonce=Annonce.get(id);
        respond new Illustration(params), model:[annonce:annonce]
    }*/

    def create() {
        respond new Illustration(params)
    }
    /*def save(Annonce annonce) {
        println("ohh")
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
    }*/

    def edit(Long id) {
        respond illustrationService.get(id)
    }

    def update(Illustration illustration) {
        if (illustration == null) {
            notFound()
            return
        }

        try {
            illustrationService.save(illustration)
        } catch (ValidationException e) {
            respond illustration.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'illustration.label', default: 'Illustration'), illustration.id])
                redirect illustration
            }
            '*'{ respond illustration, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        illustrationService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'illustration.label', default: 'Illustration'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'illustration.label', default: 'Illustration'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
