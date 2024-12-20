local customer = require('AbacatePayBillingCustom')
local product = require('AbacatePayBillingProduct')

AbacatePayBilling = {}
AbacatePayBilling._index = AbacatePayBilling

function AbacatePayBilling:new(frequency, methods, products, returnUrl, completionUrl, customerId, customereq)
    local AbacatePayBillingObj = {
        frequency = frequency,
        methods = methods,
        returnUrl = returnUrl,
        completionUrl = completionUrl,
        customerId = customerId,
        customereq = customer: new(customereq.name, customereq.cellphone, customereq.email, customereq.taxld),
        products = {}
    }   


    for _, prod in ipairs(products) do
        local prodObj = product:new(prod.externalId, prod.name, prod.description, prod.quantity, prod.price)
        table.insert(AbacatePayBillingObj.products, prodObj) 
    end

    setmetatable(AbacatePayBillingObj, AbacatePayBilling)
    return AbacatePayBillingObj
end
 
return AbacatePayBilling