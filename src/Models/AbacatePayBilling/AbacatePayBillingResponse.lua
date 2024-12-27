AbacatePayBillingResponse = {}
AbacatePayBillingResponse.__index = AbacatePayBillingResponse


function AbacatePayBillingResponse:new(data, id, url, amount, status, devMode, methods,
                                       products, frequency, nextBilling, customer)
    local AbacatePayBillingResponseObj = {
        data = data,
        id = id,
        url = url,
        amount = amount,
        status = status,
        devMode = devMode,
        methods = methods,
        products = products,
        frequency = frequency,
        nextBilling = nextBilling,
        customer = customer
    }

    setmetatable(AbacatePayBillingResponseObj, AbacatePayBillingResponse)

    return AbacatePayBillingResponseObj
end

return AbacatePayBillingResponse
