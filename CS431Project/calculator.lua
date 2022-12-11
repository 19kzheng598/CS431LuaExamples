--[[
"Modules"

Modules are like libraries loaded in using the require keyword.

Just a bunch of functions that do things
]]
local calculator = {}

function calculator.add(a,b)
   print(a+b, "\n")
end

function calculator.subt(a,b)
   print(a-b, "\n")
end

function calculator.mul(a,b)
   print(a*b, "\n")
end

function calculator.div(a,b)
   print(a/b, "\n")
end

return calculator