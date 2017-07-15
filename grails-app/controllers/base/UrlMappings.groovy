package base

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
        
        "/api/accounts"(resources:"account")
        "/api/entries"(resources:"entry")
        
        "/"(view:"/index")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
