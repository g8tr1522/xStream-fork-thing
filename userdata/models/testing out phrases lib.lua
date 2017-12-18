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
  latch = function (val)
    if val    then val = nil; return 0;    else return nil;
  end; end;
  i = 0; return latch(i)
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

--print(xpos.line, obj.get:pl()+1)

if (xpos.line == (obj.get:pl()+1)) then
  local pick = {1,2,2,3,3,3,4}
  
  xline.note_columns[1].note_value = 
      obj.get:note() - (12* pick[math.random(#pick)])
  xline.note_columns[1].instrument_value = 0 
  obj:vc{inc=1}
elseif (xpos.line == 12) then
  obj.dm:shake{0.25, 6}
  obj:print_info('d')
else
  xline.note_columns[1].note_value = EMPTY_NOTE_VALUE
  --comment out the above line to get something interesting
end
]],
}