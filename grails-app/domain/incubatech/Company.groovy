package incubatech

class Company {
    
    //Long id_company
    String name
    Integer CNPJ
    String email
    
    static constraints = {
        name blank: false, nullable: false
        CNPJ(nullable: false) 
        email nullable: false, email: true
    }
}   