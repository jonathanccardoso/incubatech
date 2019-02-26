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

   /* def toPdf = {
        def baseUri = request.scheme + "://" + request.serverName + ":" + request.serverPort + grailsAttributes.getApplicationUri(request)
    
        // Rendering View
        def company = Company.get(params.id)
        def render_result = g.render(template:"/company/pdf.gsp", model: [company: company])
    
        // creating PDF
        ByteArrayOutputStream baos = new ByteArrayOutputStream()
        //error renderer
        //ITextRenderer renderer = new ITextRenderer()
        final def renderer = new ITextRenderer()
        final ITextFontResolver fontResolver = renderer.getFontResolver();


        byte[] b
        renderer.setDocumentFromString(render_result.toString(), baseUri);
        renderer.layout()
        renderer.createPDF(baos)
        b = baos.toByteArray()
    
        // Sending file to the user
        response.setContentType("application/pdf")
        response.setHeader("Content-disposition", "attachment; filename=${company.name}.pdf")
        response.setContentLength(b.length)
        response.getOutputStream().write(b)
    }*/

}   