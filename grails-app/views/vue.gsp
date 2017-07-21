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
                    <b-nav-item href="/entry/index">Entry</b-nav-item>
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

        <br />
        <div class="container">
            <h1>Vue Test</h1>
            {{ message }}
        </div>
    </div>

    <br />
    <div class="container">
        <h2>Get with Vue & Axios</h2>
        
        <script type="text/x-template" id="grid-template">
        <table>
            <thead>
            <tr>
                <th v-for="key in columns"
                    @click="sortBy(key)"
                    :class="{ active: sortKey == key }">
                    {{ key | capitalize }}
                    <span class="arrow" :class="sortOrders[key] > 0 ? 'asc' : 'dsc'">
                    </span>
                </th>
            </tr>
            </thead>
            <tbody>
            <tr v-for="entry in filteredData">
                <td v-for="key in columns">
                    {{entry[key]}}
                </td>
            </tr>
            </tbody>
        </table>
        </script>

        <!-- demo root element -->
        <div id="demo">
            <form id="search">
                Search <input name="query" v-model="searchQuery">
            </form>
            <demo-grid
                    :data="gridData"
                    :columns="gridColumns"
                    :filter-key="searchQuery">
            </demo-grid>
        </div>
    </div>
</body>
</html>
