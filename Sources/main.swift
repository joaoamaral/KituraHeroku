import Kitura
import HeliumLogger
import Foundation
import SwiftyJSON

HeliumLogger.use()

let router = Router()

router.get("/") {
    request, response, next in
      response.status(.OK).send(json: JSON(["Hello" : "world"]))
      next()
}

let port = Int(ProcessInfo.processInfo.environment["PORT"] ?? "8090") ?? 8090

Kitura.addHTTPServer(onPort: port, with: router)
Kitura.run()
