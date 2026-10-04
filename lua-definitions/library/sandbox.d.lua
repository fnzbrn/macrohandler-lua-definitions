---@meta
-- Sources: SandboxConfigurer.kt and ExecutionLifecycleManager.loadPolyfills.
-- Removed symbols deliberately have nil types.

--- Removed after trusted polyfills are loaded; unavailable to user scripts.
---@type nil
setmetatable = nil

--- Removed after trusted polyfills are loaded; unavailable to user scripts.
---@type nil
getmetatable = nil

--- Unavailable in the MacroHandler sandbox.
---@type nil
loadfile = nil

--- Unavailable in the MacroHandler sandbox.
---@type nil
dofile = nil

--- Unavailable in the MacroHandler sandbox.
---@type nil
loadstring = nil

--- Unavailable in the MacroHandler sandbox.
---@type nil
load = nil

--- Unavailable in the MacroHandler sandbox.
---@type nil
io = nil

--- Unavailable in the MacroHandler sandbox.
---@type nil
package = nil

--- Unavailable in the MacroHandler sandbox.
---@type nil
require = nil

--- Unavailable in the MacroHandler sandbox.
---@type nil
luajava = nil

--- Unavailable in the MacroHandler sandbox.
---@type nil
collectgarbage = nil

--- Unavailable in the MacroHandler sandbox.
---@type nil
getfenv = nil

--- Unavailable in the MacroHandler sandbox.
---@type nil
setfenv = nil

--- Unavailable in the MacroHandler sandbox.
---@type nil
rawget = nil

--- Unavailable in the MacroHandler sandbox.
---@type nil
rawset = nil

--- Unavailable in the MacroHandler sandbox.
---@type nil
debug = nil

--- Unavailable in the MacroHandler sandbox.
---@type nil
string.dump = nil

--- Unavailable in the MacroHandler sandbox.
---@type nil
os.execute = nil

--- Unavailable in the MacroHandler sandbox.
---@type nil
os.exit = nil

--- Unavailable in the MacroHandler sandbox.
---@type nil
os.remove = nil

--- Unavailable in the MacroHandler sandbox.
---@type nil
os.rename = nil

--- Unavailable in the MacroHandler sandbox.
---@type nil
os.tmpname = nil

--- Unavailable in the MacroHandler sandbox.
---@type nil
os.setlocale = nil

--- Unavailable in the MacroHandler sandbox.
---@type nil
os.getenv = nil

--- Unavailable in the MacroHandler sandbox.
---@type nil
coroutine.create = nil

--- Unavailable in the MacroHandler sandbox.
---@type nil
coroutine.wrap = nil

--- Unavailable in the MacroHandler sandbox.
---@type nil
coroutine.resume = nil

--- Unavailable in the MacroHandler sandbox.
---@type nil
coroutine.yield = nil
