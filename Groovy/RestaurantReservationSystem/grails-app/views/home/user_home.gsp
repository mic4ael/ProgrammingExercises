<!doctype html>
<html>
<head>
    <meta name="layout" content="home"/>

    <asset:javascript src="dependencies/jquery.datetimepicker.full.js"/>
    <asset:javascript src="dependencies/jquery.validate.js"/>

    <asset:stylesheet src="jquery.datetimepicker.min.css"/>
    <title>Home</title>
</head>
<body>
    <div class="ui secondary pointing menu">
        <g:link url="[action: 'index', controller: 'Home']" class="ui item ${controllerName == 'home' ? 'active' : ''}">
            <i class="home icon"></i>
            <g:message code="menu.items.home"/>
        </g:link>
        <g:link url="" class="ui item ${controllerName == 'reservations' ? 'active' : ''}">
            <g:message code="menu.items.myReservations"/>
        </g:link>
        <div class="right menu">
            <g:link url="[action: '', controller: 'logout']" class="ui item">
                <i class="sign out icon"></i>
                <g:message code="menu.items.logout"/>
            </g:link>
        </div>
    </div>
    <div class="ui segment">
        <canvas id="canvas"></canvas>
    </div>

    <script>
        var URLS = {
            tableManagement: function() {
                return "${createLink(mapping: 'tableManagement')}";
            }
        };
    </script>
    <asset:javascript src="dependencies/fabric.min.js"/>
    <asset:javascript src="user.js"/>
</body>
</html>
