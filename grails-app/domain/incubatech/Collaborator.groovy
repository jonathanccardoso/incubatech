package incubatech

class Collaborator {

    //Long id_collaborator
    //Long company_id
    String name
    String email
    String CPF
    String sexo
    
    //* empresas
    static hasMany = [companys: Company]

    // 1 colaborador pode haver * empresas

    static constraints = {
        name blank: false, nullable: false
        email nullable: false, email: true
        CPF(nullable: false)
        sexo blank: false, nullable: false
    }
}
