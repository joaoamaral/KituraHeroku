import Kitura
import KituraNet
import KituraSys

let router = Router()
router.get("/"){
  request, response, next in
    response.send("Hello, world!")
    next()
}

let server = HTTPServer.listen(8090, delegate: router)
Server.run()
