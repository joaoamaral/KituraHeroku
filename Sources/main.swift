import Kitura
import HeliumLogger
import Foundation
import SwiftyJSON

HeliumLogger.use()

let router = Router()

router.get("/"){
  request, response, next in
    response.send("Hello, World!")
    next()
}
let port = Int(ProcessInfo.processInfo.environment["PORT"] ?? "8091") ?? 8091
Kitura.addHTTPServer(onPort: port, with: router)
Kitura.run()
