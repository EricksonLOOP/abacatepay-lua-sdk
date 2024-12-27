local ClientRequest = {}
ClientRequest.__index = ClientRequest

function ClientRequest:new(name, cellphone, email, taxId)
    local clientObj = {
        name = name,
        cellphone = cellphone,
        email = email,
        taxId = taxId
    }
    setmetatable(clientObj, ClientRequest)
    return clientObj
end

return ClientRequest
