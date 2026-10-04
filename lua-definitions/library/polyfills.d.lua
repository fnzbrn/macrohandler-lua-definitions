---@meta
-- Trusted polyfill extensions to standard Lua library tables.

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:9
---@param s string
---@param sub string
---@return boolean result1
function string.contains(s, sub) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:13
---@param s string
---@param prefix string
---@return boolean result1
function string.startsWith(s, prefix) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:17
---@param s string
---@param suffix string
---@return boolean result1
function string.endsWith(s, suffix) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:21
---@param s string
---@param pattern string
---@return boolean result1
function string.matches(s, pattern) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:26
---@param a string
---@param b string
---@return integer result1
function string.compare(a, b) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:32
---@param s string
---@return string[] result1
function string.toArray(s) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:38
---@param s string
---@param start number
---@param stop? number
---@return string result1
function string.subString(s, start, stop) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:46
---@param s string
---@return string result1
function string.trim(s) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:50
---@param s string
---@return string result1
function string.trimStart(s) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:54
---@param s string
---@return string result1
function string.trimEnd(s) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:58
---@param s string
---@return boolean result1
function string.isEmpty(s) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:62
---@param s string
---@return boolean result1
function string.isNotEmpty(s) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:66
---@param s string
---@param sep? string
---@return string[] result1
function string.split(s, sep) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:78
---@param s string
---@param len number
---@param ch? string
---@return string result1
function string.padLeft(s, len, ch) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:84
---@param s string
---@param len number
---@param ch? string
---@return string result1
function string.padRight(s, len, ch) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:90
---@param s string
---@param old string
---@param new string
---@return string result1
function string.replaceAll(s, old, new) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:94
---@param s string
---@return string result1
function string.capitalize(s) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:98
---@param s string
---@return string[] result1
function string.chars(s) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:106
---@param t table
---@return integer result1
function table.size(t) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:110
---@param t table
---@param value any
---@return boolean result1
function table.contains(t, value) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:117
---@param t table
---@param value any
---@return boolean result1
function table.has(t, value) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:121
---@param t table
---@return any result1
function table.first(t) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:125
---@param t table
---@return any result1
function table.last(t) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:129
---@param t table
---@return boolean result1
function table.isEmpty(t) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:133
---@param t table
---@return boolean result1
function table.isNotEmpty(t) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:137
---@param t table
---@return number result1
function table.sum(t) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:143
---@param t table
---@return number result1
function table.avg(t) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:148
---@param t table
---@return any result1
function table.min(t) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:157
---@param t table
---@return any result1
function table.max(t) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:166
---@param t table
---@return any result1
function table.random(t) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:171
---@param t table
---@param fn fun(value: any, index: integer, items: table): any
---@return nil result1
function table.each(t, fn) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:175
---@param t table
---@param fn fun(value: any, index: integer, items: table): any
---@return boolean result1
function table.all(t, fn) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:182
---@param t table
---@param fn fun(value: any, index: integer, items: table): any
---@return boolean result1
function table.any(t, fn) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:189
---@param t table
---@param fn? fun(value: any, index: integer, items: table): any
---@return integer result1
function table.count(t, fn) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:198
---@param t table
---@param fn fun(value: any, index: integer, items: table): any
---@return table result1
function table.filter(t, fn) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:206
---@param t table
---@param fn fun(value: any, index: integer, items: table): any
---@return table result1
function table.map(t, fn) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:214
---@param t table
---@param fn fun(value: any, index: integer, items: table): any
---@param init? any
---@return any result1
function table.reduce(t, fn, init) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:227
---@param t table
---@param fn fun(value: any, index: integer, items: table): any
---@return any result1
function table.find(t, fn) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:234
---@param t table
---@return table result1
function table.flatten(t) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:261
---@param t table
---@return table result1
function table.uniq(t) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:274
---@param t table
---@return table result1
function table.clone(t) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:280
---@param t table
---@return table result1
function table.deepClone(t) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:303
---@param t table
---@return integer result1
function table.clear(t) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:308
---@param t table
---@param n number
---@return table result1
function table.take(t, n) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:314
---@param t table
---@param n number
---@return table result1
function table.skip(t, n) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:320
---@param t table
---@param index number
---@param value any
---@return integer result1
function table.insertAt(t, index, value) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:325
---@param t table
---@param index number
---@return any result1
function table.removeAt(t, index) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:329
---@param t table
---@param fn fun(value: any, index: integer, items: table): any
---@return integer result1
function table.findIndex(t, fn) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:336
---@param t table
---@param fn fun(value: any, index: integer, items: table): any
---@return any result1
function table.findLast(t, fn) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:343
---@param t table
---@param fn fun(value: any, index: integer, items: table): any
---@return integer result1
function table.findLastIndex(t, fn) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:350
---@param t table
---@param value any
---@param start? number
---@param stop? number
---@return table result1
function table.fill(t, value, start, stop) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:357
---@param t table
---@param fn fun(value: any, index: integer, items: table): any
---@return table result1
function table.groupBy(t, fn) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:367
---@param t table
---@return table result1
function table.keys(t) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:373
---@param t table
---@return table result1
function table.values(t) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:379
---@param t table
---@return table result1
function table.reverse(t) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:385
---@param t table
---@param from? number
---@param to? number
---@return table result1
function table.slice(t, from, to) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:393
---@param t table
---@param sep? any
---@return string result1
function table.join(t, sep) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:400
---@param t table
---@param key any
---@param desc? boolean
---@return table result1
function table.sortBy(t, key, desc) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:409
---@param a any
---@param b any
---@return table result1
function table.zip(a, b) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:418
---@param min number
---@param max number
---@return number result1
function math.randomRange(min, max) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:428
---@param x number
---@return number result1
function math.cbrt(x) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:434
---@param x number
---@return number result1
function math.log1p(x) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:438
---@param x number
---@param y number
---@return number result1
function math.hypot(x, y) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:444
---@param x number
---@param min number
---@param max number
---@return number result1
function math.clamp(x, min, max) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:450
---@param a number
---@param b number
---@param t number
---@return number result1
function math.lerp(a, b, t) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:454
---@param x number
---@param decimals? number
---@return number result1
function math.round(x, decimals) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:460
---@param x number
---@return number result1
function math.sign(x) end

--- Trusted MacroHandler polyfill. String positions are byte indices; table helpers use dense one-based arrays unless their implementation says otherwise.
--- Source: app/src/main/assets/lua/polyfills.lua:466
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@return number result1
function math.distance(x1, y1, x2, y2) end

--- Alias of math.deg/math.rad.
--- Source: app/src/main/assets/lua/polyfills.lua:425
---@param value number
---@return number result1
function math.toDegrees(value) end

--- Alias of math.deg/math.rad.
--- Source: app/src/main/assets/lua/polyfills.lua:425
---@param value number
---@return number result1
function math.toRadians(value) end
