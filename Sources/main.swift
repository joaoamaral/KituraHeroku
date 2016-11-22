import Kitura
import HeliumLogger
import Foundation
import SwiftyJSON

HeliumLogger.use()

let router = Router()

router.get("/") {
    request, response, next in
      let json = JSON(["Hello":"world"])
      response.status(HttpStatusCode.OK).sendJson(json).end()
      next()
}

let port = Int(ProcessInfo.processInfo.environment["PORT"] ?? "8090") ?? 8090

Kitura.addHTTPServer(onPort: port, with: router)
Kitura.run()
