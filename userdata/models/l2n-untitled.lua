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
  
  t = lam.new("range", -2,2,0.5)
  print(t:unpack())
  t:shuffle_()
  print(t:unpack())
  
  print("\nAll done initializing.")
  print("----------------------------------------\n\n")
end

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------

-- Regular xStream stuff goes here
]],
}