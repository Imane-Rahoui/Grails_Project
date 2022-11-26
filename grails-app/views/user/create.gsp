<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#create-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="create-user" class="content scaffold-create" role="main">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.user}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.user}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <form action="/user/save" method="post">
                <fieldset class="form">

                    <div class='fieldcontain required'>
                        <label for='username'>Username
                            <span class='required-indicator'>*</span>
                        </label><input type="text" name="username" value="" required="" id="username"/>
                    </div>
                    <div class='fieldcontain required'>
                        <label for='password'>Password
                            <span class='required-indicator'>*</span>
                        </label><input type="password" name="password" required="" value="" id="password"/>
                    </div>
                    <div class='fieldcontain required'>
                        <label for='role'>Role
                            <span class='required-indicator'>*</span>
                        </label>
                        <g:select id="type" name='roleList'
                                  from='${roleList}'
                                  optionKey="id" optionValue="authority"></g:select>
                    </div>

                </fieldset>

                <fieldset class="buttons">
                    <input type="submit" name="create" class="save" value="Create" id="create"/>
                </fieldset>
            </form>
        </div>
    </body>
</html>
