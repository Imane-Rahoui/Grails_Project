<html>
<head>
    <meta name="layout" content="${gspLayout ?: 'main'}"/>
    <title><g:message code='springSecurity.login.title'/></title>

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
<h1> </h1>
<div class="container-xxl mx-xxl-5">
    <div class="authentication-wrapper authentication-basic container-p-y">
        <div class="authentication-inner ">
            <!-- Register -->
            <div class="card " >
                <div class="card-body">
                    <!-- Logo -->

                    <!-- /Logo -->
                    <h4 class="mb-2">Le CoinCoin est votre Coin! 👋</h4>
                    <p class="mb-4">Veuillez vous connecter à votre compte et commencer l'aventure</p>

                    <div class="fheader"><g:message code='springSecurity.login.header'/></div>

                    <g:if test='${flash.message}'>
                        <div class="login_message">${flash.message}</div>
                    </g:if>

                    <form  class="mb-3" action="${postUrl ?: '/login/authenticate'}" method="POST" id="loginForm" autocomplete="off">
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
                        <div class="mb-3">
                            <div class="form-check">
                                <p id="remember_me_holder">
                                    <input type="checkbox" class="form-check-input" name="${rememberMeParameter ?: 'remember-me'}" id="remember_me" <g:if test='${hasCookie}'>checked="checked"</g:if>/>
                                    <label for="remember_me"><g:message code='springSecurity.login.remember.me.label'/></label>
                                </p>
                            </div>
                        </div>
                        <div class="mb-3">
                            <input class="btn btn-primary d-grid w-100" type="submit" id="submit" value="${message(code: 'springSecurity.login.button')}"/>
                        </div>
                    </form>
                </div>
            </div>
            <!-- /Register -->
        </div>
    </div>
</div>










<!--
<div id="login">
    <div class="inner">
        <div class="fheader"><g:message code='springSecurity.login.header'/></div>

        <g:if test='${flash.message}'>
    <div class="login_message">${flash.message}</div>
</g:if>

        <form action="${postUrl ?: '/login/authenticate'}" method="POST" id="loginForm" class="cssform" autocomplete="off">
            <p>
                <label for="username"><g:message code='springSecurity.login.username.label'/>:</label>
                <input type="text" class="text_" name="${usernameParameter ?: 'username'}" id="username"/>
            </p>

            <p>
                <label for="password"><g:message code='springSecurity.login.password.label'/>:</label>
                <input type="password" class="text_" name="${passwordParameter ?: 'password'}" id="password"/>
            </p>

            <p id="remember_me_holder">
                <input type="checkbox" class="chk" name="${rememberMeParameter ?: 'remember-me'}" id="remember_me" <g:if test='${hasCookie}'>checked="checked"</g:if>/>
                <label for="remember_me"><g:message code='springSecurity.login.remember.me.label'/></label>
            </p>

            <p>
                <input type="submit" id="submit" value="${message(code: 'springSecurity.login.button')}"/>
            </p>
        </form>
    </div>
</div>

-->
<script>
    (function() {
        document.forms['loginForm'].elements['${usernameParameter ?: 'username'}'].focus();
    })();
</script>
</body>
</html>
