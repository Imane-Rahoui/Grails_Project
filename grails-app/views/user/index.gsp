<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<h1></h1>

<h1></h1>
<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>


<div class="container mx-5">

    <div class="table-responsive custom-table-responsive">
        <div class="mb-3">
            <i class="menu-icon tf-icons bx bx-news"></i>
            <g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link>
        </div>
        <br>
        <table class="table custom-table">
            <thead>
            <tr>
                <th class="sortable"><a href="/user/index?sort=username&amp;max=10&amp;order=asc">Username</a></th>
                <th class="sortable"><a href="/user/index?sort=username&amp;max=10&amp;order=asc">Roles</a></th>
            </tr>
            </thead>
            <tbody>

            <g:each in="${userList}">
                <tr class="even">

                    <td><a href='/user/show/${it.id}'>${it.username}</a></td>
                    <td>
                        <g:each in="${it.getAuthorities()}">
                            <a href="/user/show/">${it.authority}</a>
                        </g:each>
                    </td>

                </tr>

            </g:each>
            </tbody>
        </table>

        <div class="pagination">
            <g:paginate total="${userCount ?: 0}"/>
        </div>
    </div>
</body>
</html>