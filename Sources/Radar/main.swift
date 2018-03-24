import Vapor

let drop = try Droplet()
let host = drop.config["server", "host"]?.string ?? "0.0.0.0"
let port = drop.config["server", "port"]?.int ?? 8080

let starttime = Date().toTimestamp()

drop.get("/") { request in
    return Response(redirect: "/uptime")
}

drop.get("/uptime") { request in
    var json = JSON()
    try json.set("start", starttime)
    try json.set("uptime", Date().secondsSince(starttime))
    return json
}

try drop.run()