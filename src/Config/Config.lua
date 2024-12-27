Config = {}
Config.__index = Config

function Config:new()
    local self = setmetatable({}, Config)
    self.Url = nil
    self.ApiKey = nil
    return self
end

function Config:set(url, apiKey)
    self.Url = url
    self.ApiKey = apiKey
end

function Config:get()
    return { url = self.Url, apiKey = self.ApiKey }
end

return Config
