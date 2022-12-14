--"LUA, THE BASICS"

--Overview: Extensible, Simple, Efficient, Portable, Free, and Open.

--[[
"Basic Syntax"

Indentifiers:
Starts with A...Z | a..z | _
then followed with zero or more letters, undersores, or digits(0-9).

Keywords:
and, break, do, else, elseif, end, false, for, function, if, in, local,
nil, not, or, repeat, return, then, true, until, while, print.

Whitespace: 
The interpreter for Lua ignores wbitespaces. Must have 
a space after keywords!

Identation: Not needed but makes the programs look neater.

Pass by reference: function, table, userdata, thread(coroutine), strings.

Optional: You can use ; to end statements in lua but it is not required. Usually 
used if one wants multiple statements all in one line.
Examples:
]]
local hello;
local Hello 
local _hello;
local _hel_lo123_
print("Hello World\n\n");


--[[
"Variables" 

Types of variables:
global, local, and table fields.

Definition: 
type variable_list

Examples:
]]
--Local variables
local x = 1
local y
print("value of x: ", x, "\nvalue of y: ", y, "\n\n")

--global variable from line 52
GLOBAL = 1


--[[
"Data Types"

Lua is dynamically typed. Variables do not have a type indicator such as
C++ where "int" stands for integer. In Lua, the value you assign to the variable
is the type of value that variable will have. 

Value types: nil, boolean, number(the reals), string, function, userdata, thread,
and table.
]]
print(type("What is this")) --string
print(type(1.0)) --number
print(type(10)) --number 
print(type(type)) --function
print(type(nil)) --nil
print(type(true), "\n\n") --boolean


--[[
"Operators"

Operators: Arithmetic, Relational, Logical, and Misc.

Precedence: 
(right to left)
unary: not, #, - 
Concatenation: .. 
(left to right)
Mult: *, /, %
Add: +, - 
Relational: <, >, <=, >=, ==, ~=
Logical: and
Logical: or 
]]
--Arithmetic
local x, y = 2, 3
print(x + y)
print(x - y)
print(x * y)
print(x / y)
print(x % y)
print(x ^ y)
print(-y, "\n\n")

--Relational
print(x == y)
print(x ~= y)
print(x > y)
print(x < y)
print(x >= y)
print(x <= y, "\n\n")

--Logical
local x, y = true, false
print(x and y)
print(x or y)
print(x and not y, "\n\n")

--Misc
local x, y = "hello ", "world"
print(x..y) 
print(#(x..y), "\n\n")


--[[
"Loops"

Types of loops: while, for, repeat...until, nested loops 

To exit a loop you can use "break"

!!!: Any type of loop can be nested inside another loop type any number of times
]]
local x = 10

print("while loop:")
while(x >= 0)
do
  print("x is: ", x)
  x = x - 1
end
print("\n\n")


print("for loop:")
for i = 0, 10, 1  --Where for(x = initial real #, final real #, decrease/increase real #)
do
  print("i is: ", i)
end
print("\n\n")

print("repeat...until loop:")
local x = 10
repeat
  print("x is: ", x)
  x = x - 1
until(x == 0)
print("\n\n")

--Showcasing multiplication and do statement can go in either places. 
print("nested loop multiplication table: ")
for i = 1, 10, 1 do
  local x = 1
  while(x <= 10) do
    print(i, "X", x, "is: ", i*x)
    x = x + 1
  end
end
print("\n\n")


--[[
"Decision"

!!!:In Lua, zero and empty strings are true in condition checks.

Just like loops, Decisions can be nested inside any number of times.

Statements: if() then, elseif then, else, 
]]
if(false) then --then statements can go here
  print("false\n\n") 

  --Else and elseif statements are optional but only one end is needed
  elseif(0 and "")
    then--then statements can go here
    print("true\n\n")
  
  elseif("")
    then
      if(0) then
      print("true but will not run since prev is true\n\n")
      end
  
  else
    print("This statement will never run\n\n")
end --Notice only one end for each block of code. In this case, the blocks are
-- the first if statement and the second if statement inside the second elseif.


--[[
"Functions"
 
 (scope) function (name)(arg1, arg2, arg3, ..., argn)
 (body)
 return v1, v2, v3, ..., vn
 
 scope: Can be local. If global, do not use the local keyword
 name: using the conventions for naming a variable.
 argn: Arguments are optional
 body: a bunch of statements
 return: you can return multiple values separating by commas or return a single value
]]
function min(n1, n2)
  local result
  if(n1 < n2) then
    result = n1;
  else
    result = n2;
  end
  return result
end

--Function call
print("Is the minimum number 5 or 4?: ", min(5,4), "\n\n") --Formal parameters

--Assigning functions as variables
local min_max = function(min_num, max_num)
  print("The min is: ", min_num, "The max num is: ", max_num, "\n\n") 
end

local function max(n1, n2)
  local result
  if(n1 > n2) then 
    result = n1
  else 
    result = n2
  end
  min_max(min(1,2), result) --Recursive call on max
end

--Function call
max(1,2)

--Global function access
local function global_output()
  print("Global variable is: ", GLOBAL)
end
global_output()


--[[
"Strings"

\ Escape character goes before the character that needs escaping or used for 
\a	Bell
\b	Backspace
\f	Formfeed
\n	New line
\r	Carriage return
\t	Tab
\v	Vertical tab
\\	Backslash
\"	Double quotes
\'	Single quotes
\[	Left square bracket
\]	Right square bracket

String Manipulation:
1	
string.upper(argument)

Returns a capitalized representation of the argument.

2	
string.lower(argument)

Returns a lower case representation of the argument.

3	
string.gsub(mainString,findString,replaceString)

Returns a string by replacing occurrences of findString with replaceString.

4	
string.find(mainString,findString,

optionalStartIndex,optionalEndIndex)

Returns the start index and end index of the findString in the main string and nil if not found.

5	
string.reverse(arg)

Returns a string by reversing the characters of the passed string.

6	
string.format(...)

Returns a formatted string.

7	
string.char(arg) and string.byte(arg)

Returns internal numeric and character representations of input argument.

8	
string.len(arg)

Returns a length of the passed string.

9	
string.rep(string, n))

Returns a string by repeating the same string n number times.

10	
..

Thus operator concatenates two strings.
]]
--String formatting
local str1, str2, str3 = "Lua", 'Lua', [[Lua]]
print("\n\n \"str1: \" ", str1, "\n") --Outputs quotes around "Lua"

--String manip
--1-10
print(
"\n\n",string.upper(str2),"\n",
string.lower(str2),"\n",
string.gsub(str2, "Lua", [[luA]]),"\n",
string.find(str2, 'Lua'),"\n",
string.reverse(str2),"\n",
string.format("%s %s %s", str1, str2, str3),"\n",
string.byte(str1, 1),"\n", --Byte representation of the 1 or nth char
string.char(76),"\n",
string.len(str2),"\n",
string.rep(str3.." ", 3),"\n"
)

--Strings are mutable
str1, str2, str3 = [[lu]], 'hello', "LUA"
print(str1, " ", str2, " ", str3,"\n\n")


--[[
"Tables"

Tables are the only data structure in Lua. Functionally, it is exactly
like an array. It can also be a diciontary, queue, stack, or mapping.
!!!: Can have a mix of values like numbers and strings in all permutations
!!!: Table sizes are not fixed and is scalable and start at index 1
!!!: Tables can be negative in Lua
!!!: You can have multiple returns values from a function
!!!: When assigning a table to another table, the memory is both the same
!!!: Tables can have any kind of index strings, boolean, real numbers, etc.
]]
local array = {"Lua", "Array"}
--index 0 is nil as show below
for i = 0, 2 do
  print(array[i])
end

print("\n")

--Arrays can be negative!
local array = {}
for i = -1, 1 do
  array[i] = i
  print(array[i])
end

print("\n")

--Multidimensional Table
local multiplication_table = {}
for i=1,10 do
  multiplication_table[i] = {}
  for j=1,10 do
    multiplication_table[i][j] = i * j
    io.write(multiplication_table[i][j], " ")
  end
  print()
end
print("\n")

--Interesting indexes
local table1 = {}
local table2 = {1, 2, 3}


table1[1] = 1
table1["what_the"] = 2
table1[false] = 3

print(table1[1], table1["what_the"], table1[false], "\n")

--Table manipulation
print(
"\n",table.concat(table2),"\n",
table.concat(table2, ", ", 2, 3)
)
table.insert(table2,4) --adds at the end of the array
table.remove(table2, 1)
table.sort(table2)
print("\n",table.concat(table2, ", "))

print("\n\n")


--[[
"Iterators"

Allows traversal through elements of data structures such as arrays.
keys always start at value 1 and increments by one. 

in ipairs is the keyword for iterator format.
]]
--for iterator for(name, name, in ipairs(arg))
local array = {1, 2, 3}
for key, value in ipairs(array)
do
  print(key, value)
end
print("\n")


--Making a unique iterator Stateless
local function square(iteratorMaxCount,currentNumber)

   if currentNumber<iteratorMaxCount
   then
      currentNumber = currentNumber+1
      return currentNumber, currentNumber*currentNumber
   end
	
end

--When using in, calling a function: in function_name, arg1, arg2, arg3, ..., argn
for i,n in square,3,0 --Does not look like in ipairs() yet
do
   print(i,n)
end

print("\n\n")

function square(iteratorMaxCount,currentNumber)
   
   if currentNumber<iteratorMaxCount
   then
      currentNumber = currentNumber+1
      return currentNumber, currentNumber*currentNumber
   end
	
end

local function squares(iteratorMaxCount) --Make another function
   return square,iteratorMaxCount,0 --using in
end  

for i,n in squares(3) --Looks more like in ipairs()
do 
   print(i,n)
end

print("\n\n")

--[[
"Modules"

Modules are like libraries loaded in using the require keyword.

Just a bunch of functions wrapped under a variable and do things when
invoked
]]
--Accessing the calculator module
local calc = require("calculator") --written on the same folder in file named calculator.lua
calc.add(1,2)
calc.subt(1,2)
calc.mul(1,2)
calc.div(1,2)
print("\n\n")


--[[
"Metatables"

An auxiliary table that helps modify behaviors of tables along with key est and meta methods
such as changing/adding functionalities to operators on tables and looking up metatables when 
no key is available in the table. 

Important methods to set and get metatables:
setmetatable(table, metatable) which sets the metatable
getmetatable(table) which is used to get the metadata of a table

Meta methods:
__index(table, index) which looks up a metatable
__newindex(table, index, value) new keys will be defined in the metamethod which
then transfers over to the main table

Table operator behaviors: 
1	
__add

Changes the behavior of operator '+'.

2	
__sub

Changes the behavior of operator '-'.

3	
__mul

Changes the behavior of operator '*'.

4	
__div

Changes the behavior of operator '/'.

5	
__mod

Changes the behavior of operator '%'.

6	
__unm

Changes the behavior of operator '-'.

7	
__concat

Changes the behavior of operator '..'.

8	
__eq

Changes the behavior of operator '=='.

9	
__lt

Changes the behavior of operator '<'.

10	
__le

Changes the behavior of operator '<='.
]]
--How to set a table as a metatable and check table for index
local mytable = {1,2,3,4,5}
setmetatable(mytable,{
  __index = function(atable, index)
    return "No such data" --prevents table search from crashing
  end
})
print(mytable[100], "\n")

--Adding a missing values
setmetatable(mytable,{
  __newindex = function(atable, index, value)
    rawset(atable, index, value) --Changing the array size and adding 
    print("Added ", value, "to mytable at index ", index, "\n")
    return 1 --prevents table search from crashing
  end
})
mytable[6] = 1
print(mytable[6], "\n")

print(mytable)
print(mytable) 
print(getmetatable(mytable), "\n") 

--Adding two tables together
local mytable = setmetatable({ 1, 2, 3 }, {
  __add = function(mytable, newtable)
     for i = 1, #mytable do 
        table.insert(mytable, #mytable+1,newtable[i])
     end
     return mytable
  end
})

local secondtable = {4,5,6}

mytable = mytable + secondtable

for i = 1, #mytable, 1 do
  print(mytable[i]) 
end
print("\n")

print("\n\n")
--[[
"Closures"

Closures are functions that 'closes' over those local variables.
The local variable that has been closed over by that function reads up
into the new scope of the other func which is why it's called an upvalue.
]]
local function counter()
  local i = 1
  return function() --closure function (anonymous)
    i = i + 1
    return i
  end
end

local v1 = counter()
print("Value of v1: ", v1())
local v2 = counter()
print("Value of v1: ", v1()) --Value is saved
print("Value of v2: ", v2())
print("\n\n")

--[[
"Recursion"

A function that calls itself until ended by a base case
]]
local function factorial(n)
  if n == 0 then
    return 1
  end
  return n * factorial(n-1)
end

print(factorial(5),"\n\n")

--[[
OOP and inheritance with metatables
]]
Rectangle = {area = 0, length = 0, width = 0}

--Method constructor
function Rectangle:new (o, length, width)
  o = o or {} --Create an object if area does not exist
   setmetatable(o, self)
   self.__index = self
   self.length = length or 0
   self.width = width or 0
   self.area = length*width;
   return o
end

--The colin is to access
function Rectangle:printArea()
   print("The area of Rectangle is ",self.area)
end

--Create object
rectangle1 = Rectangle:new(nil, 10, 10)
rectangle2 = Rectangle:new(nil, 5, 5)


rectangle1:printArea() --colin to access methods
rectangle2:printArea() 


--"ADVANCED TOPICS"

--"LIBRARIES"








