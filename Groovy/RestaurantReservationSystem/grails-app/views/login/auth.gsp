<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Rezerwacja stolików w restauracji Kaczorek</title>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
    <asset:stylesheet src="auth.css"/>
</head>
<body>
    <div id="login-form" class="main ui container segment">
        <div class="langs">
            <a href="/login/auth?lang=pl">
                <i class="poland flag"></i>
            </a>
            <a href="/login/auth?lang=en">
                <i class="united kingdom flag"></i>
            </a>
        </div>
        <g:form class="ui form" url="${request.contextPath}/login/authenticate">
            <g:if test="${flash.message}">
                <div class="ui message">
                    <p>${flash.message}</p>
                </div>
            </g:if>
            <div class="field">
                <label><g:message code="labels.username"/></label>
                <g:textField name="username"/>
            </div>
            <div class="field">
                <label><g:message code="labels.password"/></label>
                <g:passwordField name="password"/>
            </div>
            <div class="ui two column grid">
                <div class="column">
                    <g:submitButton class="ui button" name="login" value="${message(code: 'buttons.login')}"/>
                </div>
                <div class="column">
                    <g:link url="[action: '', controller: 'register']" class="ui primary button right floated">
                        <g:message code="buttons.register"/>
                    </g:link>
                </div>
            </div>
        </g:form>
    </div>
</body>
</html>
