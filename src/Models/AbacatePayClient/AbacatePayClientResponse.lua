local metadata = require('AbacatePayClient.AbacatePayClientMetadata')

AbacatePayClientResponse = {}
AbacatePayClientResponse.__index = AbacatePayClientResponse

function AbacatePayClientResponse:new(id, metadata)
    local AbacatePayClientResponseObj = {}
    AbacatePayClientResponseObj.id = id
    AbacatePayClientResponseObj.metadata = metadata
    setmetatable(AbacatePayClientResponseObj, AbacatePayClientResponse)
    return AbacatePayClientResponseObj
end

return AbacatePayClientResponse
