<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="\${message(code: '${propertyName}.label', default: '${className}')}" />
    <title></title>
</head>
<body>
%{-- NAV--}%
<ul class="nav">
    <li class="nav-item active">
        <g:link class="nav-link" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
    </li>
    <li class="nav-item">
        <g:link class="nav-link" action="create"><g:message code="default.add.label" args="[entityName]" /></g:link>
    </li>
</ul>

%{-- CONTAINER--}%
<div class="container" role="main">
    <div class="row">
        <div class="col">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <g:if test="\${flash.message}">
                <div class="alert alert-danger" role="alert">
                    <div class="message" role="status">\${flash.message}</div>
                </div>
            </g:if>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <g:hasErrors bean="\${this.${propertyName}}">
                <ul class="errors" role="alert">
                    <g:eachError bean="\${this.${propertyName}}" var="error">
                        <li <g:if test="\${error in org.springframework.validation.FieldError}">data-field-id="\${error.field}"</g:if>><g:message error="\${error}"/></li>
                    </g:eachError>
                </ul>
            </g:hasErrors>
        </div>
    </div>

    %{-- SHOW --}%
    <f:display bean="${propertyName}" />
    
    %{-- BUTTONS --}%
    <g:form resource="\${this.${propertyName}}" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit" action="edit" resource="\${this.${propertyName}}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
            <input class="delete" type="submit" value="\${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('\${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
        </fieldset>
    </g:form>
</div>
</body>
</html>
