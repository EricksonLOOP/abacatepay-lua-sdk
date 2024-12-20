Metadata = {}
Metadata._index = Metadata
function Metadata: new(AbacatePayClientRequest)
    local MetadataObj = {}
    MetadataObj.name = AbacatePayClientRequest.name
    MetadataObj.cellphone = AbacatePayClientRequest.cellphone
    MetadataObj.email = AbacatePayClientRequest.email
    MetadataObj.taxld = AbacatePayClientRequest.taxld
setmetatable(MetadataObj, Metadata)
return MetadataObj
    
end
return Metadata