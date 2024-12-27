AbacatePayBilling = {}
AbacatePayBilling.__index = AbacatePayBilling

local product = require("AbacatePayBilling.AbacatePayBillingProduct")
local customer = require("AbacatePayClient.AbacatePayClientRequest")


function AbacatePayBilling:new(frequency, methods, returnUrl, completionUrl, customerId, customerReq, products)
    local AbacatePayBillingObj = {
        frequency = frequency,
        methods = methods,
        returnUrl = returnUrl,
        completionUrl = completionUrl,
        customerId = customerId,
        customer = customer:new(customerReq.name, customerReq.cellphone, customerReq.email, customerReq.taxId),
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
