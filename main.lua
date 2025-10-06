-- main.lua: remote loader
local URL = "https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua"
local src = game:HttpGet(URL)
local fn, err = loadstring(src)
if not fn then error("Failed to load remote script: " .. tostring(err)) end
return fn()
