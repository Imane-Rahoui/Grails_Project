<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'annonce.label', default: 'Annonce')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>

    <br>
    <div class="container-p-x">

        <div class="container">
         <fieldset class="buttons">
                <g:link class="create" action="create">
                    <g:submitButton name="create"  action="create" class="btn btn-primary d-grid w-100" value="New Annance"/>
                </g:link>
            </fieldset>
            <br>
            <g:form resource="${this.annonce}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="btn btn-primary d-grid w-100"  action="edit" resource="${this.annonce}">
                        <g:message class="btn btn-primary d-grid w-100" code="default.button.edit.label" default="Edit" />
                    </g:link>
                    <br>
                    <input class="btn btn-primary d-grid w-100" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
            <br>

            <h3 style="color: #696cff !important;"><g:message code="default.show.label" args="[entityName]" /></h3>
            <div style="text-align: center">
        <div id="show-annonce" class="content scaffold-show" role="main">
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>

            <ul class="property-list annonce" style="list-style: none">

                <li class="fieldcontain">
                    <U><strong><h5 style="color: #0f6674"><span id="title-label" class="property-label">Title</span></h5></strong></U>
                    <div class="property-value" aria-labelledby="title-label">
                        ${annonce.title}
                    </div>
                </li>
                <br>
                <li class="fieldcontain">
                    <U><strong><h5 style="color: #0f6674"><span id="description-label" class="property-label">Description</span></h5></strong></U>
                    <div class="property-value" aria-labelledby="description-label">
                            ${annonce.description}
                    </div>
                </li>
                <br>
                <li class="fieldcontain">
                    <U><strong><h5 style="color: #0f6674"><span id="author-label" class="property-label">Author</span></h5></strong></U>
                    <div class="property-value" aria-labelledby="author-label">
                        <g:link controller="user" action="show" id="${annonce.author.id}">
                            ${annonce.author.username}
                        </g:link>
                    </div>
                </li>
                <br>
                <li class="fieldcontain">
                    <U><strong><h5 style="color: #0f6674"><span id="illustrations-label" class="property-label">Illustrations</span></h5></strong>
                    <div class="property-value" aria-labelledby="illustrations-label">

                        <table class="table custom-table" style="margin: auto">
                            <g:each in="${annonce.illustrations}" var="ill" status="i">

                                <g:if  test="${i % 2 == 0}" >
                                    <tr>
                                    <td>
                                    <g:link controller="illustration" action="show"  id="${ill.id}">
                                        <g:img width="100" file="${ill.filename}" />
                                    </g:link>
                                    </td>
                                </g:if>

                                <g:else>
                                    <td>
                                        <g:link controller="illustration" action="show"  id="${ill.id}">
                                            <g:img width="100" height="100px" file="${ill.filename}" />
                                        </g:link>
                                    </td>
                                    </tr>
                                </g:else>
                            </g:each>
                        </table>

                    </div>
                </li>

            </ul>
        </div>
        </div>
        </div>
    </div>
    </body>
</html>
