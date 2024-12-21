AbacatePayBillingResponse = {}
AbacatePayBillingResponse._index = AbacatePayBillingResponse
function AbacatePayBillingResponse: new(data, id, url, amount, status, devMode,methods, 
products, frequency, nextBilling, customer)

local AbacatePayBillingResponseObj = {}
 AbacatePayBillingResponseObj.data = data
 AbacatePayBillingResponseObj.id = id
 AbacatePayBillingResponseObj.url = url
 AbacatePayBillingResponseObj.amount = amount
 AbacatePayBillingResponseObj.status = status
 AbacatePayBillingResponseObj.devMode = devMode
 AbacatePayBillingResponseObj.methods = methods
 AbacatePayBillingResponseObj.products = products
 AbacatePayBillingResponseObj.frequency = frequency
 AbacatePayBillingResponseObj.nextBilling = nextBilling
 AbacatePayBillingResponseObj.customer = customer
setmetatable(AbacatePayBillingResponseObj, AbacatePayBillingResponse)
return AbacatePayBillingResponseObj

end
return AbacatePayBillingResponse