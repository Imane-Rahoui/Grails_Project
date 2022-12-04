<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>

    <br>
    <div class="container-xxl">
        <div class="authentication-wrapper authentication-basic container-p-y">
            <div class="authentication-inner">
                <!-- Register -->
                <div class="card" >
                    <div class="card-body">
    <div class="container-p-x">

        <div class="container">
            <g:form resource="${this.user}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="btn btn-primary d-grid w-100" action="edit" resource="${this.user}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <br>
                    <input class="btn btn-primary d-grid w-100" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                    <br>
                    <g:link class="btn btn-primary d-grid w-100" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
                </fieldset>
            </g:form>
    <br>
            <div style="text-align: center">
        <div id="show-user" class="content scaffold-show" role="main">
            <h3 style="color: #696cff ;"><g:message code="default.show.label" args="[entityName]" /></h3>

            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>

            <ul class="property-list user" style="list-style: none">

                <li class="fieldcontain">
                    <U><strong><h5 style="color: #0f6674"><span id="username-label" class="property-label">Username</span></h5></strong></U>
                    <div class="property-value" aria-labelledby="username-label">${user?.username}</div>
                </li>
                    <br>
                <li class="fieldcontain">
                    <U><strong><h5 style="color: #0f6674"><span id="username-label" class="property-label">Role</span></h5></strong></U>
                    <g:each in="${roles}">
                        <div class="property-value" aria-labelledby="username-label">${it?.authority}</div>
                    </g:each>
                </li>


            </ul>
        </div>
        </div>
        </div>
    </div>
                    </div>
            </div>
            </div>
        </div>
    </div>
    </body>
</html>
