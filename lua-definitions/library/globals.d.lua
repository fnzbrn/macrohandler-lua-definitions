---@meta
-- IDE definitions only. Do not execute or import this file.

--- Coordinate edge bit. Source: ScriptApiCatalog.kt
---@type integer
LEFT = 1

--- Coordinate edge bit. Source: ScriptApiCatalog.kt
---@type integer
TOP = 2

--- Coordinate edge bit. Source: ScriptApiCatalog.kt
---@type integer
RIGHT = 4

--- Coordinate edge bit. Source: ScriptApiCatalog.kt
---@type integer
BOTTOM = 8

--- Log arguments separated by tabs; not a console stdout stream.
--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:400
---@param ... any
---@return nil result1
function print(...) end

--- Wait in seconds. Polyfill loads after ScriptApiInstaller and calls wait(math.floor(seconds * 1000)); seconds is required.
--- Source: app/src/main/assets/lua/polyfills.lua:530
---@param seconds any
---@return nil result1
function sleep(seconds) end

--- Wait in milliseconds with runtime stop checks.
--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:310
---@param milliseconds? number Default 0; negative values clamp to 0.
---@return nil result1
function wait(milliseconds) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:385
---@param text? string Default empty string.
---@return boolean result1
function notifyPro(text) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:392
---@param text? string Default empty string.
---@return boolean result1
function toast(text) end

--- Click a wrapped target or coordinate table. A numeric click(x,y) overload is not registered.
--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:307
---@param target MacroHandler.Point|MacroHandler.Region|MacroHandler.Result|MacroHandler.TextResult|MacroHandler.PointData|number[]
---@param clickParam? any
---@return boolean result1
function click(target, clickParam) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:438
---@param point MacroHandler.Point|MacroHandler.Region|MacroHandler.Result|MacroHandler.PointData|number[]
---@return boolean result1
function quickTap(point) end

--- At least two path points; GesturePoint hold/speed and swipe timings use milliseconds.
--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:309
---@param path (MacroHandler.Point|MacroHandler.GesturePoint)[]
---@param swipeParam? MacroHandler.SwipeParam
---@return boolean result1
function swipe(path, swipeParam) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:518
---@return MacroHandler.MultiGestureBuilder result1
function MultiGestureBuilder() end

--- Opaque gesture identity handle, not a table exposing Java getters. Invalid point returns nil.
--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:524
---@param point MacroHandler.Point|MacroHandler.Region|MacroHandler.Result|MacroHandler.PointData|number[]
---@param hold? integer Default 0 milliseconds.
---@param speed? integer Default 0 milliseconds.
---@return MacroHandler.GesturePoint|nil result1
function GesturePoint(point, hold, speed) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:532
---@param text? string
---@return MacroHandler.TextView result1
function TextView(text) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:537
---@return MacroHandler.Spacer result1
function Spacer() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:541
---@param value? string
---@param lines? integer Default 1.
---@param label? string
---@param hint? string
---@return MacroHandler.EditText result1
function EditText(value, lines, label, hint) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:549
---@param checked? boolean Default false.
---@param label? string
---@return MacroHandler.Checkbox result1
function Checkbox(checked, label) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:555
---@param options string[]
---@param selected? integer Default 0; direct widget index is zero-based.
---@return MacroHandler.RadioGroup result1
function RadioGroup(options, selected) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:561
---@param options string[]
---@param selectedValues? string[]|string
---@param label? string
---@return MacroHandler.MultiSelect result1
function MultiSelect(options, selectedValues, label) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:571
---@param value? string
---@param label? string
---@return MacroHandler.TagInput result1
function TagInput(value, label) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:577
---@param value? string
---@param label? string
---@return MacroHandler.SignaturePad result1
function SignaturePad(value, label) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:583
---@param name? string
---@param label? string
---@return MacroHandler.ImagePicker result1
function ImagePicker(name, label) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:595
---@param value? string
---@param label? string
---@return MacroHandler.NavigationEditor result1
function NavigationEditor(value, label) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:601
---@param value? string
---@param label? string
---@return MacroHandler.AgentDetectEditor result1
function AgentDetectEditor(value, label) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:589
---@param value? string
---@param label? string
---@return MacroHandler.ColorPicker result1
function ColorPicker(value, label) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:607
---@param value? string
---@param label? string
---@return MacroHandler.FilePicker result1
function FilePicker(value, label) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:613
---@param value? string
---@param label? string
---@param pattern? string Default yyyy-MM-dd HH:mm:ss.
---@return MacroHandler.DateTimePicker result1
function DateTimePicker(value, label, pattern) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:620
---@param value? string
---@param label? string
---@param min? string
---@param max? string
---@return MacroHandler.NumberRange result1
function NumberRange(value, label, min, max) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:628
---@param value? string
---@param label? string
---@param min? string
---@param max? string
---@return MacroHandler.Slider result1
function Slider(value, label, min, max) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:636
---@param name? string
---@param label? string
---@return MacroHandler.Recorder result1
function Recorder(name, label) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:642
---@param tabs string[]
---@param selected? integer Default 0.
---@return MacroHandler.TabLayout result1
function TabLayout(tabs, selected) end

--- Request the active script to stop.
--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:380
---@return nil result1
function requestStop() end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:474
---@param t table
---@param value any
---@return integer result1
function push(t, value) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:479
---@param t table
---@return any result1
function pop(t) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:483
---@param t table
---@return integer result1
function size(t) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:489
---@param cond any
---@param a any
---@param b any
---@return any result1
function iif(cond, a, b) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:493
---@param ... any
---@return any result1
function coalesce(...) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:501
---@param fn fun(...: any): any
---@param catch? fun(...: any): any
---@return any result1
function try(fn, catch) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:511
---@param start number
---@param stop? number
---@param step? number
---@return fun(): number|nil result1
function range(start, stop, step) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:526
---@param n number
---@param fn fun(...: any): any
---@return nil result1
function times(n, fn) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:534
---@param ... any
---@return nil result1
function log(...) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:548
---@param t table
---@param indent? number
---@param seen? any
---@return string result1
function dump(t, indent, seen) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:566
---@param base? any
---@return MacroHandler.LuaClass result1
function Class(base) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:766
---@param value any
---@param cases any
---@return any result1
function switch(value, cases) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:775
---@param t table
---@param fn fun(value: any, index: integer, items: table): any
---@return any[] result1
function map(t, fn) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:776
---@param t table
---@param fn fun(value: any, index: integer, items: table): any
---@return any[] result1
function filter(t, fn) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:777
---@param t table
---@param fn fun(value: any, index: integer, items: table): any
---@return any result1
function find(t, fn) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:778
---@param t table
---@param fn fun(value: any, index: integer, items: table): any
---@param init? any
---@return any result1
function reduce(t, fn, init) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:779
---@param t table
---@return any[] result1
function keys(t) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:780
---@param t table
---@return any[] result1
function values(t) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:781
---@param t table
---@param fn fun(value: any, index: integer, items: table): any
---@return nil result1
function each(t, fn) end
