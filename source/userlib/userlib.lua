-- require all user modules/libraries as submodules here

userlib = {}

-- in main.lua, there should be a constant `_userlibroot` with value "source/userlib/"

_mainroot = ''	-- avoids errors from testing for existence of `_mainroot` in Phrases and LAM
--local _old_mainroot = ''
--if _mainroot then _old_mainroot = _mainroot end  -- stash old mainroot and reload it at the end of this file
--_mainroot = _mainroot or ''


-- example package
_eproot = _userlibroot .. "example_package/"
userlib.example_package = require(_eproot .. "example_package")

-- LuaArrayMethods 
_lamroot = _userlibroot .. "LuaArrayMethods/"
userlib.LuaArrayMethods = require(_lamroot .. 'lam')

-- Phrases
_phrasesroot = _userlibroot .. "Phrases/"
userlib.Phrases = require(_phrasesroot .. 'Phrases')


print()
print("~~~ Loading userlib module...")
print("  ~ userlib.lua folder : ".._userlibroot)
print("~~~ Locations: ")
print("  ~ userlib                        ", userlib)
print("  ~ userlib.example_package        ", userlib.example_package)
--print("  ~ userlib.example_package.foo ", userlib.example_package.foo)
print("  ~ userlib.LuaArrayMethods        ", userlib.LuaArrayMethods)
print("  ~ userlib.Phrases                ", userlib.Phrases)
print('\n')

return userlib