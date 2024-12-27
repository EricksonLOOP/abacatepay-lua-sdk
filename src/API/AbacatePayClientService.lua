package.path = package.path .. ";./src/?.lua;./src/*/?.lua"

local http = require("socket.http")
local ltn12 = require("ltn12")

AbacatePayClientsService = {}

function AbacatePayClientsService.createNewClient(req, config)
    local response_body = {}
    local result, status_code, headers, status_message = http.request {
        url = config.baseUrl .. "customer/create",
        method = "POST",
        headers = {
            ["Content-Type"]   = "application/x-www-form-urlencoded",
            ["Content-Length"] = tostring(#req),
            ["Authorization"]  = config.apiKey
        },
        source = ltn12.source.string(req),
        sink = ltn12.sink.table(response_body)
    }
    if result then
        return table.concat(response_body)
    else
        return status_message
    end
end

function AbacatePayClientsService.listClients(config)
    local response_body = {}
    local result, status_code, headers, status_message = http.request {
        url = config.baseUrl .. "customer/list",
        headers = {
            ["Authorization"] = config.apiKey
        },
        method = "GET",
        sink = ltn12.sink.table(response_body)
    }
    if result then
        return table.concat(response_body)
    else
        return status_message
    end
end

return AbacatePayClientsService
