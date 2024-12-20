AbacatePayBillingCustom = {}
AbacatePayBillingCustom._index = AbacatePayBillingCustom
 function AbacatePayBillingCustom: new(name, cellphone, email, taxld)
    local AbacatePayBillingCustomObj = {}
    AbacatePayBillingCustomObj.name = name
    AbacatePayBillingCustomObj.cellphone = cellphone
    AbacatePayBillingCustomObj.email = email
    AbacatePayBillingCustomObj.taxld = taxld
    setmetatable(AbacatePayBillingCustomObj, AbacatePayBillingCustom)
    return AbacatePayBillingCustomObj
    
 end
 return AbacatePayBillingCustom