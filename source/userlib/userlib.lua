-- require all user libraries/submodules as lua packages here
-- in main.lua, there should be a constant `_userlibroot` with value "source/userlib/"

userlib = {}




--=============================================================================
-- require user packages here
--
-- You 'install' your package with 3 steps:
--  1) Add the package folder in the "source/userlib/." folder
--	2) by requiring it's main module/file in this file
--	3) by adding appropriate members to the `props_table` table in "source/xStreamModel.lua"
-- see the example package below
--
--

-- example package
_eproot = _userlibroot .. "example_package/"
userlib.example_package = require(_eproot .. "example_package")
	-- now, for step 3, go to xStreamModel.lua, and see lines 318-320
	-- replicate what you see there for other packages.

-- LuaArrayMethods 
_mainroot = '' 	-- avoids errors from testing for existence of `_mainroot` in lam.lua
_lamroot = _userlibroot .. "LuaArrayMethods/"
userlib.LuaArrayMethods = require(_lamroot .. 'lam')


--=============================================================================
-- print some info (to alert the user if packages were loaded successfully)
--
--

print()
print("~~~ Loading userlib module...")
print("  ~ userlib.lua folder : ".._userlibroot)
print("~~~ Locations: ")
print("  ~ userlib                        ", userlib)
print("  ~ userlib.example_package        ", userlib.example_package)
print("  ~ userlib.LuaArrayMethods        ", userlib.LuaArrayMethods)
print('\n')




return userlib
