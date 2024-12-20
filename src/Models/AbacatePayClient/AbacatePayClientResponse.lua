local metadata = require('./AbacatePayClientMetadata.lua')
AbacatePayClientResponse = {}
AbacatePayClientResponse._index = AbacatePayClientResponse
function AbacatePayClientResponse: new(id, metadata)
    local AbacatePayClientResponseObj = {}
    AbacatePayClientResponseObj.id = id
    AbacatePayClientResponseObj.metadata = metadata
setmetatable(AbacatePayClientResponseObj, AbacatePayClientResponse)
return AbacatePayClientResponseObj
    
end
return AbacatePayClientResponse
