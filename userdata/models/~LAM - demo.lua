--[[===========================================================================
~LAM - demo.lua
===========================================================================]]--

return {
arguments = {
},
presets = {
},
data = {
  ["next_line"] = "return 4",
  ["notes"] = [[ return function ()
		local t = lam.new{ 'c0', 'c1', 'c2', 'e2', 'f2', 'g2', 'b-2'}
		t:notes2midi_():add_(2*12)
		return t
	end
	]],
},
events = {
},
options = {
 color = 0x000000,
},
callback = [[
-----------------------------------------------------------------------------
-- Using the LAM package
-- 
-- In this model's lua file, there's a couple of members in the 
-- user data table.
-- - data.next_line
--     is initially set to 4, but grows greater and greater as this model runs
-- - data.notes
--     - is a lamarray
--     - starts at : { 'c0', 'c1', 'c2', 'e2', 'f2', 'g2', 'b-2'}
--     - but is converted to note values, and incremented a couple octaves
--
-- The point of the model is to use the `lam` module to
--    randomly select note values 
--    and the timings at which to play them.
-- Notice how a lamarray is made as an object (in the user data table),
--    but it must be accessed as a function call (which returns the lamarray).
-----------------------------------------------------------------------------

local NOLIP = rns.patterns[1].number_of_lines


local note_lengths = {2,4,8,16}
local note_len = lam.basic.weighted( note_lengths, { 10,8, 3, 0.2 } )


if (xpos.line-1) == data.next_line then
  data.next_line = (data.next_line + note_len) % NOLIP
  
  xline.note_columns[1] = {
    instrument_value = 0,
    note_value = data.notes():sample(),
  }
else
  xline.note_columns[1].note_value = EMPTY_NOTE_VALUE
end
]],
}