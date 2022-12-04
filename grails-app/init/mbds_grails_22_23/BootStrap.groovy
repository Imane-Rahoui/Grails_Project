package mbds_grails_22_23

import com.mbds.grails.Annonce
import com.mbds.grails.Illustration
import com.mbds.grails.Role
import com.mbds.grails.User
import com.mbds.grails.UserRole

class BootStrap {

    def init = { servletContext ->
        def userInstance1 = new User(username: "admin",password: "admin").save()
        def role = new Role(authority: "ROLE_ADMIN").save()
        UserRole.create(userInstance1, role, true)

        userInstance1 = new User(username: "moderator",password: "moderator").save()
        UserRole.create(userInstance1, role, true)
        role = new Role(authority: "ROLE_MODERATOR").save()
        UserRole.create(userInstance1, role, true)

        userInstance1 = new User(username: "client",password: "client").save()
        role = new Role(authority: "ROLE_CLIENT").save()
        UserRole.create(userInstance1,role, true);

        userInstance1 = new User(username: "Imane", password: "password").save()
        UserRole.create(userInstance1,role, true);
        def annonceInstance1 = new Annonce(title: "Honey 100% Naturel", description: "En ce début d’hiver, nous vous proposons 3 produits à prix réduit !", price: 549, active: Boolean.TRUE)
        annonceInstance1.addToIllustrations(new Illustration(filename: "miel1.jpg"))
        annonceInstance1.addToIllustrations(new Illustration(filename: "miel2.jpg"))
        annonceInstance1.addToIllustrations(new Illustration(filename: "miel3.jpg"))
        userInstance1.addToAnnonces(annonceInstance1)
        userInstance1.save(flush: true, failOnError: true)

        userInstance1 = new User(username: "Zohair", password: "password").save()
        UserRole.create(userInstance1,role, true);
        annonceInstance1 = new Annonce(title: "Holiday gifts", description: "Holiday simple pack", price: 247, active: Boolean.TRUE)
        annonceInstance1.addToIllustrations(new Illustration(filename: "cakes1.jpg"))
        annonceInstance1.addToIllustrations(new Illustration(filename: "cakes2.jpg"))
        annonceInstance1.addToIllustrations(new Illustration(filename: "cakes3.jpg"))
        annonceInstance1.addToIllustrations(new Illustration(filename: "cakes3.png"))
        annonceInstance1.addToIllustrations(new Illustration(filename: "cakes4.jpg"))
        userInstance1.addToAnnonces(annonceInstance1)
        userInstance1.save(flush: true, failOnError: true)

        userInstance1 = new User(username: "Mickel", password: "password").save()
        UserRole.create(userInstance1,role, true);
        annonceInstance1 = new Annonce(title: "Eau de parfum", description: "Le rêve couture. Une composition aux nombreuses couleurs dans un flacon paré d'un nœud extraordinaire.", price: 789, active: Boolean.TRUE)
        annonceInstance1.addToIllustrations(new Illustration(filename: "parfum1.jpg"))
        annonceInstance1.addToIllustrations(new Illustration(filename: "parfum2.jpg"))
        annonceInstance1.addToIllustrations(new Illustration(filename: "parfum3.jpg"))
        userInstance1.addToAnnonces(annonceInstance1)
        userInstance1.save(flush: true, failOnError: true)


    }
    def destroy = {

    }
}
