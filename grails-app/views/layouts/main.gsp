<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
    <g:layoutTitle default="Zohair & Imane CoinCoin"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>

    <asset:stylesheet src="assets2/vendor/fonts/boxicons.css"/>
    <asset:stylesheet src="assets2/vendor/css/core.css"/>
    <asset:stylesheet src="assets2/vendor/css/theme-default.css"/>
    <asset:stylesheet src="assets2/css/demo.css"/>
    <asset:stylesheet src="assets2/vendor/libs/perfect-scrollbar/perfect-scrollbar.css"/>
    <asset:stylesheet src="assets2/vendor/libs/apex-charts/apex-charts.css"/>

    <!-- Fonts -->
    <link
            href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
            rel="stylesheet"/>
    <asset:javascript src="js/config.js"/>
    <asset:javascript src="js2/helpers.js"/>
    <asset:javascript src="application.js"/>

    <g:layoutHead/>
</head>

<body>
<!--
<div class="navbar navbar-default navbar-static-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/#">
                <asset:image src="ZIMANI.png" alt="Grails Logo" />
            </a>
        </div>
        <div class="navbar-collapse collapse" aria-expanded="false" style="height: 0.8px;">
            <ul class="nav navbar-nav navbar-right">
                <g:pageProperty name="page.nav"/>
            </ul>
        </div>
    </div>
</div>


<div class="footer" role="contentinfo"></div>

<div id="spinner" class="spinner" style="display:none;">
    <g:message code="spinner.alt" default="Loading&hellip;"/>
</div>

<asset:javascript src="application.js"/> -->

<div class="layout-wrapper layout-content-navbar">
    <div class="layout-container">
        <!-- Menu -->

        <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
            <div class="app-brand demo">
                <a href="index.html" class="app-brand-link">
                    <a class="app-brand-logo demo" href="/#">
                        <asset:image src="ZIMANI.png" alt="Grails Logo" width="150px"/>
                    </a>
                </span>
                </a>

                <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto d-block d-xl-none">
                    <i class="bx bx-chevron-left bx-sm align-middle"></i>
                </a>
            </div>

            <br><br><br>

            <ul class="menu-inner py-1">
                <!-- Dashboard -->
                <li class="menu-item active">
                    <a href="/#" class="menu-link">
                        <i class="menu-icon tf-icons bx bx-home-circle"></i>

                        <div data-i18n="Analytics">Dashboard</div>
                    </a>
                </li>
                <br>
                <li class="menu-item active">
                    <a class="menu-link" href="${createLink(action: 'index', controller: 'annonce')}">
                        <i class="menu-icon tf-icons bx bx-dock-top"></i>

                        <div data-i18n="Analytics">Gerer Les Annonces</div>
                    </a>
                </li>
                <br>
                <!--<li class="menu-item active">
                    <a class="menu-link" href="${createLink(action: 'index', controller: 'illustration')}">
                        <i class="menu-icon tf-icons bx bx-cube-alt"></i>
                        <div data-i18n="Analytics">Gerer Les Illustrations</div>
                    </a>
                </li>
                <br>
                <li class="menu-item active">
                    <a href="index.html" class="menu-link">
                        <i class="menu-icon tf-icons bx bx-cube-alt"></i>
                        <div data-i18n="Analytics">API</div>
                            <g:link controller="/com.mbds.grails.ApiController"></g:link>
                    </a>
                    <a class="menu-link" href="${createLink(action: 'index', controller: 'api')}">
                        <i class="menu-icon tf-icons bx bx-dock-top"></i>
                        <div data-i18n="Analytics">Gerer Les Illustrations</div>
                    </a>
                </li>-->
                <li class="menu-item active">
                    <a class="menu-link" href="${createLink(action: 'index', controller: 'user')}">
                        <i class="menu-icon tf-icons bx bx-user"></i>

                        <div data-i18n="Analytics">Gerer Les Users</div>
                    </a>
                </li>
                <!--<li class="menu-item active">
                    <a href="index.html" class="menu-link">
                        <i class="menu-icon tf-icons bx bx-collection"></i>
                        <div data-i18n="Analytics">Rest Auth</div>
                            <g:link controlleSr="/grails.plugin.springsecurity.rest.RestOauthController"></g:link>
                    </a>
                </li>-->

        </aside>
        <!-- / Menu -->

        <!-- Layout container -->
        <div class="layout-page">

            <!-- Navbar -->

            <nav
                    class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme"
                    id="layout-navbar">
                <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">
                    <!-- Search -->


                    <ul class="navbar-nav flex-row align-items-center ms-auto">
                    <!-- Place this tag where you want the button to render. -->
                        <sec:ifNotLoggedIn>

                            <a class="navbar-nav flex-row align-items-center ms-auto"
                               href="${createLink(action: 'index', controller: 'login')}">
                                <i class='bx bxs-user mx-1'></i>

                                <div data-i18n="Analytics">LogIn</div>
                            </a>
                        </sec:ifNotLoggedIn>
                    &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <sec:ifLoggedIn>
                            <a class="navbar-nav flex-row align-items-center ms-auto"
                               href="${createLink(action: 'index', controller: 'logout')}">
                                <i class='bx bxs-user mx-1'></i>


                                <div data-i18n="Analytics" class="mx-2">Hello ${applicationContext.springSecurityService.currentUser.username}</div>
                            </a>
                            <a class="navbar-nav flex-row align-items-center ms-auto"
                               href="${createLink(action: 'index', controller: 'logout')}">
                                <i class="menu-icon tf-icons bx bx-log-out"></i>

                                <div data-i18n="Analytics">LogOut</div>
                            </a>
                        </sec:ifLoggedIn>
                    </ul>
                </div>
            </nav>

            <div id="spinner" class="spinner" style="display:none;">
                <g:message code="spinner.alt" default="Loading&hellip;"/>
            </div>
            <g:layoutBody/>

</body>
</html>