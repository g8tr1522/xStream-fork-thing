--[[===========================================================================
Untitled model (1).lua
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
-- Empty configuration
-------------------------------------------------------------------------------

print("pattern, line = ", xpos.sequence, xpos.line)
--print(xplaypos)
xline.note_columns[1].note_value = NOTE_OFF_VALUE
]],
}