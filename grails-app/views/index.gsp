<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Base</title>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
</head>
<body>
    <div id="app">
        <b-navbar toggleable type="inverse" variant="success">
    
            <b-nav-toggle target="nav_collapse"></b-nav-toggle>
    
            <b-link class="navbar-brand" to="#">
                <span>Base</span>
            </b-link>
    
            <b-collapse is-nav id="nav_collapse">
    
                <b-nav is-nav-bar>
                    <b-nav-item href="/account/index">Account</b-nav-item>
                    <b-nav-item href="/account/entry">Entry</b-nav-item>
                </b-nav>
    
                <b-nav is-nav-bar class="ml-auto">
    
                    <b-nav-item-dropdown right>
                        <!-- Using text slot -->
                        <template slot="text">
                            <span style="font-weight: bold;">User</span>
                        </template>
                        <b-dropdown-item to="#">Profile</b-dropdown-item>
                        <b-dropdown-item to="#">Signout</b-dropdown-item>
                    </b-nav-item-dropdown>
    
                </b-nav>
            </b-collapse>
        </b-navbar>

        <div class="container">
            <h1>Vue Test</h1>
            {{ message }}
        </div>
    </div>
</body>
</html>
