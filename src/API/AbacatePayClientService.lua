local AbacatePayClientRequest = require("../Models/AbacatePayClient/AbacatePayClientRequest")
local http = require("socket.http")
local ltn12 = require("ltn12")

AbacatePayService = {}

function AbacatePayService.createNewClient(req, config)
    local request_body =
        "{ 'name': '" .. req.name .. "', " ..
        "'cellphone': '" .. req.cellphone .. "', " ..
        "'email': '" .. req.email .. "', " ..
        "'taxId': '" .. req.taxId .. "' }"

    local url = config.baseUrl .. "customer/create"
    local method = "POST"

    local headers = {
        ["Content-Type"] = "application/json",
        ["Content-Length"] = tostring(#request_body),
        ["Authorization"] = "Bearer " .. config.apiKey
    }

    local response_body = {}
    local res, code, response_headers, status = http.request {
        url = url,
        method = method,
        headers = headers,
        source = ltn12.source.string(request_body),
        sink = ltn12.sink.table(response_body)
    }

    if res then
        print("Resposta do servidor: " .. table.concat(response_body))
    else
        print("Erro na requisição. Código de erro: " .. code)
    end
end

return AbacatePayService
