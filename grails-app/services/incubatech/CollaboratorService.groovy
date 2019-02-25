package incubatech

import grails.gorm.services.Service

@Service(Collaborator)
interface CollaboratorService {

    Collaborator get(Serializable id)

    List<Collaborator> list(Map args)

    Long count()

    void delete(Serializable id)

    Collaborator save(Collaborator collaborator)

}