import Kitura
import HeliumLogger
import Foundation
import SwiftyJSON

HeliumLogger.use()

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
let port = Int(ProcessInfo.processInfo.environment["PORT"] ?? "8091") ?? 8091
Kitura.addHTTPServer(onPort: port, with: router)
Kitura.run()
