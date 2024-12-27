package.path = package.path .. ";./src/?.lua;./src/*/?.lua"

local http = require("socket.http")
local ltn12 = require("ltn12")

AbacatePayPaymentService = {}

function AbacatePayPaymentService.createNewBilling(req, config)
    local response_body = {}
    local result, status_code, headers, status_message = http.request {
        url = config.baseUrl .. "billing/create",
        method = "POST",
        headers = {
            ["Content-Type"]   = "application/x-www-form-urlencoded",
            ["Content-Length"] = tostring(#req), -- Certifique-se de que `req` seja uma string
            ["Authorization"]  = config.apiKey
        },
        source = ltn12.source.string(req), -- Enviando a requisição como string
        sink = ltn12.sink.table(response_body)
    }
    if result then
        return table.concat(response_body)
    else
        return status_message
    end
end

function AbacatePayPaymentService.listBilling(config)
    local response_body = {}
    local result, status_code, headers, status_message = http.request {
        url = config.baseUrl .. "billing/list",
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

return AbacatePayPaymentService
