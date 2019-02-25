package incubatech

class Collaborator {

    //Long id_collaborator
    Long company_id
    String name
    String email
    String CPF
    String sexo

    static constraints = {
        name blank: false, nullable: false
        email nullable: false, email: true
        CPF(nullable: false)
        sexo blank: false, nullable: false
    }
}
