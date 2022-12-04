<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
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
                        <h4 class="mb-2">Créez votre compte utilisateur et gérez votre CoinCoin! 😎</h4>
                        <p class="mb-4">Bienvenue ...</p>


                        <g:if test='${flash.message}'>
                            <div class="login_message">${flash.message}</div>
                        </g:if>

                        <form  class="mb-3" action="/user/save" method="post"  autocomplete="off">
                            <div class="mb-3">
                                <label for="username" class="form-label"><g:message code='springSecurity.login.username.label'/></label>
                                <input
                                        type="text"
                                        class="form-control"
                                        placeholder="Entrez votre nom d'utilisateur"
                                        autofocus
                                        name="${usernameParameter ?: 'username'}"
                                        id="username"
                                />
                            </div>
                            <div class="mb-3 form-password-toggle">
                                <div class="d-flex justify-content-between">
                                    <label class="form-label" for="password">Password</label>
                                    <label for="password" class="form-label" ><g:message code='springSecurity.login.password.label'/></label>
                                </div>
                                <div class="input-group input-group-merge">
                                    <input
                                            type="password"
                                            class="form-control"
                                            name="${passwordParameter ?: 'password'}"
                                            id="password"
                                            placeholder="&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;"
                                            aria-describedby="password"
                                    />
                                    <span class="input-group-text cursor-pointer"><i class="bx bx-hide"></i></span>
                                </div>
                            </div>
                            <div class='fieldcontain required'>
                                <label for='role'>Role
                                    <span class='required-indicator'>*</span>
                                </label>
                                <g:select id="type" name='roleList'
                                          from='${roleList}'
                                          optionKey="id" optionValue="authority" class="form-select" aria-label="Default select example"></g:select>
                            </div>
                            <br>
                            <div class="mb-3">
                                <div class="form-check">
                                    <p id="remember_me_holder">
                                        <input type="checkbox" class="form-check-input" name="${rememberMeParameter ?: 'remember-me'}" id="remember_me" <g:if test='${hasCookie}'>checked="checked"</g:if>/>
                                        <label for="remember_me"><g:message code='springSecurity.login.remember.me.label'/></label>
                                    </p>
                                </div>
                            </div>
                            <br>
                            <div class="mb-3">
                                <fieldset class="buttons">
                                    <input type="submit" name="create" class="btn btn-primary d-grid w-100" value="New User" id="create"/>
                                </fieldset>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- /Register -->
            </div>
        </div>
    </div>

















<!--
        <div id="create-user" class="content scaffold-create" role="main">
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
            -->
        </div>
    </body>
</html>
