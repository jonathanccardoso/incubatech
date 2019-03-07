<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>
</head>
<body>

    <!-- Header -->
    <header id="top" class="header">
        <div class="text-vertical-center">
            <h1>Start Bootstrap</h1>
            <h3>Free Bootstrap Themes &amp; Templates</h3>
            <br>
            <!--<a href="#about" class="btn btn-dark btn-lg">Find Out More</a>-->
            <g:link class="btn btn-dark btn-lg" url="[action:'redirect',controller:'company']">Find Out More</g:link>
        </div>
    </header>

    <!-- Portfolio -->
    <section id="portfolio" class="portfolio">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <h2>Our Work</h2>
                    <hr class="small">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="portfolio-item">
                                <a href="#">
                                    <g:img class="img-portfolio img-responsive" dir="images" file="bg-masthead.jpg" width="60%"/>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="portfolio-item">
                                <a href="#">
                                    <g:img dir="images" file="bg-masthead.jpg" width="60%"/>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="portfolio-item">
                                <a href="#">
                                    <g:img dir="images" file="bg-masthead.jpg" width="60%"/>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="portfolio-item">
                                <a href="#">
                                    <g:img dir="images" file="bg-masthead.jpg" width="60%"/>
                                </a>
                            </div>
                        </div>
                    </div>
                    <!-- /.row (nested) -->
                </div>
                <!-- /.col-lg-10 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </section>

    <!-- footer -->
    <footer class="footer text-center" style="background-color:#f6bd12;">
        <div class="container">
        <ul class="list-inline mb-5">
            <li class="list-inline-item">
            <a class="social-link rounded-circle text-white mr-3" href="#">
                <!--<i class="icon-social-facebook"></i>-->
                <i class="fab fa-facebook-square fa-3x"></i>
            </a>
            </li>
            <li class="list-inline-item">
            <a class="social-link rounded-circle text-white mr-3" href="#">
                <!--<i class="icon-social-twitter"></i>-->
                <i class="fab fa-twitter-square fa-3x"></i>
            </a>
            </li>
            <li class="list-inline-item">
            <a class="social-link rounded-circle text-white" href="#">
                <!--<i class="icon-social-github"></i>-->
                <i class="fab fa-github-square fa-3x"></i>
            </a>
            </li>
        </ul>
        <p class="text-muted small mb-0">Copyright © Your Website 2019</p>
        </div>
    </footer>

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded js-scroll-trigger" href="#top">
        <!--<i class="fas fa-angle-up"></i>-->
        <i class="fas fa-chevron-up"></i>
    </a>

<!--
    <content tag="nav">
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Application Status <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="#">Environment: ${grails.util.Environment.current.name}</a></li>
                <li><a href="#">App profile: ${grailsApplication.config.grails?.profile}</a></li>
                <li><a href="#">App version:
                    <g:meta name="info.app.version"/></a>
                </li>
                <li role="separator" class="divider"></li>
                <li><a href="#">Grails version:
                    <g:meta name="info.app.grailsVersion"/></a>
                </li>
                <li><a href="#">Groovy version: ${GroovySystem.getVersion()}</a></li>
                <li><a href="#">JVM version: ${System.getProperty('java.version')}</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="#">Reloading active: ${grails.util.Environment.reloadingAgentEnabled}</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Artefacts <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="#">Controllers: ${grailsApplication.controllerClasses.size()}</a></li>
                <li><a href="#">Domains: ${grailsApplication.domainClasses.size()}</a></li>
                <li><a href="#">Services: ${grailsApplication.serviceClasses.size()}</a></li>
                <li><a href="#">Tag Libraries: ${grailsApplication.tagLibClasses.size()}</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Installed Plugins <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <g:each var="plugin" in="${applicationContext.getBean('pluginManager').allPlugins}">
                    <li><a href="#">${plugin.name} - ${plugin.version}</a></li>
                </g:each>
            </ul>
        </li>
    </content>

    <div class="svg" role="presentation">
        <div class="grails-logo-container">
            <asset:image src="grails-cupsonly-logo-white.svg" class="grails-logo"/>
        </div>
    </div>

    <div id="content" role="main">
        <section class="row colset-2-its">
            <h1>Welcome to Grails</h1>

            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="row">
                            <div class="col-md-6">
                                
                                <button type="button" class="btn btn-success">
                                    Button
                                </button>
                            </div>
                            <div class="col-md-6">
                                
                                <button type="button" class="btn btn-success">
                                    Button
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <p>
                Congratulations, you have successfully started your first Grails application! At the moment
                this is the default page, feel free to modify it to either redirect to a controller or display
                whatever content you may choose. Below is a list of controllers that are currently deployed in
                this application, click on each to execute its default action:
            </p>

            <div id="controllers" role="navigation">
                <h2>Available Controllers:</h2>
                <ul>
                    <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                        <li class="controller">
                            <g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link>
                        </li>
                    </g:each>
                </ul>
            </div>
        </section>
    </div>
-->

</body>
</html>
