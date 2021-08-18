# Arithmetic Functions
`by mark`

## .clamp
**Clamping** is where you want to restrict a value from going too high or too low
```lua
local arit = require('arithmetic')
print( arit.clamp(67 , 1 , 50) ) -- Returns 50
```
## .mean
**Mean** is the average number in a group
```lua
local arit = require("arithmetic")
local foo = {23,21,34,9,10,8,27,16}
print( arit.mean( ok ) ) -- Returns 18.5
```
## .range
**Range** is the difference between the lowest and highest value in a group
```lua
local arit = require("arithmetic")
local foo = {24,54,12,87,34,99,32,55}
print( arit.range( foo ) ) -- Returns 87
```