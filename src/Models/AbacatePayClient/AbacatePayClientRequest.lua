AbacatePayClientRequest = {};
AbacatePayClientRequest._index = AbacatePayClientRequest;
function AbacatePayClientRequest:new(name, cellphone, email, taxId)
    local AbacatePayClientObj = {}
    AbacatePayClientObj.name = name;
    AbacatePayClientObj.cellphone = cellphone;
    AbacatePayClientObj.email = email;
    AbacatePayClientObj.taxId = taxId;
    setmetatable(AbacatePayClientObj, AbacatePayClientRequest);
    return AbacatePayClientObj;
end
 return AbacatePayClientRequest
