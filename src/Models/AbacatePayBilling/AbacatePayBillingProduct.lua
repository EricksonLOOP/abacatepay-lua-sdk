AbacatePayBillingProduct = {}
AbacatePayBillingProduct.__index = AbacatePayBillingProduct

function AbacatePayBillingProduct:new(externalId, name, description, quantity, price)
    local self = setmetatable({}, AbacatePayBillingProduct)
    self.externalId = externalId
    self.name = name
    self.description = description
    self.quantity = quantity
    self.price = price
    return self
end

return AbacatePayBillingProduct
