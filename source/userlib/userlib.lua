-- require all user modules/libraries as submodules here

userlib = {}

-- in main.lua, there should be a constant `_userlibroot` with value "source/userlib/"



-- example package
_eproot = _userlibroot .. "example_package/"
userlib.example_package = require(_eproot .. "example_package")

-- LuaArrayMethods 
_lamroot = _userlibroot .. "LuaArrayMethods/"
userlib.LuaArrayMethods = require(_lamroot .. 'lam')



print()
print("~~~ Loading userlib module...")
print("  ~ userlib.lua folder : ".._userlibroot)
print("~~~ Locations: ")
print("  ~ userlib                        ", userlib)
print("  ~ userlib.example_package        ", userlib.example_package)
--print("  ~ userlib.example_package.foo ", userlib.example_package.foo)
print("  ~ userlib.LuaArrayMethods        ", userlib.LuaArrayMethods)
print('\n')

return userlib
