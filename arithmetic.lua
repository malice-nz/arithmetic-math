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
function arith.mode( t )
  local counts={}
  for k, v in pairs( t ) do
    if counts[v] == nil then
      counts[v] = 1
    else
      counts[v] = counts[v] + 1
    end
  end
  local biggestCount = 0
  for k, v  in pairs( counts ) do
    if v > biggestCount then
      biggestCount = v
    end
  end
  local temp={}
  for k,v in pairs( counts ) do
    if v == biggestCount then
      table.insert( temp, k )
    end
  end
  return temp
end
function arith.median( t )
  local temp={}
  for k,v in pairs(t) do
    if type(v) == 'number' then
      table.insert( temp, v )
    end
  end
  table.sort( temp )
  if math.fmod(#temp,2) == 0 then
    return ( temp[#temp/2] + temp[(#temp/2)+1] ) / 2
  else
    return temp[math.ceil(#temp/2)]
  end
end
function arith.range(arg)
assert(type(table)=="table","\n\n\nInvalid Type\nArgument must be table\n\n")
table.sort(arg)
return arg[#arg] - arg[1]
end
function arith.factor(n)
assert(type(n)=="number","\n\n\nInvalid Type\nArgument must be a number")
    if (n == 0) then
        return 1
    else
        return n * arith.factor(n - 1)
    end
end
return arith