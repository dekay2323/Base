<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <title></title>
</head>
<body>

%{-- NAV--}%
<ul class="nav">
    <li class="nav-item active">
        <g:link class="nav-link" controller="account" action="index">Account</g:link>
    </li>
    <li class="nav-item">
        <g:link class="nav-link" url="/vue">Vue</g:link>
    </li>
</ul>

%{-- CONTAINER--}%

<br />
    <div class="container">
        <h2>Fast Grails</h2>
        
        <ul>
            <li>Base project on which to start Grails Development</li>
            <li>Uses Scaffold and Field overriden to use Bootstrap 4</li>
            <li>Scaffold as long as possible</li>
        </ul>
    </div>
</body>
</html>
