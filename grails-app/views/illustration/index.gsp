<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'illustration.label', default: 'Illustration')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
        <g:set var="entityName" value="${message(code: 'annonce.label', default: 'Annonce')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">
        <asset:stylesheet src="fonts_tab/icomoon/style.css"/>
        <asset:stylesheet src="css_tab/owl.carousel.min.css"/>
        <asset:stylesheet src="css_tab/bootstrap.min.css"/>
        <asset:stylesheet src="css_tab/style.css"/>
        <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
        <asset:stylesheet src="assets2/vendor/fonts/boxicons.css"/>
        <asset:stylesheet src="assets2/vendor/css/core.css"/>
        <asset:stylesheet src="assets2/vendor/css/theme-default.css"/>
        <asset:stylesheet src="assets2/css/demo.css"/>
        <asset:stylesheet src="assets2/vendor/libs/perfect-scrollbar/perfect-scrollbar.css"/>
        <asset:stylesheet src="assets2/vendor/libs/apex-charts/apex-charts.css"/>
    </head>
    <body>

        <div id="list-illustration" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>

            <div class="container">

                <div class="table-responsive custom-table-responsive">
                    <div class="mb-3">
                        <g:link class="create" action="create"><g:message code="default.new.label"
                                                                          args="[entityName]"/></g:link>
                    </div>
                    <table class="table custom-table">
                        <thead>
                        <tr>
                            <th class="sortable"><a href="/illustration/index?sort=filname&amp;max=10&amp;order=asc">File Name</a></th>
                            <th class="sortable"><a href="/illustration/index?sort=annonce&amp;max=10&amp;order=asc">Annonce</a></th>

                        </tr>
                        </thead>
                        <tbody>

                        <g:each in="${annonceList}" var="annonce" status="i">
                            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                <td>
                                    <g:link controller="annonce" action="show" id="${annonce.id}">
                                        ${annonce.title}
                                    </g:link>
                                </td>
                                <td>${annonce.description}</td>
                                <td>

                                    <g:each in="${annonce.illustrations}" var="ill">
                                        <g:link controller="illustration" action="show" id="${ill.id}">
                                            <g:img width="50px" height="50px" file="${ill.filename}"/>
                                        </g:link>
                                    </g:each>
                                    <%--<g:link controller="illustration" action="add" id="${annonce.id}">
                                         <i class="fa fa-plus" aria-hidden="true"></i>
                                     </g:link>--%>

                                </td>
                                <td>
                                    <g:link controller="user" action="show" id="${annonce.author.id}">
                                        ${annonce.author.username}
                                    </g:link>
                                </td>
                                <td>
                                    <g:link controller="annonce" action="edit" id="${annonce.id}">
                                        <i class="fas fa-edit"></i>
                                    </g:link>
                                </td>
                            </tr>
                        </g:each>

                        </tbody>
                    </table>
                </div>

                <div class="pagination">
                    <g:paginate total="${annonceCount ?: 0}"/>
                </div>

            <f:table collection="${illustrationList}" />

            <div class="pagination">
                <g:paginate total="${illustrationCount ?: 0}" />
            </div>
        </div>













    </body>
</html>