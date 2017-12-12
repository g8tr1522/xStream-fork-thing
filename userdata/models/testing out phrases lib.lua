--[[===========================================================================
testing out phrases lib.lua
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
-------------------------------------------------------------------------------
-- Empty configuration - with latch2nil function --
---------------------------------------------------
-- This is the base template for models that use latch2nil
-- latch2nil is already defined at the top.
-- latch2nil is a function that returns 0 the at the first call,
    -- but returns nil for successive calls
-- This function is used in an if block to create an 'initial state'
    -- for xStream sessions.
    -- This is useful for instantiating objects, new variables, etc.
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------

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
  
  Phrases.Ins:print_info('l')
  obj = Phrases.Ins:new("mp_lead", {nopl = 64, dub=5})
  obj:print_info()
  obj:set_notes{10,20,30,40}
  obj:set_delays{1,2,4,4.5}
  obj:print_info('dp')
  
  print("\nAll done initializing.")
  print("----------------------------------------\n\n")
end

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------

-- Regular xStream stuff goes here
]],
}