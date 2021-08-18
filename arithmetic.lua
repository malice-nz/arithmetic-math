local arith = {}
function arith.clamp(x,min,max)
if x > max then
x = max
end
if x < min then
x = min
end
end
function arith.mean(table)
assert(type(table)=="table","\n\n\nInvalid Type\nArgument must be table\n\n")
local val = #table
local val2 = 0
for i = 1,val do
val2 = val2 + table[i]
end
return val2/val 
end
function arith.range(arg)
assert(type(table)=="table","\n\n\nInvalid Type\nArgument must be table\n\n")
table.sort(arg)
return arg[#arg] - arg[1]
end
return arith