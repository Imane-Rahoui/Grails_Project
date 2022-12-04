<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'annonce.label', default: 'Annonce')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css">
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
<%--<h1><g:message code="hh" args="[entityName]"/></h1>--%>
<h1> </h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>

        <div class="container mx-3" >

            <div class="table-responsive custom-table-responsive ">
                <fieldset class="buttons">
                    <g:link class="create" action="create">
                        <g:submitButton name="create"  action="create" class="btn btn-primary d-grid w-100" value="New Annance"/>
                    </g:link>
                </fieldset>
                <br>
    <table class="table custom-table">
        <thead>
        <tr>
            <th class="sortable"><a href="/annonce/index?sort=title&amp;max=10&amp;order=asc">Title</a></th>
            <th class="sortable"><a href="/annonce/index?sort=description&amp;max=10&amp;order=asc">Description</a></th>
            <th class="sortable">Illustrations</th>
            <th class="sortable"><a href="/annonce/index?sort=author&amp;max=10&amp;order=asc">Author</a></th>
            <th class="sortable"><a href="/annonce/index?sort=author&amp;max=10&amp;order=asc"></a></th>

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
</div>
</body>
</html>