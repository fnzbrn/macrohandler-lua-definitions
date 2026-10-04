---@meta
-- Sandbox-aware LuaJ base/string/os/coroutine declarations.
-- The matching .luarc.json disables stock declarations for these libraries.

--- LuaJ base operation retained by the sandbox. Protected-call result arity is dynamic; additional values remain any.
--- Source: https://github.com/luaj/luaj/blob/v3.0.1/src/core/org/luaj/vm2/lib/BaseLib.java:83
---@param value any
---@param ... any
---@return any ...
function assert(value, ...) end

--- LuaJ base operation retained by the sandbox. Protected-call result arity is dynamic; additional values remain any.
--- Source: https://github.com/luaj/luaj/blob/v3.0.1/src/core/org/luaj/vm2/lib/BaseLib.java:83
---@param message any
---@param level? integer
---@return nil result1
function error(message, level) end

--- LuaJ base operation retained by the sandbox. Protected-call result arity is dynamic; additional values remain any. MacroHandler logs ordinary caught errors and rethrows stop/safety-limit aborts; they are not catchable continuations.
--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaSandbox.kt:40
---@param fn function
---@param ... any
---@return boolean result1
---@return any ...
function pcall(fn, ...) end

--- LuaJ base operation retained by the sandbox. Protected-call result arity is dynamic; additional values remain any. MacroHandler logs ordinary caught errors and rethrows stop/safety-limit aborts; they are not catchable continuations.
--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaSandbox.kt:53
---@param fn function
---@param handler function
---@param ... any
---@return boolean result1
---@return any ...
function xpcall(fn, handler, ...) end

--- LuaJ base operation retained by the sandbox. Protected-call result arity is dynamic; additional values remain any.
--- Source: https://github.com/luaj/luaj/blob/v3.0.1/src/core/org/luaj/vm2/lib/BaseLib.java:83
---@param left any
---@param right any
---@return boolean result1
function rawequal(left, right) end

--- LuaJ base operation retained by the sandbox. Protected-call result arity is dynamic; additional values remain any.
--- Source: https://github.com/luaj/luaj/blob/v3.0.1/src/core/org/luaj/vm2/lib/BaseLib.java:83
---@param value table|string
---@return integer result1
function rawlen(value) end

--- LuaJ base operation retained by the sandbox. Protected-call result arity is dynamic; additional values remain any.
--- Source: https://github.com/luaj/luaj/blob/v3.0.1/src/core/org/luaj/vm2/lib/BaseLib.java:83
---@param index integer|"#"
---@param ... any
---@return any ...
function select(index, ...) end

--- LuaJ base operation retained by the sandbox. Protected-call result arity is dynamic; additional values remain any.
--- Source: https://github.com/luaj/luaj/blob/v3.0.1/src/core/org/luaj/vm2/lib/BaseLib.java:83
---@param value any
---@param base? integer 2..36.
---@return number|nil result1
function tonumber(value, base) end

--- LuaJ base operation retained by the sandbox. Protected-call result arity is dynamic; additional values remain any.
--- Source: https://github.com/luaj/luaj/blob/v3.0.1/src/core/org/luaj/vm2/lib/BaseLib.java:83
---@param value any
---@return string result1
function tostring(value) end

--- LuaJ base operation retained by the sandbox. Protected-call result arity is dynamic; additional values remain any.
--- Source: https://github.com/luaj/luaj/blob/v3.0.1/src/core/org/luaj/vm2/lib/BaseLib.java:83
---@param value any
---@return string result1
function type(value) end

--- LuaJ base operation retained by the sandbox. Protected-call result arity is dynamic; additional values remain any.
--- Source: https://github.com/luaj/luaj/blob/v3.0.1/src/core/org/luaj/vm2/lib/BaseLib.java:83
---@param value table
---@return function result1
---@return table result2
---@return nil result3
function pairs(value) end

--- LuaJ base operation retained by the sandbox. Protected-call result arity is dynamic; additional values remain any.
--- Source: https://github.com/luaj/luaj/blob/v3.0.1/src/core/org/luaj/vm2/lib/BaseLib.java:83
---@param value table
---@return function result1
---@return table result2
---@return integer result3
function ipairs(value) end

--- LuaJ base operation retained by the sandbox. Protected-call result arity is dynamic; additional values remain any.
--- Source: https://github.com/luaj/luaj/blob/v3.0.1/src/core/org/luaj/vm2/lib/BaseLib.java:83
---@param value table
---@param key? any
---@return any result1
---@return any result2
function next(value, key) end

---@type table<string, any>
_G = {}
---@type string
_VERSION = "Lua 5.2"

---@class MacroHandler.SafeOs
os = {}

--- Allowed by SandboxConfigurer; date("*t") returns a table.
--- Source: https://github.com/luaj/luaj/blob/v3.0.1/src/core/org/luaj/vm2/lib/OsLib.java:90
---@return number result1
function os.clock() end

--- Allowed by SandboxConfigurer; date("*t") returns a table.
--- Source: https://github.com/luaj/luaj/blob/v3.0.1/src/core/org/luaj/vm2/lib/OsLib.java:90
---@param date? table
---@return number result1
function os.time(date) end

--- Allowed by SandboxConfigurer; date("*t") returns a table.
--- Source: https://github.com/luaj/luaj/blob/v3.0.1/src/core/org/luaj/vm2/lib/OsLib.java:90
---@param later number
---@param earlier number
---@return number result1
function os.difftime(later, earlier) end

--- Allowed by SandboxConfigurer; date("*t") returns a table.
--- Source: https://github.com/luaj/luaj/blob/v3.0.1/src/core/org/luaj/vm2/lib/OsLib.java:90
---@param format? string
---@param time? number
---@return string|table result1
function os.date(format, time) end

---@class MacroHandler.SafeCoroutine
coroutine = {}

--- Thread creation/resumption/yield is removed by the MacroHandler sandbox.
--- Source: https://github.com/luaj/luaj/blob/v3.0.1/src/core/org/luaj/vm2/lib/CoroutineLib.java:69
---@param thread thread
---@return string result1
function coroutine.status(thread) end

--- Returns the current thread and whether it is the main thread; no coroutine scheduling is exposed.
--- Source: https://github.com/luaj/luaj/blob/v3.0.1/src/core/org/luaj/vm2/lib/CoroutineLib.java:96
---@return thread result1
---@return boolean result2
function coroutine.running() end

string = {}

--- LuaJ string operation: byte-based indices, Lua patterns (not Java regex). rep output is bounded by SandboxConfigurer.
--- Source: https://github.com/luaj/luaj/blob/v3.0.1/src/core/org/luaj/vm2/lib/StringLib.java:81
---@param value string
---@param start? integer
---@param finish? integer
---@return any ...
function string.byte(value, start, finish) end

--- LuaJ string operation: byte-based indices, Lua patterns (not Java regex). rep output is bounded by SandboxConfigurer.
--- Source: https://github.com/luaj/luaj/blob/v3.0.1/src/core/org/luaj/vm2/lib/StringLib.java:81
---@param ... integer
---@return string result1
function string.char(...) end

--- LuaJ string operation: byte-based indices, Lua patterns (not Java regex). rep output is bounded by SandboxConfigurer.
--- Source: https://github.com/luaj/luaj/blob/v3.0.1/src/core/org/luaj/vm2/lib/StringLib.java:81
---@param value string
---@param pattern string
---@param start? integer
---@param plain? boolean
---@return integer|nil result1
---@return integer|nil result2
---@return any ...
function string.find(value, pattern, start, plain) end

--- LuaJ string operation: byte-based indices, Lua patterns (not Java regex). rep output is bounded by SandboxConfigurer.
--- Source: https://github.com/luaj/luaj/blob/v3.0.1/src/core/org/luaj/vm2/lib/StringLib.java:81
---@param format string
---@param ... any
---@return string result1
function string.format(format, ...) end

--- LuaJ string operation: byte-based indices, Lua patterns (not Java regex). rep output is bounded by SandboxConfigurer.
--- Source: https://github.com/luaj/luaj/blob/v3.0.1/src/core/org/luaj/vm2/lib/StringLib.java:81
---@param value string
---@param pattern string
---@return function result1
function string.gmatch(value, pattern) end

--- LuaJ string operation: byte-based indices, Lua patterns (not Java regex). rep output is bounded by SandboxConfigurer.
--- Source: https://github.com/luaj/luaj/blob/v3.0.1/src/core/org/luaj/vm2/lib/StringLib.java:81
---@param value string
---@param pattern string
---@param replacement string|table|function
---@param count? integer
---@return string result1
---@return integer result2
function string.gsub(value, pattern, replacement, count) end

--- LuaJ string operation: byte-based indices, Lua patterns (not Java regex). rep output is bounded by SandboxConfigurer.
--- Source: https://github.com/luaj/luaj/blob/v3.0.1/src/core/org/luaj/vm2/lib/StringLib.java:81
---@param value string
---@return integer result1
function string.len(value) end

--- LuaJ string operation: byte-based indices, Lua patterns (not Java regex). rep output is bounded by SandboxConfigurer.
--- Source: https://github.com/luaj/luaj/blob/v3.0.1/src/core/org/luaj/vm2/lib/StringLib.java:81
---@param value string
---@return string result1
function string.lower(value) end

--- LuaJ string operation: byte-based indices, Lua patterns (not Java regex). rep output is bounded by SandboxConfigurer.
--- Source: https://github.com/luaj/luaj/blob/v3.0.1/src/core/org/luaj/vm2/lib/StringLib.java:81
---@param value string
---@param pattern string
---@param start? integer
---@return any ...
function string.match(value, pattern, start) end

--- LuaJ string operation: byte-based indices, Lua patterns (not Java regex). rep output is bounded by SandboxConfigurer.
--- Source: https://github.com/luaj/luaj/blob/v3.0.1/src/core/org/luaj/vm2/lib/StringLib.java:81
---@param value string
---@param count integer
---@param separator? string
---@return string result1
function string.rep(value, count, separator) end

--- LuaJ string operation: byte-based indices, Lua patterns (not Java regex). rep output is bounded by SandboxConfigurer.
--- Source: https://github.com/luaj/luaj/blob/v3.0.1/src/core/org/luaj/vm2/lib/StringLib.java:81
---@param value string
---@return string result1
function string.reverse(value) end

--- LuaJ string operation: byte-based indices, Lua patterns (not Java regex). rep output is bounded by SandboxConfigurer.
--- Source: https://github.com/luaj/luaj/blob/v3.0.1/src/core/org/luaj/vm2/lib/StringLib.java:81
---@param value string
---@param start integer
---@param finish? integer
---@return string result1
function string.sub(value, start, finish) end

--- LuaJ string operation: byte-based indices, Lua patterns (not Java regex). rep output is bounded by SandboxConfigurer.
--- Source: https://github.com/luaj/luaj/blob/v3.0.1/src/core/org/luaj/vm2/lib/StringLib.java:81
---@param value string
---@return string result1
function string.upper(value) end
