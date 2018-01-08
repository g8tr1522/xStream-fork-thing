--[[===========================================================================
messing with model user data.lua
===========================================================================]]--

return {
arguments = {
},
presets = {
},
data = {
  ["ary"] = " return lam.make.range(-1,3,0.5) ",
  ["foo"] = [[ return function ()
				print("hi! I'm data.foo, located at : ", tostring(data.foo))
			end
		]],
  ["val"] = " return 0 ",
},
events = {
},
options = {
 color = 0x000000,
},
callback = [[
-- Use this as a template for your own creations. 
xline.note_columns[1].note_value = NOTE_OFF_VALUE

print()
--print("data is ", tostring(data))
--data.foo()
print( unpack(data.ary) )

if xinc==10 then
  data.ary = {1,2,3}
  data.new = {4,5,6}
end

if data.new then
  print( unpack(data.new) )
end
]],
}