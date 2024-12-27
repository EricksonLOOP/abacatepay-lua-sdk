-- utils.lua
local utils = {}

-- Validação de e-mail
function utils.isValidEmail(email)
    return email:match("^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+%.[a-zA-Z]+$") ~= nil
end

-- Validação de número de telefone (exemplo simples, para números no formato +XX XXX XXXXX)
function utils.isValidPhoneNumber(phone)
    return phone:match("^%+?%d+%s?%d+%s?%d+$") ~= nil
end

-- Validação de CPF (considerando apenas a estrutura numérica, sem cálculos de dígitos verificadores)
function utils.isValidCPF(cpf)
    return cpf:match("^[%d][%d][%d]%d[%d]%-?[%d][%d]%d?[%d][%d]$") ~= nil
end

-- Validação de CNPJ (estrutura básica)
function utils.isValidCNPJ(cnpj)
    return cnpj:match("^[%d][%d]%d[%d]%-?[%d][%d]%d?[%d][%d]$") ~= nil
end

-- Validação de data no formato YYYY-MM-DD
function utils.isValidDate(date)
    return date:match("^%d%d%d%d%-%d%d%-%d%d$") ~= nil
end

-- Validação de URL
function utils.isValidURL(url)
    return url:match("^(https?://)[a-zA-Z0-9%-._]+(%:[0-9]+)?(/[%w%-_.?=&%]*)*$") ~= nil
end

-- Validação de número inteiro
function utils.isValidInteger(value)
    return tonumber(value) ~= nil and math.floor(value) == value
end

-- Validação de número decimal (positivo ou negativo)
function utils.isValidDecimal(value)
    return tonumber(value) ~= nil
end

-- Validação de senha (mínimo de 8 caracteres, pelo menos 1 letra e 1 número)
function utils.isValidPassword(password)
    return password:match("^(?=.*[a-zA-Z])(?=.*[%d]).{8,}$") ~= nil
end

-- Validação de string não vazia
function utils.isNotEmpty(value)
    return value ~= nil and value ~= ""
end

-- Validação de se o valor é uma lista (tabela) não vazia
function utils.isNotEmptyList(value)
    return type(value) == "table" and #value > 0
end

return utils
