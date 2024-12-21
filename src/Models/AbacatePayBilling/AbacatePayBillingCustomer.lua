AbacatePayBillingCustomer = {}
AbacatePayBillingCustomer._index = {}
 function AbacatePayBillingCustomer: new(id, metadata)
    local AbacatePayBillingCustomerObj = {}
    AbacatePayBillingCustomerObj.id = id
    AbacatePayBillingCustomerObj.metadata = metadata
    setmetatable(AbacatePayBillingCustomerObj, AbacatePayBillingCustomer)
    return AbacatePayBillingCustomerObj
 end
  return AbacatePayBillingCustomer