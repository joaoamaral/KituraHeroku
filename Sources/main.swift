import Kitura
import KituraNet
import KituraSys

import SwiftyJSON

let router = Router()

router.get("/"){
  request, response, next in
    let json = JSON(["Hello":"world"])
    do {
          try response.status(HttpStatusCode.OK).sendJson(json).end()
    } catch {

    }
    next()
}

let server = HttpServer.listen(8091, delegate: router)
Server.run()
