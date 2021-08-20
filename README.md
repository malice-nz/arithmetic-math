# Arithmetic Functions
`by max`

![Arithmetic](https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/Lua-Logo.svg/100px-Lua-Logo.svg.png)
- - - 

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
## .factor
**Factorial** is the product of a integer and all integers below it
```lua
local arit = require("arithmetic")
print( arit.factor(4) ) -- Returns 24
```
## .mode
**Mode** is the value that appears most in a array
> Always use unpack() to get the mode data

```lua
local arit = require("arithmetic")
local foo = {1,1,1,2,2,3,3,3,3,4,5,5,5,5,5}
print( unpack(arit.mode( foo )) ) -- Returns 5
```
