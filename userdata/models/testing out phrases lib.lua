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
--function definition is below: (very condensed, to save space)
latch2nil = function() 
  local latch = function (val)
    if val then 
      val = nil; 
      return 1;    
    else 
      return nil;    
    end; 
  end;
  
  local i = 0; 
  return latch(i)
end

all = function(t, func)
  for i,v in ipairs(t) do
    t[i] = func(v)
  end
  return t
end

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------

if (xinc==latch2nil()) then
  print("\n----------------------------------------")
  print("Initializing model ... \n")
  print("pattern, line = ", xpos.sequence, xpos.line)
  
  Phrases.Ins:print_info('l')
  obj = Phrases.Ins:new{nnp=1, nopl = 32, dub=9}
  obj:print_info('l')
  
  notes = {72,72,94,96, 75,77, 65,77,65,77,63,75}
  notes = all(notes, function(v) 
      return v - 12*0
    end
  )
  obj.set:notes(notes)
  
  obj.set:delays {1,1.25,1.5,2, 2.5,3, 5,5.5,7,7.5,8,8.5}
  obj:print_info('a')
  
  --print(obj:vc(), obj.get:pl() )
  
  print("\nAll done initializing.")
  print("----------------------------------------\n\n")
end

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------

-- Regular xStream stuff goes here


print("pattern, line = ", xpos.sequence, xpos.line)
xline.note_columns[1].note_value = NOTE_OFF_VALUE
]],
}