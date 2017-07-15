<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="\${message(code: '${propertyName}.label', default: '${className}')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        %{-- NAVBAR--}%
        <nav class="navbar navbar-toggleable-md navbar-light bg-faded">
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand" href="#">Navbar</a>
    
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="\${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="#">Disabled</a>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="text" placeholder="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                </form>
            </div>
        </nav>
    
        %{-- NAV--}%
        <ul class="nav">
            <li class="nav-item">
                <a class="nav-link active" href="#">Index</a>
            </li>
            <li class="nav-item">
                <g:link class="nav-link" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Link</a>
            </li>
            <li class="nav-item">
                <a class="nav-link disabled" href="#">Disabled</a>
            </li>
        </ul>

        %{-- CONTAINER--}%
        <div class="container" role="main">
            <div class="row">
                <div class="col">
                    <h1><g:message code="default.list.label" args="[entityName]" /></h1>
                </div>
            </div>
            <g:if test="\${flash.message}">
                <div class="alert alert-danger" role="alert">
                    <div class="message" role="status">\${flash.message}</div>
                </div>
            </g:if>

            %{-- TABLE --}%
            <f:table collection="\${${propertyName}List}" />
        </div>
    </body>
</html>