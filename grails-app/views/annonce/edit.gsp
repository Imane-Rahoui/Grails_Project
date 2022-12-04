<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'annonce.label', default: 'Annonce')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>


    <div class="container-xxl">
        <div class="authentication-wrapper authentication-basic container-p-y">
            <div class="authentication-inner">
                <!-- Register -->
                <div class="card" >
                    <div class="card-body">
                        <!-- Logo -->

                        <!-- /Logo -->
                        <h4 class="mb-2">Modifier Votre Annonce! 🆕</h4>
                        <p class="mb-4">Veuillez vous modifer votre annonce par le remplissage des élements suivants.</p>

                        <g:if test="${flash.message}">
                            <div class="message" role="status">${flash.message}</div>
                        </g:if>
                        <g:hasErrors bean="${this.annonce}">
                            <ul class="errors" role="alert">
                                <g:eachError bean="${this.annonce}" var="error">
                                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                                            error="${error}"/></li>
                                </g:eachError>
                            </ul>
                        </g:hasErrors>

                        <g:form resource="${this.annonce}" method="POST" enctype="multipart/form-data">


                            <f:field bean="annonce" property="title" class="form-control">
                                <input
                                        type="text"
                                        class="form-control"
                                        placeholder="Entrez le titre"
                                        autofocus
                                        id="title"
                                        name="${titleParameter ?: 'title'}"

                                />
                            </f:field>
                            <f:field bean="annonce" property="description">
                                <input
                                        type="text"
                                        class="form-control"
                                        placeholder="Entrez une description"
                                        autofocus
                                        id="description"
                                        name="${descriptionParameter ?: 'description'}"

                                />
                            </f:field>
                            <f:field bean="annonce" property="illustrations" >
                                <div class="property-value" aria-labelledby="illustrations-label">
                                    <input class="btn btn-primary d-grid " multiple="multiple" type="file" name="myillustration" accept="image/png"/>
                                </div>
                            </f:field>
                            <br>
                            <fieldset class="buttons">
                                <input class="btn btn-primary d-grid w-100" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                            </fieldset>
                        </g:form>


                    </div>
                </div>
                <!-- /Register -->
            </div>
        </div>
    </div>

        </div>
    </body>
</html>
