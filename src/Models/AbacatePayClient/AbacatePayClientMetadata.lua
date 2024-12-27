local Metadata = {}
Metadata.__index = Metadata

function Metadata:new(clientRequest)
    local MetadataObj = {
        name = clientRequest.name,
        cellphone = clientRequest.cellphone,
        email = clientRequest.email,
        taxId = clientRequest.taxId
    }

    setmetatable(MetadataObj, Metadata)

    return MetadataObj
end

return Metadata
