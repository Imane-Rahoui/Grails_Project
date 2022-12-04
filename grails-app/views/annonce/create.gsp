<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'annonce.label', default: 'Annonce')}"/>
    <title><g:message code="default.create.label" args="[entityName]"/></title>
    <link rel="icon" type="image/x-icon" href="../assets/img/favicon/favicon.ico" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
            href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
            rel="stylesheet"
    />

    <!-- Icons. Uncomment required icon fonts -->
    <link rel="stylesheet" href="../assets/vendor/fonts/boxicons.css" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="../assets/vendor/css/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="../assets/vendor/css/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="../assets/css/demo.css" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

    <!-- Page CSS -->
    <!-- Page -->
    <link rel="stylesheet" href="../assets/vendor/css/pages/page-auth.css" />
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
                    <h4 class="mb-2">Une Nouvelle annonce, nouvelle aventure! 🤩</h4>
                    <p class="mb-4">Veuillez vous creer votre annonce et commencer l'aventure</p>

                    <div class="fheader"><g:message code='springSecurity.login.header'/></div>

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
                                    id="title"
                                    class="form-control"
                                    placeholder="Entrez le titre"
                                    autofocus
                                    name="${titleParameter ?: 'title'}"

                            />
                        </f:field>
                        <f:field bean="annonce" property="description">
                            <input
                                    type="text"
                                    id="description"
                                    class="form-control"
                                    placeholder="Entrez une description"
                                    autofocus
                                    name="${descriptionParameter ?: 'description'}"

                            />
                        </f:field>
                        <f:field bean="annonce" property="price">
                            <input
                                    type="text"
                                    id="price"
                                    class="form-control"
                                    placeholder="Entre un prix"S
                                    autofocus
                                    name="${priceParameter ?: 'price'}"

                            />
                        </f:field>
                        <f:field bean="annonce" property="author">
                            <select name="author" id="author" class="form-select">
                                <g:each in="${users}" var="user">
                                    <option value="${user.id}">${user.username}</option>
                                </g:each>
                            </select>
                        </f:field>
                        <f:field bean="annonce" property="illustrations" >
                            <div class="property-value" aria-labelledby="illustrations-label">
                                <input class="btn btn-primary d-grid " multiple="multiple" type="file" name="myillustration" accept="image/png"/>
                            </div>
                        </f:field>

                        <br>

                        <fieldset class="buttons">
                            <g:submitButton name="create" class="btn btn-primary d-grid w-100"
                                            value="${message(code: 'default.button.create.label', default: 'Create')}"/>
                        </fieldset>
                    </g:form>


                </div>
            </div>
            <!-- /Register -->
        </div>
    </div>
</div>



<!-- -------------------------------------------



<div id="create-annonce" class="content scaffold-create" role="main">
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
        <f:field bean="annonce" property="title"/>
        <f:field bean="annonce" property="description"/>
        <f:field bean="annonce" property="price"/>
        <f:field bean="annonce" property="author">
            <select name="author" id="author">
                <g:each in="${users}" var="user">
                    <option value="${user.id}">${user.username}</option>
                </g:each>
            </select>
        </f:field>
        <f:field bean="annonce" property="illustrations">
            <div class="property-value" aria-labelledby="illustrations-label">
                <input multiple="multiple" type="file" name="myillustration" accept="image/png"/>
            </div>
        </f:field>

        <br>

        <fieldset class="buttons">
            <g:submitButton name="create" class="save"
                            value="${message(code: 'default.button.create.label', default: 'Create')}"/>
        </fieldset>
    </g:form>
</div>
-->


<script>
    (function() {
        document.forms['loginForm'].elements['${usernameParameter ?: 'username'}'].focus();
    })();
</script>
</body>
</html>
