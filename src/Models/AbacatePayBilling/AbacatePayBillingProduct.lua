AbacatePayBillingProduct = {}
AbacatePayBillingProduct.index = AbacatePayBillingProduct
function AbacatePayBillingProduct: new(extenalld, name, description, quantity, price)
     local AbacatePayBillingProductObj = {}
      AbacatePayBillingProductObj.extenalld = extenalld
      AbacatePayBillingProductObj.name = name
      AbacatePayBillingProductObj.description = description
      AbacatePayBillingProductObj.quantity = quantity
      AbacatePayBillingProductObj.price = price
      setmetatable(AbacatePayBillingProductObj, AbacatePayBillingProduct)
      return AbacatePayBillingProductObj



end
return AbacatePayBillingProduct