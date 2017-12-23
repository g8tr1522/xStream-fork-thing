--[[===========================================================================
l2n-untitled.lua
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
  
  print(userlib.testmod.foo1)
  print(testmod.foo1)
  print(userlib.example_package)
  print(ex_pkg)
  ex_pkg.foo()
  
  print("\nAll done initializing.")
  print("----------------------------------------\n\n")
end

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------

-- Regular xStream stuff goes here
]],
}