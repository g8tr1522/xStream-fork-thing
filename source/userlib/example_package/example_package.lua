-- use this module as an idea of how to include other packages in xStream

ep = {}
_srcroot = _eproot .. "source/"	 -- `_eproot` was defined in userlib.lua


ep.foo = require(_srcroot.."foo")


return ep
