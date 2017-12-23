--[[===========================================================================
using the userlib module.lua
===========================================================================]]--

return {
arguments = {
},
presets = {
},
data = {
},
events = {
},
options = {
 color = 0x000000,
},
callback = [[
--function definition is below: (very condensed, to save space)
latch2nil = function() 
  latch = function (val)
    if val    then val = nil; return 0;    else return nil;
  end; end;
  i = 0; return latch(i)
end

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------

if (xinc==latch2nil()) then
  print("\n----------------------------------------")
  print("Initializing model ... \n")
  
  print(userlib.example_package)
  print(ex_pkg) -- this should print the same thing as above
  ex_pkg.foo()
  
  print("\nAll done initializing.")
  print("----------------------------------------\n\n")
end

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------

-- Regular xStream stuff goes here
]],
}