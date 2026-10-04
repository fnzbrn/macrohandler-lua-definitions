---@meta
-- Returned object shapes; these local names do not create runtime globals.

---@class MacroHandler.Point
local _mhPoint = {}

--- Generated Kotlin property getter; exposed only through the binding allowlist.
--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaScriptEngine.kt:912
---@overload fun(): string
---@return string result1
function _mhPoint:getX() end

--- Generated Kotlin property getter; exposed only through the binding allowlist.
--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaScriptEngine.kt:913
---@overload fun(): string
---@return string result1
function _mhPoint:getY() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaScriptEngine.kt:950
---@overload fun(): MacroHandler.Point
---@return MacroHandler.Point result1
function _mhPoint:noScale() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaScriptEngine.kt:938
---@overload fun(dx: any, dy?: any): MacroHandler.Point
---@param dx any Flexible native coercion; retained as any, not guessed.
---@param dy? any Kotlin default: 0. Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Point result1
function _mhPoint:offset(dx, dy) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaScriptEngine.kt:929
---@overload fun(value: any): MacroHandler.Point
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Point result1
function _mhPoint:scale(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaScriptEngine.kt:921
---@overload fun(value: any)
---@param value any Flexible native coercion; retained as any, not guessed.
---@return nil result1
function _mhPoint:setX(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaScriptEngine.kt:925
---@overload fun(value: any)
---@param value any Flexible native coercion; retained as any, not guessed.
---@return nil result1
function _mhPoint:setY(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaScriptEngine.kt:917
---@overload fun(): number
---@return number result1
function _mhPoint:x() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaScriptEngine.kt:919
---@overload fun(): number
---@return number result1
function _mhPoint:y() end

---@class MacroHandler.Region
local _mhRegion = {}

--- Locally taught identity matcher shared by generated and code-editor Lua. / @JvmOverloads fun findMultiVisualIdentity( macroScopeId: String, profileId: String, options: Any? = null, ): LuaTable = host.searchHelper.findMultiVisualIdentity(this, macroScopeId, profileId, options) / Every connected patch of a colour (hex, colour list, colour asset or HSV window) in this Region from one capture: an array of {x, y, w, h, cx, cy, area, fill}, or nil when the scan could not run. Plain data; last-match state is untouched. / @JvmOverloads fun findColorBlobs(color: Any?, options: Any? = null): LuaValue = host.searchHelper.findColorBlobs(this, color, options) / Reference-guided Agent Detect scan/revalidation/verification; returns a typed result table. TODO: Lua payload shape/arity is not narrowed unless separately traced.
--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:623
---@overload fun(macroScopeId: string|nil, referenceSetId: string|nil, options?: any): table
---@param macroScopeId string|nil
---@param referenceSetId string|nil
---@param options? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return table result1
function _mhRegion:agentDetect(macroScopeId, referenceSetId, options) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:356
---@overload fun(value: any): MacroHandler.Region
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Region result1
function _mhRegion:bottom(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:420
---@overload fun(value: any): MacroHandler.Region
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Region result1
function _mhRegion:bottomPixel(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:773
---@overload fun(imageName?: any): boolean
---@param imageName? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function _mhRegion:capture(imageName) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:651
---@overload fun(templateOrBuilder: any, fparam?: any, cparam?: any): boolean
---@param templateOrBuilder any Flexible native coercion; retained as any, not guessed.
---@param fparam? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@param cparam? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function _mhRegion:click(templateOrBuilder, fparam, cparam) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:672
---@overload fun(templateOrBuilder: any, fparam?: any, cparam?: any): integer
---@param templateOrBuilder any Flexible native coercion; retained as any, not guessed.
---@param fparam? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@param cparam? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return integer result1
function _mhRegion:clickAll(templateOrBuilder, fparam, cparam) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:721
---@overload fun(textOrTemplate: any, tparam?: any, cparam?: any): integer
---@param textOrTemplate any Flexible native coercion; retained as any, not guessed.
---@param tparam? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@param cparam? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return integer result1
function _mhRegion:clickAllText(textOrTemplate, tparam, cparam) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:679
---@overload fun(templates: any, fparam?: any, cparam?: any): boolean
---@param templates any Flexible native coercion; retained as any, not guessed.
---@param fparam? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@param cparam? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function _mhRegion:clickAny(templates, fparam, cparam) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:728
---@overload fun(texts: any, tparam?: any, cparam?: any): boolean
---@param texts any Flexible native coercion; retained as any, not guessed.
---@param tparam? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@param cparam? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function _mhRegion:clickAnyText(texts, tparam, cparam) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:662
---@overload fun(templateOrBuilder: any, fparam?: any, cparam?: any): integer
---@param templateOrBuilder any Flexible native coercion; retained as any, not guessed.
---@param fparam? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@param cparam? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return integer result1
function _mhRegion:clickMulti(templateOrBuilder, fparam, cparam) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:711
---@overload fun(textOrTemplate: any, tparam?: any, cparam?: any): integer
---@param textOrTemplate any Flexible native coercion; retained as any, not guessed.
---@param tparam? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@param cparam? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return integer result1
function _mhRegion:clickMultiText(textOrTemplate, tparam, cparam) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:701
---@overload fun(textOrTemplate: any, tparam?: any, cparam?: any): boolean
---@param textOrTemplate any Flexible native coercion; retained as any, not guessed.
---@param tparam? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@param cparam? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function _mhRegion:clickText(textOrTemplate, tparam, cparam) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:196
---@overload fun(left?: any, top?: any, right?: any, bottom?: any): MacroHandler.Region
---@param left? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@param top? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@param right? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@param bottom? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Region result1
function _mhRegion:deviceReg(left, top, right, bottom) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:757
---@overload fun(templateOrBuilder: any, param?: MacroHandler.FindParam|MacroHandler.SearchOptions|number|nil): boolean
---@param templateOrBuilder any Flexible native coercion; retained as any, not guessed.
---@param param? MacroHandler.FindParam|MacroHandler.SearchOptions|number|nil Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function _mhRegion:exists(templateOrBuilder, param) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:765
---@overload fun(templates: any, param?: MacroHandler.FindParam|MacroHandler.SearchOptions|number|nil): boolean
---@param templates any Flexible native coercion; retained as any, not guessed.
---@param param? MacroHandler.FindParam|MacroHandler.SearchOptions|number|nil Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function _mhRegion:existsAny(templates, param) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:769
---@overload fun(texts: any, param?: MacroHandler.FindParam|MacroHandler.SearchOptions|number|nil): boolean
---@param texts any Flexible native coercion; retained as any, not guessed.
---@param param? MacroHandler.FindParam|MacroHandler.SearchOptions|number|nil Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function _mhRegion:existsAnyText(texts, param) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:761
---@overload fun(textOrTemplate: any, param?: MacroHandler.FindParam|MacroHandler.SearchOptions|number|nil): boolean
---@param textOrTemplate any Flexible native coercion; retained as any, not guessed.
---@param param? MacroHandler.FindParam|MacroHandler.SearchOptions|number|nil Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function _mhRegion:existsText(textOrTemplate, param) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:583
---@overload fun(templateOrBuilder: any, param?: MacroHandler.FindParam|MacroHandler.SearchOptions|number|nil): MacroHandler.Result|nil
---@param templateOrBuilder any Flexible native coercion; retained as any, not guessed.
---@param param? MacroHandler.FindParam|MacroHandler.SearchOptions|number|nil Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Result|nil result1
function _mhRegion:find(templateOrBuilder, param) end

--- Waits for all requested targets to be present; returns wrapped match objects in a 1-based array, or an empty array. Parameters use the native coercion rules.
--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:627
---@overload fun(templates: any, param?: MacroHandler.FindParam|MacroHandler.SearchOptions|number|nil): MacroHandler.Result[]
---@param templates any Flexible native coercion; retained as any, not guessed.
---@param param? MacroHandler.FindParam|MacroHandler.SearchOptions|number|nil Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Result[] result1
function _mhRegion:findAll(templates, param) end

--- Waits for all requested targets to be present; returns wrapped match objects in a 1-based array, or an empty array. Parameters use the native coercion rules.
--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:643
---@overload fun(texts: any, param?: MacroHandler.FindParam|MacroHandler.SearchOptions|number|nil): MacroHandler.Result[]
---@param texts any Flexible native coercion; retained as any, not guessed.
---@param param? MacroHandler.FindParam|MacroHandler.SearchOptions|number|nil Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Result[] result1
function _mhRegion:findAllText(texts, param) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:631
---@overload fun(templates: any, param?: MacroHandler.FindParam|MacroHandler.SearchOptions|number|nil): MacroHandler.Result|nil
---@param templates any Flexible native coercion; retained as any, not guessed.
---@param param? MacroHandler.FindParam|MacroHandler.SearchOptions|number|nil Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Result|nil result1
function _mhRegion:findAny(templates, param) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:647
---@overload fun(texts: any, param?: MacroHandler.FindParam|MacroHandler.SearchOptions|number|nil): MacroHandler.Result|nil
---@param texts any Flexible native coercion; retained as any, not guessed.
---@param param? MacroHandler.FindParam|MacroHandler.SearchOptions|number|nil Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Result|nil result1
function _mhRegion:findAnyText(texts, param) end

--- Opens one capture frame shared by the complete Visual Target ensemble pass. / fun beginVisualTargetFrame(): Boolean = host.searchHelper.beginVisualTargetFrame(this) / Releases the capture frame pinned by [beginVisualTargetFrame]. / fun endVisualTargetFrame(): Boolean = host.searchHelper.endVisualTargetFrame(this) / Locally taught identity matcher shared by generated and code-editor Lua. / @JvmOverloads fun findMultiVisualIdentity( macroScopeId: String, profileId: String, options: Any? = null, ): LuaTable = host.searchHelper.findMultiVisualIdentity(this, macroScopeId, profileId, options) / Every connected patch of a colour (hex, colour list, colour asset or HSV window) in this Region from one capture: an array of {x, y, w, h, cx, cy, area, fill}, or nil when the scan could not run. Plain data; last-match state is untouched. TODO: Lua payload shape/arity is not narrowed unless separately traced.
--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:618
---@overload fun(color: any, options?: any): any
---@param color any Flexible native coercion; retained as any, not guessed.
---@param options? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return any result1
function _mhRegion:findColorBlobs(color, options) end

--- TODO: Lua payload shape/arity is not narrowed unless separately traced.
--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:595
---@overload fun(templateOrBuilder: any, param?: MacroHandler.FindParam|MacroHandler.SearchOptions|number|nil): MacroHandler.Result[]
---@param templateOrBuilder any Flexible native coercion; retained as any, not guessed.
---@param param? MacroHandler.FindParam|MacroHandler.SearchOptions|number|nil Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Result[] result1
function _mhRegion:findMulti(templateOrBuilder, param) end

--- TODO: Lua payload shape/arity is not narrowed unless separately traced.
--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:639
---@overload fun(textOrTemplate: any, param?: MacroHandler.FindParam|MacroHandler.SearchOptions|number|nil): MacroHandler.Result[]
---@param textOrTemplate any Flexible native coercion; retained as any, not guessed.
---@param param? MacroHandler.FindParam|MacroHandler.SearchOptions|number|nil Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Result[] result1
function _mhRegion:findMultiText(textOrTemplate, param) end

--- Opens one capture frame shared by the complete Visual Target ensemble pass. / fun beginVisualTargetFrame(): Boolean = host.searchHelper.beginVisualTargetFrame(this) / Releases the capture frame pinned by [beginVisualTargetFrame]. / fun endVisualTargetFrame(): Boolean = host.searchHelper.endVisualTargetFrame(this) / Locally taught identity matcher shared by generated and code-editor Lua. TODO: Lua payload shape/arity is not narrowed unless separately traced.
--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:606
---@overload fun(macroScopeId: string, profileId: string, options?: any): table
---@param macroScopeId string
---@param profileId string
---@param options? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return table result1
function _mhRegion:findMultiVisualIdentity(macroScopeId, profileId, options) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:635
---@overload fun(textOrTemplate: any, param?: MacroHandler.FindParam|MacroHandler.SearchOptions|number|nil): MacroHandler.Result|nil
---@param textOrTemplate any Flexible native coercion; retained as any, not guessed.
---@param param? MacroHandler.FindParam|MacroHandler.SearchOptions|number|nil Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Result|nil result1
function _mhRegion:findText(textOrTemplate, param) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:314
---@overload fun(): number
---@return number result1
function _mhRegion:getH() end

--- Generated Kotlin property getter; exposed only through the binding allowlist.
--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:110
---@overload fun(): MacroHandler.Result|nil
---@return MacroHandler.Result|nil result1
function _mhRegion:getLastMatch() end

--- Generated Kotlin property getter; exposed only through the binding allowlist. TODO: Lua payload shape/arity is not narrowed unless separately traced.
--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:113
---@overload fun(): table
---@return table result1
function _mhRegion:getLastMatches() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:336
---@overload fun(): MacroHandler.Point
---@return MacroHandler.Point result1
function _mhRegion:getMiddlePoint() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:306
---@overload fun(): string
---@return string result1
function _mhRegion:getShape() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:312
---@overload fun(): number
---@return number result1
function _mhRegion:getW() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:308
---@overload fun(): number
---@return number result1
function _mhRegion:getX() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:310
---@overload fun(): number
---@return number result1
function _mhRegion:getY() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:749
---@overload fun()
---@return nil result1
function _mhRegion:highlight() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:284
---@overload fun()
---@return nil result1
function _mhRegion:highlightOff() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:363
---@overload fun(value: any): MacroHandler.Region
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Region result1
function _mhRegion:horizontal(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:425
---@overload fun(value: any): MacroHandler.Region
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Region result1
function _mhRegion:horizontalPixel(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:340
---@overload fun(value: any): MacroHandler.Region
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Region result1
function _mhRegion:left(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:405
---@overload fun(value: any): MacroHandler.Region
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Region result1
function _mhRegion:leftPixel(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:219
---@overload fun(left?: any, top?: any, right?: any, bottom?: any): MacroHandler.Region
---@param left? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@param top? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@param right? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@param bottom? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Region result1
function _mhRegion:macroReg(left, top, right, bottom) end

--- Measure a target in this region: box, coverage, patch count and the largest target-free rectangle, read back through the returned match's getMetrics(). Nil when the target is absent or the target type cannot be measured.
--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:591
---@overload fun(templateOrBuilder: any, param: MacroHandler.FindParam|MacroHandler.SearchOptions|number|nil): MacroHandler.Result|nil
---@param templateOrBuilder any Flexible native coercion; retained as any, not guessed.
---@param param MacroHandler.FindParam|MacroHandler.SearchOptions|number|nil Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Result|nil result1
function _mhRegion:measure(templateOrBuilder, param) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:373
---@overload fun(value: any): MacroHandler.Region
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Region result1
function _mhRegion:middle(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:429
---@overload fun(value: any): MacroHandler.Region
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Region result1
function _mhRegion:middlePixel(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:451
---@overload fun(value: any): MacroHandler.Region
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Region result1
function _mhRegion:moveDown(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:460
---@overload fun(value: any): MacroHandler.Region
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Region result1
function _mhRegion:moveDownPixel(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:442
---@overload fun(value: any): MacroHandler.Region
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Region result1
function _mhRegion:moveLeft(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:454
---@overload fun(value: any): MacroHandler.Region
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Region result1
function _mhRegion:moveLeftPixel(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:448
---@overload fun(value: any): MacroHandler.Region
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Region result1
function _mhRegion:moveRight(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:458
---@overload fun(value: any): MacroHandler.Region
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Region result1
function _mhRegion:moveRightPixel(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:445
---@overload fun(value: any): MacroHandler.Region
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Region result1
function _mhRegion:moveUp(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:456
---@overload fun(value: any): MacroHandler.Region
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Region result1
function _mhRegion:moveUpPixel(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:288
---@overload fun(): MacroHandler.Region
---@return MacroHandler.Region result1
function _mhRegion:noScale() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:434
---@overload fun(dx: any, dy: any): MacroHandler.Region
---@param dx any Flexible native coercion; retained as any, not guessed.
---@param dy any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Region result1
function _mhRegion:offset(dx, dy) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:383
---@overload fun(self: MacroHandler.Region, left: any, top: any, right: any, bottom: any): MacroHandler.Region
---@overload fun(value: any): MacroHandler.Region
---@overload fun(left: any, top: any, right: any, bottom: any): MacroHandler.Region
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Region result1
function _mhRegion:pad(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:431
---@overload fun(value: any): MacroHandler.Region
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Region result1
function _mhRegion:padPixel(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/RegionTextReadHelper.kt:1
---@overload fun(param?: any): MacroHandler.TextResult[]
---@param param? any
---@return MacroHandler.TextResult[] result1
function _mhRegion:read(param) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:804
---@overload fun(param?: any, defaultValue?: any): number
---@param param? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@param defaultValue? any Kotlin default: 0.0. Flexible native coercion; retained as any, not guessed.
---@return number result1
function _mhRegion:readAsNumber(param, defaultValue) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:800
---@overload fun(param?: any, defaultValue?: any): string
---@param param? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@param defaultValue? any Kotlin default: "". Flexible native coercion; retained as any, not guessed.
---@return string result1
function _mhRegion:readAsString(param, defaultValue) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:794
---@deprecated Use the canonical alias documented in docs/lua_api_alias_policy.md.
---@overload fun(param?: any): string
---@param param? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return string result1
function _mhRegion:readPlain(param) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:797
---@overload fun(param?: any): string
---@param param? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return string result1
function _mhRegion:readText(param) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:350
---@overload fun(value: any): MacroHandler.Region
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Region result1
function _mhRegion:right(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:415
---@overload fun(value: any): MacroHandler.Region
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Region result1
function _mhRegion:rightPixel(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:279
---@overload fun(value?: any): MacroHandler.Region
---@param value? any Kotlin default: 1.0. Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Region result1
function _mhRegion:scale(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:331
---@overload fun(value: any)
---@param value any Flexible native coercion; retained as any, not guessed.
---@return nil result1
function _mhRegion:setH(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:326
---@overload fun(value: any)
---@param value any Flexible native coercion; retained as any, not guessed.
---@return nil result1
function _mhRegion:setW(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:316
---@overload fun(value: any)
---@param value any Flexible native coercion; retained as any, not guessed.
---@return nil result1
function _mhRegion:setX(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:321
---@overload fun(value: any)
---@param value any Flexible native coercion; retained as any, not guessed.
---@return nil result1
function _mhRegion:setY(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:292
---@overload fun(value: any): MacroHandler.Region
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Region result1
function _mhRegion:shape(value) end

--- Returns a new [CompatRegion] positioned relative to a screen edge/anchor. When a macro was created on one screen resolution and runs on another, normal proportional scaling anchors everything to the top-left corner. `sticky()` re-anchors the region so its distance from the specified edge(s) is scaled instead. @param anchor one of: "top_left", "top_right", "bottom_left", "bottom_right", "top_center", "bottom_center", "center_left", "center_right", "center" @return a new CompatRegion with recalculated position; size is kept as-is.
--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:476
---@overload fun(anchor: any): MacroHandler.Region
---@param anchor any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Region result1
function _mhRegion:sticky(anchor) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:345
---@overload fun(value: any): MacroHandler.Region
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Region result1
function _mhRegion:top(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:410
---@overload fun(value: any): MacroHandler.Region
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Region result1
function _mhRegion:topPixel(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:368
---@overload fun(value: any): MacroHandler.Region
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Region result1
function _mhRegion:vertical(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:427
---@overload fun(value: any): MacroHandler.Region
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Region result1
function _mhRegion:verticalPixel(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:689
---@overload fun(templateOrBuilder: any, fparam?: MacroHandler.FindParam|MacroHandler.SearchOptions|number|nil): boolean
---@param templateOrBuilder any Flexible native coercion; retained as any, not guessed.
---@param fparam? MacroHandler.FindParam|MacroHandler.SearchOptions|number|nil Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function _mhRegion:wait(templateOrBuilder, fparam) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:695
---@overload fun(templateOrBuilder: any, fparam?: MacroHandler.FindParam|MacroHandler.SearchOptions|number|nil): boolean
---@param templateOrBuilder any Flexible native coercion; retained as any, not guessed.
---@param fparam? MacroHandler.FindParam|MacroHandler.SearchOptions|number|nil Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function _mhRegion:waitAll(templateOrBuilder, fparam) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:744
---@overload fun(textOrTemplate: any, tparam?: MacroHandler.FindParam|MacroHandler.SearchOptions|number|nil): boolean
---@param textOrTemplate any Flexible native coercion; retained as any, not guessed.
---@param tparam? MacroHandler.FindParam|MacroHandler.SearchOptions|number|nil Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function _mhRegion:waitAllText(textOrTemplate, tparam) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:738
---@overload fun(textOrTemplate: any, tparam?: MacroHandler.FindParam|MacroHandler.SearchOptions|number|nil): boolean
---@param textOrTemplate any Flexible native coercion; retained as any, not guessed.
---@param tparam? MacroHandler.FindParam|MacroHandler.SearchOptions|number|nil Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function _mhRegion:waitText(textOrTemplate, tparam) end

---@class MacroHandler.Color
local _mhColor = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatColor.kt:188
---@overload fun(): integer
---@return integer result1
function _mhColor:alpha() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatColor.kt:186
---@overload fun(): integer
---@return integer result1
function _mhColor:blue() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatColor.kt:35
---@overload fun(other: MacroHandler.Color): number
---@param other MacroHandler.Color
---@return number result1
function _mhColor:compare(other) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatColor.kt:26
---@overload fun(other: MacroHandler.Color): number
---@param other MacroHandler.Color
---@return number result1
function _mhColor:compareRGB(other) end

--- Conventional CSS-style hex form. Emits `#RRGGBB` for opaque colours and `#AARRGGBB` whenever the alpha channel is not 255 — the round-trip with [Companion.from] stays byte-identical for both forms. / fun toHex(): String = if (a == 255) "#%02X%02X%02X".format(r, g, b) else "#%02X%02X%02X%02X".format(a, r, g, b) / WCAG 2.x relative luminance (0.0 = black, 1.0 = white). Used by [contrast] and exposed directly so macros can branch on raw luminance (e.g. dark-mode detection: `bg:luminance() < 0.5`). / fun luminance(): Double { val lr = gammaExpand(r / 255.0) val lg = gammaExpand(g / 255.0) val lb = gammaExpand(b / 255.0) return 0.2126 lr + 0.7152 lg + 0.0722 lb } / WCAG 2.x contrast ratio with [other]. Range is `[1.0, 21.0]`. Reference thresholds: 3.0 = large-text AA, 4.5 = normal-text AA, 7.0 = AAA.
--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatColor.kt:305
---@overload fun(other: MacroHandler.Color): number
---@param other MacroHandler.Color
---@return number result1
function _mhColor:contrast(other) end

--- Lightens this colour by [amount] (0.0 = no change, 1.0 = white). / fun lighten(amount: Any?): CompatColor { val t = numericTolerance(amount, 0.0, max = 1.0) return mixWithComponents(255, 255, 255, t) } / Darkens this colour by [amount] (0.0 = no change, 1.0 = black).
--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatColor.kt:254
---@overload fun(amount: any): MacroHandler.Color
---@param amount any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Color result1
function _mhColor:darken(amount) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatColor.kt:38
---@overload fun(other: MacroHandler.Color, method?: any): number
---@param other MacroHandler.Color
---@param method? any Kotlin default: 0. Flexible native coercion; retained as any, not guessed.
---@return number result1
function _mhColor:deltaE(other, method) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatColor.kt:184
---@overload fun(): integer
---@return integer result1
function _mhColor:green() end

--- Darkens this colour by [amount] (0.0 = no change, 1.0 = black). / fun darken(amount: Any?): CompatColor { val t = numericTolerance(amount, 0.0, max = 1.0) return mixWithComponents(0, 0, 0, t) } / Linear RGB interpolation between this colour and [other]. `ratio = 0` returns `this`, `ratio = 1` returns `other`, anything in between produces a proportional blend. Alpha is mixed on the same axis. / fun mix(other: CompatColor, ratio: Any?): CompatColor { val t = numericTolerance(ratio, 0.5, max = 1.0) val blended = mixWithComponents(other.r, other.g, other.b, t) val newA = (a + (other.a - a) t).toInt().coerceIn(0, 255) return blended.copy(a = newA) } / RGB channel inversion (`255 - channel`). Alpha is preserved.
--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatColor.kt:272
---@overload fun(): MacroHandler.Color
---@return MacroHandler.Color result1
function _mhColor:invert() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatColor.kt:174
---@overload fun(other: MacroHandler.Color, method?: any): boolean
---@param other MacroHandler.Color
---@param method? any Kotlin default: 0. Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function _mhColor:isExact(other, method) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatColor.kt:162
---@overload fun(other: MacroHandler.Color, threshold?: any, method?: any): boolean
---@param other MacroHandler.Color
---@param threshold? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@param method? any Kotlin default: 0. Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function _mhColor:isSame(other, threshold, method) end

--- Lightens this colour by [amount] (0.0 = no change, 1.0 = white).
--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatColor.kt:248
---@overload fun(amount: any): MacroHandler.Color
---@param amount any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Color result1
function _mhColor:lighten(amount) end

--- Returns a fresh colour with the alpha channel replaced (0–255). / fun withAlpha(value: Any?): CompatColor { val newA = numericTolerance(value, a.toDouble(), max = 255.0).toInt().coerceIn(0, 255) return CompatColor(newA, r, g, b) } / Conventional CSS-style hex form. Emits `#RRGGBB` for opaque colours and `#AARRGGBB` whenever the alpha channel is not 255 — the round-trip with [Companion.from] stays byte-identical for both forms. / fun toHex(): String = if (a == 255) "#%02X%02X%02X".format(r, g, b) else "#%02X%02X%02X%02X".format(a, r, g, b) / WCAG 2.x relative luminance (0.0 = black, 1.0 = white). Used by [contrast] and exposed directly so macros can branch on raw luminance (e.g. dark-mode detection: `bg:luminance() < 0.5`).
--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatColor.kt:294
---@overload fun(): number
---@return number result1
function _mhColor:luminance() end

--- Lightens this colour by [amount] (0.0 = no change, 1.0 = white). / fun lighten(amount: Any?): CompatColor { val t = numericTolerance(amount, 0.0, max = 1.0) return mixWithComponents(255, 255, 255, t) } / Darkens this colour by [amount] (0.0 = no change, 1.0 = black). / fun darken(amount: Any?): CompatColor { val t = numericTolerance(amount, 0.0, max = 1.0) return mixWithComponents(0, 0, 0, t) } / Linear RGB interpolation between this colour and [other]. `ratio = 0` returns `this`, `ratio = 1` returns `other`, anything in between produces a proportional blend. Alpha is mixed on the same axis.
--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatColor.kt:264
---@overload fun(other: MacroHandler.Color, ratio: any): MacroHandler.Color
---@param other MacroHandler.Color
---@param ratio any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Color result1
function _mhColor:mix(other, ratio) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatColor.kt:182
---@overload fun(): integer
---@return integer result1
function _mhColor:red() end

--- RGB channel inversion (`255 - channel`). Alpha is preserved. / fun invert(): CompatColor = CompatColor(a, 255 - r, 255 - g, 255 - b) / Returns a fresh colour with the alpha channel replaced (0–255). / fun withAlpha(value: Any?): CompatColor { val newA = numericTolerance(value, a.toDouble(), max = 255.0).toInt().coerceIn(0, 255) return CompatColor(newA, r, g, b) } / Conventional CSS-style hex form. Emits `#RRGGBB` for opaque colours and `#AARRGGBB` whenever the alpha channel is not 255 — the round-trip with [Companion.from] stays byte-identical for both forms.
--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatColor.kt:285
---@overload fun(): string
---@return string result1
function _mhColor:toHex() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatColor.kt:209
---@overload fun(): string
---@return string result1
function _mhColor:toLab() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatColor.kt:178
---@overload fun(): integer
---@return integer result1
function _mhColor:value() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatColor.kt:180
---@overload fun(): string
---@return string result1
function _mhColor:valueString() end

--- Darkens this colour by [amount] (0.0 = no change, 1.0 = black). / fun darken(amount: Any?): CompatColor { val t = numericTolerance(amount, 0.0, max = 1.0) return mixWithComponents(0, 0, 0, t) } / Linear RGB interpolation between this colour and [other]. `ratio = 0` returns `this`, `ratio = 1` returns `other`, anything in between produces a proportional blend. Alpha is mixed on the same axis. / fun mix(other: CompatColor, ratio: Any?): CompatColor { val t = numericTolerance(ratio, 0.5, max = 1.0) val blended = mixWithComponents(other.r, other.g, other.b, t) val newA = (a + (other.a - a) t).toInt().coerceIn(0, 255) return blended.copy(a = newA) } / RGB channel inversion (`255 - channel`). Alpha is preserved. / fun invert(): CompatColor = CompatColor(a, 255 - r, 255 - g, 255 - b) / Returns a fresh colour with the alpha channel replaced (0–255).
--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatColor.kt:275
---@overload fun(value: any): MacroHandler.Color
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Color result1
function _mhColor:withAlpha(value) end

---@class MacroHandler.DateTime
local _mhDateTime = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:67
---@overload fun(span: any): MacroHandler.DateTime
---@param span any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.DateTime result1
function _mhDateTime:add(span) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:70
---@overload fun(value: any): MacroHandler.DateTime
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.DateTime result1
function _mhDateTime:addDays(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:71
---@overload fun(value: any): MacroHandler.DateTime
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.DateTime result1
function _mhDateTime:addHours(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:74
---@overload fun(value: any): MacroHandler.DateTime
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.DateTime result1
function _mhDateTime:addMillis(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:72
---@overload fun(value: any): MacroHandler.DateTime
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.DateTime result1
function _mhDateTime:addMinutes(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:69
---@overload fun(value: any): MacroHandler.DateTime
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.DateTime result1
function _mhDateTime:addMonths(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:73
---@overload fun(value: any): MacroHandler.DateTime
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.DateTime result1
function _mhDateTime:addSeconds(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:68
---@overload fun(value: any): MacroHandler.DateTime
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.DateTime result1
function _mhDateTime:addYears(value) end

--- Inclusive range membership: `start <= this <= end`. Order of [start] and [end] does not matter — they are normalised internally so a typo does not silently return `false` when the moment is genuinely inside the intended window. / fun isBetween(start: Any?, end: Any?): Boolean { val a = start.toDoubleCompat(0.0).toLong() val b = end.toDoubleCompat(0.0).toLong() val lo = if (a <= b) a else b val hi = if (a <= b) b else a return millis in lo..hi } / True when both refer to the same instant (millis equality). / fun equalsTo(other: Any?): Boolean = millis == other.toDoubleCompat(0.0).toLong() / Returns a fresh CompatDateTime with the same instant. Useful when a macro wants to keep a snapshot of "now" while continuing to mutate a separate working DateTime via the add-family helpers or sub.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:118
---@overload fun(): MacroHandler.DateTime
---@return MacroHandler.DateTime result1
function _mhDateTime:clone() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:58
---@overload fun(): integer
---@return integer result1
function _mhDateTime:date() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:57
---@overload fun(): integer
---@return integer result1
function _mhDateTime:day() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:59
---@overload fun(): integer
---@return integer result1
function _mhDateTime:dayOfWeek() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:60
---@overload fun(): integer
---@return integer result1
function _mhDateTime:dayOfYear() end

--- True when this timestamp is strictly later than [other]. / fun isAfter(other: Any?): Boolean = millis > other.toDoubleCompat(0.0).toLong() / True when this timestamp is strictly earlier than [other]. / fun isBefore(other: Any?): Boolean = millis < other.toDoubleCompat(0.0).toLong() / Inclusive range membership: `start <= this <= end`. Order of [start] and [end] does not matter — they are normalised internally so a typo does not silently return `false` when the moment is genuinely inside the intended window. / fun isBetween(start: Any?, end: Any?): Boolean { val a = start.toDoubleCompat(0.0).toLong() val b = end.toDoubleCompat(0.0).toLong() val lo = if (a <= b) a else b val hi = if (a <= b) b else a return millis in lo..hi } / True when both refer to the same instant (millis equality).
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:111
---@overload fun(other: any): boolean
---@param other any Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function _mhDateTime:equalsTo(other) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:120
---@overload fun(pattern: any): string
---@param pattern any Flexible native coercion; retained as any, not guessed.
---@return string result1
function _mhDateTime:format(pattern) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:61
---@overload fun(): integer
---@return integer result1
function _mhDateTime:hour() end

--- Alias for [sub] — the semantic spelling preferred by ported scripts. / fun subtract(other: Any?): CompatTimeSpan = sub(other) / True when this timestamp is strictly later than [other].
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:91
---@overload fun(other: any): boolean
---@param other any Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function _mhDateTime:isAfter(other) end

--- Alias for [sub] — the semantic spelling preferred by ported scripts. / fun subtract(other: Any?): CompatTimeSpan = sub(other) / True when this timestamp is strictly later than [other]. / fun isAfter(other: Any?): Boolean = millis > other.toDoubleCompat(0.0).toLong() / True when this timestamp is strictly earlier than [other].
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:94
---@overload fun(other: any): boolean
---@param other any Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function _mhDateTime:isBefore(other) end

--- Alias for [sub] — the semantic spelling preferred by ported scripts. / fun subtract(other: Any?): CompatTimeSpan = sub(other) / True when this timestamp is strictly later than [other]. / fun isAfter(other: Any?): Boolean = millis > other.toDoubleCompat(0.0).toLong() / True when this timestamp is strictly earlier than [other]. / fun isBefore(other: Any?): Boolean = millis < other.toDoubleCompat(0.0).toLong() / Inclusive range membership: `start <= this <= end`. Order of [start] and [end] does not matter — they are normalised internally so a typo does not silently return `false` when the moment is genuinely inside the intended window.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:102
---@overload fun(start: any, end_: any): boolean
---@param start any Flexible native coercion; retained as any, not guessed.
---@param end_ any Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function _mhDateTime:isBetween(start, end_) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:64
---@overload fun(): integer
---@return integer result1
function _mhDateTime:millis() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:62
---@overload fun(): integer
---@return integer result1
function _mhDateTime:minute() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:56
---@overload fun(): integer
---@return integer result1
function _mhDateTime:month() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:63
---@overload fun(): integer
---@return integer result1
function _mhDateTime:second() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:76
---@overload fun(other: any): MacroHandler.TimeSpan
---@param other any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.TimeSpan result1
function _mhDateTime:sub(other) end

--- Alias for [sub] — the semantic spelling preferred by ported scripts.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:88
---@overload fun(other: any): MacroHandler.TimeSpan
---@param other any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.TimeSpan result1
function _mhDateTime:subtract(other) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:65
---@overload fun(): number
---@return number result1
function _mhDateTime:totalMillis() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:55
---@overload fun(): integer
---@return integer result1
function _mhDateTime:year() end

---@class MacroHandler.TimeSpan
local _mhTimeSpan = {}

--- Alias for [sub] — the semantic spelling preferred by ported scripts. / fun subtract(value: Any?): CompatTimeSpan = sub(value) / True when this duration is strictly longer than [other]. / fun isLongerThan(other: Any?): Boolean = millis > other.toDoubleCompat(0.0).toLong() / True when this duration is strictly shorter than [other]. / fun isShorterThan(other: Any?): Boolean = millis < other.toDoubleCompat(0.0).toLong() / True when both refer to the same duration (millis equality). / fun equalsTo(other: Any?): Boolean = millis == other.toDoubleCompat(0.0).toLong() / Returns a fresh TimeSpan with the magnitude of this one, sign stripped. Useful when a macro computes a positive delay from a difference that might be negative (e.g. `start:sub(end):abs()`).
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:183
---@overload fun(): MacroHandler.TimeSpan
---@return MacroHandler.TimeSpan result1
function _mhTimeSpan:abs() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:150
---@overload fun(value: any): MacroHandler.TimeSpan
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.TimeSpan result1
function _mhTimeSpan:add(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:151
---@overload fun(value: any): MacroHandler.TimeSpan
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.TimeSpan result1
function _mhTimeSpan:addDays(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:152
---@overload fun(value: any): MacroHandler.TimeSpan
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.TimeSpan result1
function _mhTimeSpan:addHours(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:155
---@overload fun(value: any): MacroHandler.TimeSpan
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.TimeSpan result1
function _mhTimeSpan:addMillis(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:153
---@overload fun(value: any): MacroHandler.TimeSpan
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.TimeSpan result1
function _mhTimeSpan:addMinutes(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:154
---@overload fun(value: any): MacroHandler.TimeSpan
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.TimeSpan result1
function _mhTimeSpan:addSeconds(value) end

--- True when both refer to the same duration (millis equality). / fun equalsTo(other: Any?): Boolean = millis == other.toDoubleCompat(0.0).toLong() / Returns a fresh TimeSpan with the magnitude of this one, sign stripped. Useful when a macro computes a positive delay from a difference that might be negative (e.g. `start:sub(end):abs()`). / fun abs(): CompatTimeSpan = CompatTimeSpan(kotlin.math.abs(millis)) / Returns a fresh TimeSpan with the sign flipped. `negate()` of a positive span produces a negative one and vice-versa; `negate()` of zero stays zero. / fun negate(): CompatTimeSpan = CompatTimeSpan(-millis) / Returns a fresh TimeSpan with the same magnitude. Useful when a macro wants to keep a snapshot while continuing to combine durations via add/sub/mul on a separate working span.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:197
---@overload fun(): MacroHandler.TimeSpan
---@return MacroHandler.TimeSpan result1
function _mhTimeSpan:clone() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:137
---@overload fun(): integer
---@return integer result1
function _mhTimeSpan:days() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:199
---@overload fun(value: any): MacroHandler.TimeSpan
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.TimeSpan result1
function _mhTimeSpan:div(value) end

--- Alias for [sub] — the semantic spelling preferred by ported scripts. / fun subtract(value: Any?): CompatTimeSpan = sub(value) / True when this duration is strictly longer than [other]. / fun isLongerThan(other: Any?): Boolean = millis > other.toDoubleCompat(0.0).toLong() / True when this duration is strictly shorter than [other]. / fun isShorterThan(other: Any?): Boolean = millis < other.toDoubleCompat(0.0).toLong() / True when both refer to the same duration (millis equality).
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:176
---@overload fun(other: any): boolean
---@param other any Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function _mhTimeSpan:equalsTo(other) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:206
---@overload fun(pattern?: any): string
---@param pattern? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return string result1
function _mhTimeSpan:format(pattern) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:138
---@overload fun(): integer
---@return integer result1
function _mhTimeSpan:hours() end

--- Alias for [sub] — the semantic spelling preferred by ported scripts. / fun subtract(value: Any?): CompatTimeSpan = sub(value) / True when this duration is strictly longer than [other].
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:170
---@overload fun(other: any): boolean
---@param other any Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function _mhTimeSpan:isLongerThan(other) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:147
---@overload fun(): boolean
---@return boolean result1
function _mhTimeSpan:isNegative() end

--- Alias for [sub] — the semantic spelling preferred by ported scripts. / fun subtract(value: Any?): CompatTimeSpan = sub(value) / True when this duration is strictly longer than [other]. / fun isLongerThan(other: Any?): Boolean = millis > other.toDoubleCompat(0.0).toLong() / True when this duration is strictly shorter than [other].
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:173
---@overload fun(other: any): boolean
---@param other any Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function _mhTimeSpan:isShorterThan(other) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:148
---@overload fun(): boolean
---@return boolean result1
function _mhTimeSpan:isZero() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:141
---@overload fun(): integer
---@return integer result1
function _mhTimeSpan:millis() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:139
---@overload fun(): integer
---@return integer result1
function _mhTimeSpan:minutes() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:157
---@overload fun(value: any): MacroHandler.TimeSpan
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.TimeSpan result1
function _mhTimeSpan:mul(value) end

--- True when this duration is strictly longer than [other]. / fun isLongerThan(other: Any?): Boolean = millis > other.toDoubleCompat(0.0).toLong() / True when this duration is strictly shorter than [other]. / fun isShorterThan(other: Any?): Boolean = millis < other.toDoubleCompat(0.0).toLong() / True when both refer to the same duration (millis equality). / fun equalsTo(other: Any?): Boolean = millis == other.toDoubleCompat(0.0).toLong() / Returns a fresh TimeSpan with the magnitude of this one, sign stripped. Useful when a macro computes a positive delay from a difference that might be negative (e.g. `start:sub(end):abs()`). / fun abs(): CompatTimeSpan = CompatTimeSpan(kotlin.math.abs(millis)) / Returns a fresh TimeSpan with the sign flipped. `negate()` of a positive span produces a negative one and vice-versa; `negate()` of zero stays zero.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:190
---@overload fun(): MacroHandler.TimeSpan
---@return MacroHandler.TimeSpan result1
function _mhTimeSpan:negate() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:140
---@overload fun(): integer
---@return integer result1
function _mhTimeSpan:seconds() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:156
---@overload fun(value: any): MacroHandler.TimeSpan
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.TimeSpan result1
function _mhTimeSpan:sub(value) end

--- Alias for [sub] — the semantic spelling preferred by ported scripts.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:167
---@overload fun(value: any): MacroHandler.TimeSpan
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.TimeSpan result1
function _mhTimeSpan:subtract(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:142
---@overload fun(): number
---@return number result1
function _mhTimeSpan:totalDays() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:143
---@overload fun(): number
---@return number result1
function _mhTimeSpan:totalHours() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:146
---@overload fun(): number
---@return number result1
function _mhTimeSpan:totalMillis() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:144
---@overload fun(): number
---@return number result1
function _mhTimeSpan:totalMinutes() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeTypes.kt:145
---@overload fun(): number
---@return number result1
function _mhTimeSpan:totalSeconds() end

---@class MacroHandler.Stopwatch
local _mhStopwatch = {}

--- Alias for [start] — resumes from the frozen elapsed. / fun resume() = start() / Records the current total elapsed (in ms) as a split. Safe to call while the watch is running, paused, or stopped. Returns the value just recorded so callers can chain a log/print without an extra `getLaps()[last]` round-trip. / fun lap(): Double { val value = elapsed().toLong() laps.add(value) return value.toDouble() } / Returns the recorded split times as a fresh Lua-friendly list. Each element is the total elapsed at the moment lap() was called, not a delta from the previous lap. Returning a new ArrayList per call prevents Lua mutations from corrupting the internal list. / fun getLaps(): List<Double> = laps.map { it.toDouble() } / Clears recorded splits without affecting the running elapsed clock.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeHosts.kt:109
---@overload fun(): boolean
---@return boolean result1
function _mhStopwatch:clearLaps() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeHosts.kt:62
---@overload fun(): number
---@return number result1
function _mhStopwatch:elapsed() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeHosts.kt:68
---@overload fun(): number
---@return number result1
function _mhStopwatch:elapsedMs() end

--- Records the current total elapsed (in ms) as a split. Safe to call while the watch is running, paused, or stopped. Returns the value just recorded so callers can chain a log/print without an extra `getLaps()[last]` round-trip. / fun lap(): Double { val value = elapsed().toLong() laps.add(value) return value.toDouble() } / Returns the recorded split times as a fresh Lua-friendly list. Each element is the total elapsed at the moment lap() was called, not a delta from the previous lap. Returning a new ArrayList per call prevents Lua mutations from corrupting the internal list. / fun getLaps(): List<Double> = laps.map { it.toDouble() } / Clears recorded splits without affecting the running elapsed clock. / fun clearLaps(): Boolean { laps.clear() return true } / Number of recorded splits. Cheap O(1) read for loop conditions.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeHosts.kt:115
---@overload fun(): integer
---@return integer result1
function _mhStopwatch:getLapCount() end

--- Alias for [stop] — freezes elapsed without resetting it. / fun pause() = stop() / Alias for [start] — resumes from the frozen elapsed. / fun resume() = start() / Records the current total elapsed (in ms) as a split. Safe to call while the watch is running, paused, or stopped. Returns the value just recorded so callers can chain a log/print without an extra `getLaps()[last]` round-trip. / fun lap(): Double { val value = elapsed().toLong() laps.add(value) return value.toDouble() } / Returns the recorded split times as a fresh Lua-friendly list. Each element is the total elapsed at the moment lap() was called, not a delta from the previous lap. Returning a new ArrayList per call prevents Lua mutations from corrupting the internal list.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeHosts.kt:106
---@overload fun(): string
---@return string result1
function _mhStopwatch:getLaps() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeHosts.kt:69
---@overload fun(value: any): boolean
---@param value any Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function _mhStopwatch:isElapsed(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeHosts.kt:67
---@overload fun(): boolean
---@return boolean result1
function _mhStopwatch:isRunning() end

--- Alias for [stop] — freezes elapsed without resetting it. / fun pause() = stop() / Alias for [start] — resumes from the frozen elapsed. / fun resume() = start() / Records the current total elapsed (in ms) as a split. Safe to call while the watch is running, paused, or stopped. Returns the value just recorded so callers can chain a log/print without an extra `getLaps()[last]` round-trip.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeHosts.kt:94
---@overload fun(): number
---@return number result1
function _mhStopwatch:lap() end

--- Alias for [stop] — freezes elapsed without resetting it. TODO: expression return requires manual bridge tracing; return kept as any.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeHosts.kt:83
---@overload fun(): any
---@return any result1
function _mhStopwatch:pause() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeHosts.kt:50
---@overload fun()
---@return nil result1
function _mhStopwatch:reset() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeHosts.kt:57
---@overload fun()
---@return nil result1
function _mhStopwatch:restart() end

--- Alias for [stop] — freezes elapsed without resetting it. / fun pause() = stop() / Alias for [start] — resumes from the frozen elapsed. TODO: expression return requires manual bridge tracing; return kept as any.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeHosts.kt:86
---@overload fun(): any
---@return any result1
function _mhStopwatch:resume() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeHosts.kt:36
---@overload fun()
---@return nil result1
function _mhStopwatch:start() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeHosts.kt:43
---@overload fun()
---@return nil result1
function _mhStopwatch:stop() end

---@class MacroHandler.Map
local _mhMap = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatStringAndMapHosts.kt:244
---@overload fun()
---@return nil result1
function _mhMap:clear() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatStringAndMapHosts.kt:248
---@overload fun(key: any): boolean
---@param key any Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function _mhMap:containsKey(key) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatStringAndMapHosts.kt:250
---@overload fun(value: any): boolean
---@param value any Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function _mhMap:containsValue(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatStringAndMapHosts.kt:286
---@overload fun(key: any): any
---@param key any Flexible native coercion; retained as any, not guessed.
---@return any result1
function _mhMap:delete(key) end

--- TODO: Lua payload shape/arity is not narrowed unless separately traced.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatStringAndMapHosts.kt:305
---@overload fun(): table
---@return table result1
function _mhMap:entries() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatStringAndMapHosts.kt:252
---@overload fun(key: any): any
---@param key any Flexible native coercion; retained as any, not guessed.
---@return any result1
function _mhMap:get(key) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatStringAndMapHosts.kt:284
---@overload fun(key: any): boolean
---@param key any Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function _mhMap:has(key) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatStringAndMapHosts.kt:303
---@overload fun(): boolean
---@return boolean result1
function _mhMap:isEmpty() end

--- TODO: Lua payload shape/arity is not narrowed unless separately traced.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatStringAndMapHosts.kt:316
---@overload fun(): table
---@return table result1
function _mhMap:keys() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatStringAndMapHosts.kt:254
---@overload fun(key: any, value: any): any
---@param key any Flexible native coercion; retained as any, not guessed.
---@param value any Flexible native coercion; retained as any, not guessed.
---@return any result1
function _mhMap:put(key, value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatStringAndMapHosts.kt:261
---@overload fun(other: any)
---@param other any Flexible native coercion; retained as any, not guessed.
---@return nil result1
function _mhMap:putAll(other) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatStringAndMapHosts.kt:277
---@overload fun(key: any, value: any): any
---@param key any Flexible native coercion; retained as any, not guessed.
---@param value any Flexible native coercion; retained as any, not guessed.
---@return any result1
function _mhMap:putIfAbsent(key, value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatStringAndMapHosts.kt:288
---@overload fun(key: any): any
---@param key any Flexible native coercion; retained as any, not guessed.
---@return any result1
function _mhMap:remove(key) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatStringAndMapHosts.kt:290
---@overload fun(key: any, value: any): any
---@param key any Flexible native coercion; retained as any, not guessed.
---@param value any Flexible native coercion; retained as any, not guessed.
---@return any result1
function _mhMap:replace(key, value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatStringAndMapHosts.kt:282
---@overload fun(key: any, value: any): any
---@param key any Flexible native coercion; retained as any, not guessed.
---@param value any Flexible native coercion; retained as any, not guessed.
---@return any result1
function _mhMap:set(key, value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatStringAndMapHosts.kt:301
---@overload fun(): integer
---@return integer result1
function _mhMap:size() end

--- TODO: Lua payload shape/arity is not narrowed unless separately traced.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatStringAndMapHosts.kt:318
---@overload fun(): table
---@return table result1
function _mhMap:values() end

---@class MacroHandler.Request
local _mhRequest = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatRequestHosts.kt:163
---@overload fun(): MacroHandler.Response
---@return MacroHandler.Response result1
function _mhRequest:delete() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatRequestHosts.kt:157
---@overload fun(): MacroHandler.Response
---@return MacroHandler.Response result1
function _mhRequest:get() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatRequestHosts.kt:141
---@overload fun(): string
---@return string result1
function _mhRequest:getCookies() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatRequestHosts.kt:165
---@overload fun(): MacroHandler.Response
---@return MacroHandler.Response result1
function _mhRequest:patch() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatRequestHosts.kt:159
---@overload fun(): MacroHandler.Response
---@return MacroHandler.Response result1
function _mhRequest:post() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatRequestHosts.kt:161
---@overload fun(): MacroHandler.Response
---@return MacroHandler.Response result1
function _mhRequest:put() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatRequestHosts.kt:120
---@overload fun(body: any): MacroHandler.Request
---@param body any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Request result1
function _mhRequest:setBody(body) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatRequestHosts.kt:125
---@overload fun(type: any): MacroHandler.Request
---@param type any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Request result1
function _mhRequest:setContentType(type) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatRequestHosts.kt:130
---@overload fun(name: any, value: any): MacroHandler.Request
---@param name any Flexible native coercion; retained as any, not guessed.
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Request result1
function _mhRequest:setCookie(name, value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatRequestHosts.kt:86
---@overload fun(key: any, value: any): MacroHandler.Request
---@param key any Flexible native coercion; retained as any, not guessed.
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Request result1
function _mhRequest:setHeader(key, value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatRequestHosts.kt:97
---@overload fun(key: any, value: any): MacroHandler.Request
---@param key any Flexible native coercion; retained as any, not guessed.
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Request result1
function _mhRequest:setParameter(key, value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatRequestHosts.kt:144
---@overload fun(maxAttempts: any, initialDelayMs?: any, maxDelayMs?: any): MacroHandler.Request
---@param maxAttempts any Flexible native coercion; retained as any, not guessed.
---@param initialDelayMs? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@param maxDelayMs? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Request result1
function _mhRequest:setRetry(maxAttempts, initialDelayMs, maxDelayMs) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatRequestHosts.kt:109
---@overload fun(connectMs: any, readMs?: any): MacroHandler.Request
---@param connectMs any Flexible native coercion; retained as any, not guessed.
---@param readMs? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Request result1
function _mhRequest:setTimeout(connectMs, readMs) end

---@class MacroHandler.Version
local _mhVersion = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatVersionHost.kt:21
---@overload fun(): integer
---@return integer result1
function _mhVersion:build() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatVersionHost.kt:25
---@overload fun(other: any): integer
---@param other any Flexible native coercion; retained as any, not guessed.
---@return integer result1
function _mhVersion:compare(other) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatVersionHost.kt:33
---@overload fun(other: any): boolean
---@param other any Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function _mhVersion:equalsTo(other) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatVersionHost.kt:27
---@overload fun(other: any): boolean
---@param other any Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function _mhVersion:isAtLeast(other) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatVersionHost.kt:29
---@overload fun(other: any): boolean
---@param other any Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function _mhVersion:isGreaterThan(other) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatVersionHost.kt:31
---@overload fun(other: any): boolean
---@param other any Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function _mhVersion:isLessThan(other) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatVersionHost.kt:17
---@overload fun(): integer
---@return integer result1
function _mhVersion:major() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatVersionHost.kt:19
---@overload fun(): integer
---@return integer result1
function _mhVersion:minor() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatVersionHost.kt:23
---@overload fun(): integer
---@return integer result1
function _mhVersion:revision() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatVersionHost.kt:15
---@overload fun(): string
---@return string result1
function _mhVersion:value() end

---@class MacroHandler.Hud
local _mhHud = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatOnScreenText.kt:454
---@overload fun(value: any)
---@param value any Flexible native coercion; retained as any, not guessed.
---@return nil result1
function _mhHud:clickable(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatOnScreenText.kt:599
---@overload fun()
---@return nil result1
function _mhHud:dispose() end

--- TODO: expression return requires manual bridge tracing; return kept as any.
--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatOnScreenText.kt:578
---@overload fun(value: any): any
---@param value any Flexible native coercion; retained as any, not guessed.
---@return any result1
function _mhHud:fullscreen(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatOnScreenText.kt:532
---@overload fun(): string
---@return string result1
function _mhHud:getBackgroundColor() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatOnScreenText.kt:491
---@overload fun(): integer
---@return integer result1
function _mhHud:getClickState() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatOnScreenText.kt:526
---@overload fun(): number
---@return number result1
function _mhHud:getH() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatOnScreenText.kt:497
---@overload fun(): integer
---@return integer result1
function _mhHud:getMoveState() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatOnScreenText.kt:509
---@overload fun(): any
---@return any result1
function _mhHud:getRegion() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatOnScreenText.kt:503
---@overload fun(): integer
---@return integer result1
function _mhHud:getResizeState() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatOnScreenText.kt:528
---@overload fun(): string
---@return string result1
function _mhHud:getText() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatOnScreenText.kt:530
---@overload fun(): string
---@return string result1
function _mhHud:getTextColor() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatOnScreenText.kt:524
---@overload fun(): number
---@return number result1
function _mhHud:getW() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatOnScreenText.kt:520
---@overload fun(): number
---@return number result1
function _mhHud:getX() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatOnScreenText.kt:522
---@overload fun(): number
---@return number result1
function _mhHud:getY() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatOnScreenText.kt:484
---@overload fun(value: any)
---@param value any Kotlin default: true. Flexible native coercion; retained as any, not guessed.
---@return nil result1
function _mhHud:hidden(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatOnScreenText.kt:458
---@overload fun(value: any)
---@param value any Flexible native coercion; retained as any, not guessed.
---@return nil result1
function _mhHud:moveable(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatOnScreenText.kt:467
---@overload fun(): MacroHandler.Hud
---@return MacroHandler.Hud result1
function _mhHud:noScale() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatOnScreenText.kt:595
---@overload fun()
---@return nil result1
function _mhHud:off() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatOnScreenText.kt:462
---@overload fun(value: any)
---@param value any Flexible native coercion; retained as any, not guessed.
---@return nil result1
function _mhHud:resizable(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatOnScreenText.kt:428
---@overload fun(value: any)
---@param value any Flexible native coercion; retained as any, not guessed.
---@return nil result1
function _mhHud:setAlpha(value) end

--- TODO: expression return requires manual bridge tracing; return kept as any.
--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatOnScreenText.kt:389
---@overload fun(value: any): any
---@param value any Flexible native coercion; retained as any, not guessed.
---@return any result1
function _mhHud:setBackgroundColor(value) end

--- TODO: expression return requires manual bridge tracing; return kept as any.
--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatOnScreenText.kt:396
---@overload fun(value: any): any
---@param value any Flexible native coercion; retained as any, not guessed.
---@return any result1
function _mhHud:setBackgroundImage(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatOnScreenText.kt:438
---@overload fun(value: any)
---@param value any Flexible native coercion; retained as any, not guessed.
---@return nil result1
function _mhHud:setGravity(value) end

--- TODO: expression return requires manual bridge tracing; return kept as any.
--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatOnScreenText.kt:555
---@overload fun(value: any): any
---@param value any Flexible native coercion; retained as any, not guessed.
---@return any result1
function _mhHud:setH(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatOnScreenText.kt:562
---@overload fun(value: any)
---@param value any Flexible native coercion; retained as any, not guessed.
---@return nil result1
function _mhHud:setHtml(value) end

--- TODO: expression return requires manual bridge tracing; return kept as any.
--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatOnScreenText.kt:567
---@overload fun(value: any): any
---@param value any Flexible native coercion; retained as any, not guessed.
---@return any result1
function _mhHud:setHtmlText(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatOnScreenText.kt:423
---@overload fun(value: any)
---@param value any Flexible native coercion; retained as any, not guessed.
---@return nil result1
function _mhHud:setPadding(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatOnScreenText.kt:433
---@overload fun(value: any)
---@param value any Flexible native coercion; retained as any, not guessed.
---@return nil result1
function _mhHud:setRound(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatOnScreenText.kt:413
---@overload fun(value: any)
---@param value any Flexible native coercion; retained as any, not guessed.
---@return nil result1
function _mhHud:setStrokeColor(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatOnScreenText.kt:418
---@overload fun(value: any)
---@param value any Flexible native coercion; retained as any, not guessed.
---@return nil result1
function _mhHud:setStrokeWidth(value) end

--- TODO: expression return requires manual bridge tracing; return kept as any.
--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatOnScreenText.kt:365
---@overload fun(value: any): any
---@param value any Flexible native coercion; retained as any, not guessed.
---@return any result1
function _mhHud:setText(value) end

--- TODO: expression return requires manual bridge tracing; return kept as any.
--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatOnScreenText.kt:382
---@overload fun(value: any): any
---@param value any Flexible native coercion; retained as any, not guessed.
---@return any result1
function _mhHud:setTextColor(value) end

--- TODO: expression return requires manual bridge tracing; return kept as any.
--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatOnScreenText.kt:372
---@overload fun(value: any): any
---@param value any Flexible native coercion; retained as any, not guessed.
---@return any result1
function _mhHud:setTextSize(value) end

--- TODO: expression return requires manual bridge tracing; return kept as any.
--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatOnScreenText.kt:548
---@overload fun(value: any): any
---@param value any Flexible native coercion; retained as any, not guessed.
---@return any result1
function _mhHud:setW(value) end

--- TODO: expression return requires manual bridge tracing; return kept as any.
--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatOnScreenText.kt:534
---@overload fun(value: any): any
---@param value any Flexible native coercion; retained as any, not guessed.
---@return any result1
function _mhHud:setX(value) end

--- TODO: expression return requires manual bridge tracing; return kept as any.
--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatOnScreenText.kt:541
---@overload fun(value: any): any
---@param value any Flexible native coercion; retained as any, not guessed.
---@return any result1
function _mhHud:setY(value) end

--- TODO: expression return requires manual bridge tracing; return kept as any.
--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatOnScreenText.kt:469
---@overload fun(): any
---@return any result1
function _mhHud:show() end

---@class MacroHandler.ToastParams
local _mhToastParams = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatToastParamsHost.kt:124
---@overload fun(): integer|nil
---@return integer|nil result1
function _mhToastParams:getBackgroundColorArgb() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatToastParamsHost.kt:117
---@overload fun(): integer
---@return integer result1
function _mhToastParams:getDuration() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatToastParamsHost.kt:119
---@overload fun(): number
---@return number result1
function _mhToastParams:getOpacity() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatToastParamsHost.kt:121
---@overload fun(): integer
---@return integer result1
function _mhToastParams:getPadding() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatToastParamsHost.kt:118
---@overload fun(): string
---@return string result1
function _mhToastParams:getPosition() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatToastParamsHost.kt:120
---@overload fun(): number
---@return number result1
function _mhToastParams:getRadius() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatToastParamsHost.kt:123
---@overload fun(): integer|nil
---@return integer|nil result1
function _mhToastParams:getTextColorArgb() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatToastParamsHost.kt:122
---@overload fun(): integer
---@return integer result1
function _mhToastParams:getYOffset() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatToastParamsHost.kt:75
---@overload fun(value: any): MacroHandler.ToastParams
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.ToastParams result1
function _mhToastParams:setBackgroundColor(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatToastParamsHost.kt:46
---@overload fun(value: any): MacroHandler.ToastParams
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.ToastParams result1
function _mhToastParams:setDuration(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatToastParamsHost.kt:65
---@overload fun(value: any): MacroHandler.ToastParams
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.ToastParams result1
function _mhToastParams:setOpacity(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatToastParamsHost.kt:85
---@overload fun(value: any): MacroHandler.ToastParams
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.ToastParams result1
function _mhToastParams:setPadding(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatToastParamsHost.kt:51
---@overload fun(value: any): MacroHandler.ToastParams
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.ToastParams result1
function _mhToastParams:setPosition(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatToastParamsHost.kt:80
---@overload fun(value: any): MacroHandler.ToastParams
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.ToastParams result1
function _mhToastParams:setRadius(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatToastParamsHost.kt:70
---@overload fun(value: any): MacroHandler.ToastParams
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.ToastParams result1
function _mhToastParams:setTextColor(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatToastParamsHost.kt:90
---@overload fun(value: any): MacroHandler.ToastParams
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.ToastParams result1
function _mhToastParams:setYOffset(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatToastParamsHost.kt:95
---@overload fun(message: any): boolean
---@param message any Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function _mhToastParams:show(message) end

---@class MacroHandler.FindParam
local _mhFindParam = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSearchParam.kt:106
---@overload fun(value: any): MacroHandler.FindParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.FindParam result1
function _mhFindParam:blacklist(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSearchParam.kt:118
---@overload fun(value: any): MacroHandler.FindParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.FindParam result1
function _mhFindParam:case(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSearchParam.kt:125
---@overload fun(value: any): MacroHandler.FindParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.FindParam result1
function _mhFindParam:engine(value) end

--- Generated Kotlin property getter; exposed only through the binding allowlist.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSearchParam.kt:30
---@overload fun(): boolean
---@return boolean result1
function _mhFindParam:getHighlight() end

--- Generated Kotlin property getter; exposed only through the binding allowlist.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSearchParam.kt:31
---@overload fun(): integer
---@return integer result1
function _mhFindParam:getHighlightDuration() end

--- Generated Kotlin property getter; exposed only through the binding allowlist.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSearchParam.kt:32
---@overload fun(): string
---@return string result1
function _mhFindParam:getHighlightTooltip() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSearchParam.kt:73
---@overload fun(value: number): MacroHandler.FindParam
---@param value number Similarity 0..1; clamped.
---@return MacroHandler.FindParam result1
function _mhFindParam:mScore(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSearchParam.kt:88
---@overload fun(value: any): MacroHandler.FindParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.FindParam result1
function _mhFindParam:method(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSearchParam.kt:93
---@overload fun(value: any): MacroHandler.FindParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.FindParam result1
function _mhFindParam:mode(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSearchParam.kt:130
---@overload fun(value: any): MacroHandler.FindParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.FindParam result1
function _mhFindParam:ocrScript(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSearchParam.kt:83
---@overload fun(value: any): MacroHandler.FindParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.FindParam result1
function _mhFindParam:sRate(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSearchParam.kt:78
---@overload fun(value: number): MacroHandler.FindParam
---@param value number Finite positive scale, normalized to 0.5..4.0; invalid becomes 1.
---@return MacroHandler.FindParam result1
function _mhFindParam:scale(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSearchParam.kt:120
---@overload fun(value: any): MacroHandler.FindParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.FindParam result1
function _mhFindParam:segment(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSearchParam.kt:141
---@overload fun(value: any): MacroHandler.FindParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.FindParam result1
function _mhFindParam:setHighlight(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSearchParam.kt:155
---@overload fun(value: any): MacroHandler.FindParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.FindParam result1
function _mhFindParam:setHighlightDuration(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSearchParam.kt:163
---@overload fun(value: any): MacroHandler.FindParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.FindParam result1
function _mhFindParam:setHighlightTooltip(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSearchParam.kt:68
---@overload fun(value: number): MacroHandler.FindParam
---@param value number Milliseconds; nonnegative integer timeout. Default 0.
---@return MacroHandler.FindParam result1
function _mhFindParam:timeout(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSearchParam.kt:98
---@overload fun(value: any): MacroHandler.FindParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.FindParam result1
function _mhFindParam:whitelist(value) end

---@class MacroHandler.ClickParam
local _mhClickParam = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatParamTypes.kt:37
---@overload fun(value: any): MacroHandler.ClickParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.ClickParam result1
function _mhClickParam:delay(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatParamTypes.kt:32
---@overload fun(value: any): MacroHandler.ClickParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.ClickParam result1
function _mhClickParam:hold(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatParamTypes.kt:56
---@overload fun(): MacroHandler.ClickParam
---@return MacroHandler.ClickParam result1
function _mhClickParam:humanLike() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatParamTypes.kt:47
---@overload fun(value: any): MacroHandler.ClickParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.ClickParam result1
function _mhClickParam:random(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatParamTypes.kt:53
---@overload fun(value?: any): MacroHandler.ClickParam
---@param value? any Kotlin default: HUMAN_LIKE_RANDOM_RADIUS. Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.ClickParam result1
function _mhClickParam:randomize(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatParamTypes.kt:27
---@overload fun(value: any): MacroHandler.ClickParam
---@param self MacroHandler.ClickParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.ClickParam result1
_mhClickParam["repeat"] = function(self, value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatParamTypes.kt:42
---@overload fun(value: any): MacroHandler.ClickParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.ClickParam result1
function _mhClickParam:waitNext(value) end

---@class MacroHandler.SwipeParam
local _mhSwipeParam = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatParamTypes.kt:80
---@overload fun(value: any): MacroHandler.SwipeParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.SwipeParam result1
function _mhSwipeParam:delay(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatParamTypes.kt:99
---@overload fun(): MacroHandler.SwipeParam
---@return MacroHandler.SwipeParam result1
function _mhSwipeParam:humanLike() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatParamTypes.kt:90
---@overload fun(value: any): MacroHandler.SwipeParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.SwipeParam result1
function _mhSwipeParam:random(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatParamTypes.kt:96
---@overload fun(value?: any): MacroHandler.SwipeParam
---@param value? any Kotlin default: HUMAN_LIKE_RANDOM_RADIUS. Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.SwipeParam result1
function _mhSwipeParam:randomize(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatParamTypes.kt:75
---@overload fun(value: any): MacroHandler.SwipeParam
---@param self MacroHandler.SwipeParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.SwipeParam result1
_mhSwipeParam["repeat"] = function(self, value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatParamTypes.kt:85
---@overload fun(value: any): MacroHandler.SwipeParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.SwipeParam result1
function _mhSwipeParam:waitNext(value) end

---@class MacroHandler.PlayParam
local _mhPlayParam = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatParamTypes.kt:135
---@overload fun(value: any): MacroHandler.PlayParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.PlayParam result1
function _mhPlayParam:delay(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatParamTypes.kt:154
---@overload fun(): MacroHandler.PlayParam
---@return MacroHandler.PlayParam result1
function _mhPlayParam:humanLike() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatParamTypes.kt:145
---@overload fun(value: any): MacroHandler.PlayParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.PlayParam result1
function _mhPlayParam:random(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatParamTypes.kt:151
---@overload fun(value?: any): MacroHandler.PlayParam
---@param value? any Kotlin default: HUMAN_LIKE_RANDOM_RADIUS. Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.PlayParam result1
function _mhPlayParam:randomize(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatParamTypes.kt:130
---@overload fun(value: any): MacroHandler.PlayParam
---@param self MacroHandler.PlayParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.PlayParam result1
_mhPlayParam["repeat"] = function(self, value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatParamTypes.kt:125
---@overload fun(value: any): MacroHandler.PlayParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.PlayParam result1
function _mhPlayParam:setSpeed(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatParamTypes.kt:140
---@overload fun(value: any): MacroHandler.PlayParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.PlayParam result1
function _mhPlayParam:waitNext(value) end

---@class MacroHandler.AssetTemplate
local _mhAssetTemplate = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTemplateHosts.kt:206
---@overload fun(): MacroHandler.Template
---@return MacroHandler.Template result1
function _mhAssetTemplate:build() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTemplateHosts.kt:185
---@overload fun(value?: any): MacroHandler.AssetTemplate
---@param value? any Kotlin default: true. Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.AssetTemplate result1
function _mhAssetTemplate:gray(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTemplateHosts.kt:114
---@overload fun(value: any): MacroHandler.AssetTemplate
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.AssetTemplate result1
function _mhAssetTemplate:height(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTemplateHosts.kt:119
---@overload fun(value: any): MacroHandler.AssetTemplate
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.AssetTemplate result1
function _mhAssetTemplate:mScore(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTemplateHosts.kt:149
---@overload fun(value: any): MacroHandler.AssetTemplate
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.AssetTemplate result1
function _mhAssetTemplate:mask(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTemplateHosts.kt:139
---@overload fun(value: any): MacroHandler.AssetTemplate
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.AssetTemplate result1
function _mhAssetTemplate:method(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTemplateHosts.kt:129
---@overload fun(): MacroHandler.AssetTemplate
---@return MacroHandler.AssetTemplate result1
function _mhAssetTemplate:noScale() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTemplateHosts.kt:154
---@overload fun(x: any, y: any): MacroHandler.AssetTemplate
---@param x any Flexible native coercion; retained as any, not guessed.
---@param y any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.AssetTemplate result1
function _mhAssetTemplate:offset(x, y) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTemplateHosts.kt:179
---@overload fun(value: any): MacroHandler.AssetTemplate
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.AssetTemplate result1
function _mhAssetTemplate:rotate(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTemplateHosts.kt:124
---@overload fun(value: any): MacroHandler.AssetTemplate
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.AssetTemplate result1
function _mhAssetTemplate:scale(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTemplateHosts.kt:169
---@overload fun(value: any): MacroHandler.AssetTemplate
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.AssetTemplate result1
function _mhAssetTemplate:scaleX(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTemplateHosts.kt:174
---@overload fun(value: any): MacroHandler.AssetTemplate
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.AssetTemplate result1
function _mhAssetTemplate:scaleY(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTemplateHosts.kt:144
---@overload fun(value: any): MacroHandler.AssetTemplate
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.AssetTemplate result1
function _mhAssetTemplate:segment(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTemplateHosts.kt:190
---@overload fun(value: any): MacroHandler.AssetTemplate
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.AssetTemplate result1
function _mhAssetTemplate:threshold(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTemplateHosts.kt:134
---@overload fun(value: any): MacroHandler.AssetTemplate
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.AssetTemplate result1
function _mhAssetTemplate:timeout(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTemplateHosts.kt:229
---@overload fun(): MacroHandler.Template
---@return MacroHandler.Template result1
function _mhAssetTemplate:toTemplate() end

--- IMAGE_ENGINES_PLAN §5: per-call "Saydam alanları yok say". `transparent()` / `transparent(true)` ignores the template's transparent pixels, `transparent(false)` searches the whole box the released way; without the call the template's stored setting applies.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTemplateHosts.kt:201
---@overload fun(value?: any): MacroHandler.AssetTemplate
---@param value? any Kotlin default: true. Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.AssetTemplate result1
function _mhAssetTemplate:transparent(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTemplateHosts.kt:105
---@overload fun(value: any): MacroHandler.AssetTemplate
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.AssetTemplate result1
function _mhAssetTemplate:value(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTemplateHosts.kt:109
---@overload fun(value: any): MacroHandler.AssetTemplate
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.AssetTemplate result1
function _mhAssetTemplate:width(value) end

---@class MacroHandler.Result
local _mhResult = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatMatchHosts.kt:168
---@overload fun(): boolean
---@return boolean result1
function _mhResult:canClick() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatMatchHosts.kt:171
---@overload fun(param?: any): boolean
---@param param? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function _mhResult:click(param) end

--- Measurement payload when a size-capable engine produced one; null otherwise. / private val geometry: ScreenMatchGeometry? = null, / Absolute screen rect `[left, top, right, bottom]` the humanize jitter of [click] is clamped to, when the producer applies one (Agent Detect: the detected box). Carried so the native runtime, which clicks from a serialized copy, can apply the same clamp; null otherwise. / private val clickClampBounds: List<Float>? = null, / Engine and template rotation of an image match (IMAGE_ENGINES_PLAN §6); null for any other match. / private val imageMatch: ImageMatchInfo? = null, ) { fun getPoint(): LuaScriptEngine.CompatPoint = point fun getScore(): Double = score / Template rotation of an image hit, in degrees: 0 for an unrotated search and for every match that is not an image match.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatMatchHosts.kt:114
---@overload fun(): number
---@return number result1
function _mhResult:getAngle() end

--- Engine and template rotation of an image match (IMAGE_ENGINES_PLAN §6); null for any other match. / private val imageMatch: ImageMatchInfo? = null, ) { fun getPoint(): LuaScriptEngine.CompatPoint = point fun getScore(): Double = score / Template rotation of an image hit, in degrees: 0 for an unrotated search and for every match that is not an image match. / fun getAngle(): Double = imageMatch?.angle?.toDouble()?.takeIf { it.isFinite() } ?: 0.0 / The image engine that actually produced this hit (for example `balanced_image`, or the route Otomatik took), or nil for a match that no image engine produced.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatMatchHosts.kt:120
---@overload fun(): string|nil
---@return string|nil result1
function _mhResult:getEngine() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatMatchHosts.kt:132
---@overload fun(): number
---@return number result1
function _mhResult:getH() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatMatchHosts.kt:1
---@return MacroHandler.MatchMetrics|nil result1
function _mhResult:getMetrics() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatMatchHosts.kt:106
---@overload fun(): MacroHandler.Point
---@return MacroHandler.Point result1
function _mhResult:getPoint() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatMatchHosts.kt:108
---@overload fun(): number
---@return number result1
function _mhResult:getScore() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatMatchHosts.kt:122
---@overload fun(): string
---@return string result1
function _mhResult:getText() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatMatchHosts.kt:130
---@overload fun(): number
---@return number result1
function _mhResult:getW() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatMatchHosts.kt:126
---@overload fun(): number
---@return number result1
function _mhResult:getX() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatMatchHosts.kt:128
---@overload fun(): number
---@return number result1
function _mhResult:getY() end

---@class MacroHandler.TextResult
local _mhTextResult = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatMatchHosts.kt:190
---@overload fun(): boolean
---@return boolean result1
function _mhTextResult:canClick() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatMatchHosts.kt:193
---@overload fun(param?: any): boolean
---@param param? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function _mhTextResult:click(param) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatMatchHosts.kt:182
---@overload fun(): MacroHandler.Point
---@return MacroHandler.Point result1
function _mhTextResult:getPoint() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatMatchHosts.kt:184
---@overload fun(): string
---@return string result1
function _mhTextResult:getText() end

---@class MacroHandler.SettingBuilder
local _mhSettingBuilder = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSettingHosts.kt:315
---@overload fun(key: any, view: any): MacroHandler.SettingBuilder
---@param key any Flexible native coercion; retained as any, not guessed.
---@param view any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.SettingBuilder result1
function _mhSettingBuilder:add(key, view) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSettingHosts.kt:1
---@overload fun(): MacroHandler.SettingDialog
---@return MacroHandler.SettingDialog result1
function _mhSettingBuilder:build() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSettingHosts.kt:320
---@overload fun(self: MacroHandler.SettingBuilder, id: any, title: any, orientation: any): MacroHandler.SettingBuilder
---@overload fun(): MacroHandler.SettingBuilder
---@overload fun(id: any, title: any, orientation: any): MacroHandler.SettingBuilder
---@return MacroHandler.SettingBuilder result1
function _mhSettingBuilder:group() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSettingHosts.kt:350
---@overload fun(): MacroHandler.SettingBuilder
---@return MacroHandler.SettingBuilder result1
function _mhSettingBuilder:groupEnd() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSettingHosts.kt:363
---@overload fun(value: any): MacroHandler.SettingBuilder
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.SettingBuilder result1
function _mhSettingBuilder:setNegativeButton(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSettingHosts.kt:399
---@overload fun(textColor: any, backgroundColor: any, borderColor: any, radiusDp: any, minHeightDp: any): MacroHandler.SettingBuilder
---@param textColor any Kotlin default: "". Flexible native coercion; retained as any, not guessed.
---@param backgroundColor any Kotlin default: "". Flexible native coercion; retained as any, not guessed.
---@param borderColor any Kotlin default: "". Flexible native coercion; retained as any, not guessed.
---@param radiusDp any Kotlin default: 0. Flexible native coercion; retained as any, not guessed.
---@param minHeightDp any Kotlin default: 0. Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.SettingBuilder result1
function _mhSettingBuilder:setNegativeButtonStyle(textColor, backgroundColor, borderColor, radiusDp, minHeightDp) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSettingHosts.kt:358
---@overload fun(value: any): MacroHandler.SettingBuilder
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.SettingBuilder result1
function _mhSettingBuilder:setPositiveButton(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSettingHosts.kt:386
---@overload fun(textColor: any, backgroundColor: any, borderColor: any, radiusDp: any, minHeightDp: any): MacroHandler.SettingBuilder
---@param textColor any Kotlin default: "". Flexible native coercion; retained as any, not guessed.
---@param backgroundColor any Kotlin default: "". Flexible native coercion; retained as any, not guessed.
---@param borderColor any Kotlin default: "". Flexible native coercion; retained as any, not guessed.
---@param radiusDp any Kotlin default: 0. Flexible native coercion; retained as any, not guessed.
---@param minHeightDp any Kotlin default: 0. Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.SettingBuilder result1
function _mhSettingBuilder:setPositiveButtonStyle(textColor, backgroundColor, borderColor, radiusDp, minHeightDp) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSettingHosts.kt:368
---@overload fun(mode: any, widthDp: any, heightDp: any): MacroHandler.SettingBuilder
---@param mode any Flexible native coercion; retained as any, not guessed.
---@param widthDp any Kotlin default: 0. Flexible native coercion; retained as any, not guessed.
---@param heightDp any Kotlin default: 0. Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.SettingBuilder result1
function _mhSettingBuilder:setSurface(mode, widthDp, heightDp) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSettingHosts.kt:379
---@overload fun(style: any): MacroHandler.SettingBuilder
---@param style any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.SettingBuilder result1
function _mhSettingBuilder:setSurfaceStyle(style) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSettingHosts.kt:310
---@overload fun(value: any): MacroHandler.SettingBuilder
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.SettingBuilder result1
function _mhSettingBuilder:setTitle(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSettingHosts.kt:412
---@overload fun(key: any, labelColor: any, controlTextColor: any, selectionColor: any, backgroundColor: any, borderColor: any, controlStyle: any, controlCoverage: any, labelShadowColor: any, labelShadowRadiusDp: any, labelShadowDxDp: any, labelShadowDyDp: any, controlGlowColor: any, controlGlowRadiusDp: any, controlShadowColor: any, controlShadowRadiusDp: any, indicatorMark: any, indicatorStyle: any): MacroHandler.SettingBuilder
---@param key any Flexible native coercion; retained as any, not guessed.
---@param labelColor any Kotlin default: "". Flexible native coercion; retained as any, not guessed.
---@param controlTextColor any Kotlin default: "". Flexible native coercion; retained as any, not guessed.
---@param selectionColor any Kotlin default: "". Flexible native coercion; retained as any, not guessed.
---@param backgroundColor any Kotlin default: "". Flexible native coercion; retained as any, not guessed.
---@param borderColor any Kotlin default: "". Flexible native coercion; retained as any, not guessed.
---@param controlStyle any Kotlin default: DialogControlStyles.CLASSIC. Flexible native coercion; retained as any, not guessed.
---@param controlCoverage any Kotlin default: DialogControlCoverage.FULL_SURFACE. Flexible native coercion; retained as any, not guessed.
---@param labelShadowColor any Kotlin default: "". Flexible native coercion; retained as any, not guessed.
---@param labelShadowRadiusDp any Kotlin default: 0. Flexible native coercion; retained as any, not guessed.
---@param labelShadowDxDp any Kotlin default: 0. Flexible native coercion; retained as any, not guessed.
---@param labelShadowDyDp any Kotlin default: 0. Flexible native coercion; retained as any, not guessed.
---@param controlGlowColor any Kotlin default: "". Flexible native coercion; retained as any, not guessed.
---@param controlGlowRadiusDp any Kotlin default: 0. Flexible native coercion; retained as any, not guessed.
---@param controlShadowColor any Kotlin default: "". Flexible native coercion; retained as any, not guessed.
---@param controlShadowRadiusDp any Kotlin default: 0. Flexible native coercion; retained as any, not guessed.
---@param indicatorMark any Kotlin default: DialogIndicatorMarks.AUTO. Flexible native coercion; retained as any, not guessed.
---@param indicatorStyle any Kotlin default: "". Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.SettingBuilder result1
function _mhSettingBuilder:styleField(key, labelColor, controlTextColor, selectionColor, backgroundColor, borderColor, controlStyle, controlCoverage, labelShadowColor, labelShadowRadiusDp, labelShadowDxDp, labelShadowDyDp, controlGlowColor, controlGlowRadiusDp, controlShadowColor, controlShadowRadiusDp, indicatorMark, indicatorStyle) end

---@class MacroHandler.MultiGestureBuilder
local _mhMultiGestureBuilder = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatMultiSwipeHosts.kt:159
---@overload fun(self: MacroHandler.MultiGestureBuilder, key: any, path: any): MacroHandler.MultiGestureBuilder
---@overload fun(path: any): MacroHandler.MultiGestureBuilder
---@overload fun(key: any, path: any): MacroHandler.MultiGestureBuilder
---@param path any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.MultiGestureBuilder result1
function _mhMultiGestureBuilder:add(path) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatMultiSwipeHosts.kt:177
---@overload fun(): MacroHandler.MultiGestureSequence
---@return MacroHandler.MultiGestureSequence result1
function _mhMultiGestureBuilder:build() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatMultiSwipeHosts.kt:172
---@overload fun(value: any): MacroHandler.MultiGestureBuilder
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.MultiGestureBuilder result1
function _mhMultiGestureBuilder:setSParam(value) end

---@class MacroHandler.MultiGestureSequence
local _mhMultiGestureSequence = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatMultiSwipeHosts.kt:185
---@overload fun(): boolean
---@return boolean result1
function _mhMultiGestureSequence:go() end

---@class MacroHandler.Response
local _mhResponse = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatRequestHosts.kt:28
---@overload fun(): string
---@return string result1
function _mhResponse:getData() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatRequestHosts.kt:26
---@overload fun(): integer
---@return integer result1
function _mhResponse:getResponseCode() end

---@class MacroHandler.SettingDialog
local _mhSettingDialog = {}

--- Preview mode -- shows dialog but Save does NOT persist values. TODO: Lua payload shape/arity is not narrowed unless separately traced.
--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatSettingDialog.kt:3424
---@overload fun(): any
---@return any result1
function _mhSettingDialog:preview() end

--- TODO: Lua payload shape/arity is not narrowed unless separately traced.
--- Source: app/src/main/java/com/macrohandler/app/runtime/CompatSettingDialog.kt:226
---@overload fun(self: MacroHandler.SettingDialog, timeoutMs: any): any
---@overload fun(): any
---@overload fun(timeoutMs: any): any
---@return any result1
function _mhSettingDialog:show() end

---@class MacroHandler.Template
local _mhTemplate = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTemplateHosts.kt:258
---@overload fun(): integer
---@return integer result1
function _mhTemplate:getH() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTemplateHosts.kt:256
---@overload fun(): integer
---@return integer result1
function _mhTemplate:getW() end

---@class MacroHandler.TextView
local _mhTextView = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:108
---@overload fun(value: any): MacroHandler.TextView
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.TextView result1
function _mhTextView:helper(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:104
---@overload fun(value: any): MacroHandler.TextView
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.TextView result1
function _mhTextView:id(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:106
---@overload fun(value: any): MacroHandler.TextView
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.TextView result1
function _mhTextView:text(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:110
---@overload fun(fieldKey: any, expectedValue: any, matches: any): MacroHandler.TextView
---@param fieldKey any Flexible native coercion; retained as any, not guessed.
---@param expectedValue any Flexible native coercion; retained as any, not guessed.
---@param matches any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.TextView result1
function _mhTextView:visibleWhen(fieldKey, expectedValue, matches) end

---@class MacroHandler.Spacer
local _mhSpacer = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:141
---@overload fun(value: any): MacroHandler.Spacer
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Spacer result1
function _mhSpacer:autoConfirm(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:138
---@overload fun(value: any): MacroHandler.Spacer
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Spacer result1
function _mhSpacer:dialogTimeout(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:136
---@overload fun(value: any): MacroHandler.Spacer
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Spacer result1
function _mhSpacer:helper(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:134
---@overload fun(value: any): MacroHandler.Spacer
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Spacer result1
function _mhSpacer:id(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:144
---@overload fun(fieldKey: any, expectedValue: any, matches: any): MacroHandler.Spacer
---@param fieldKey any Flexible native coercion; retained as any, not guessed.
---@param expectedValue any Flexible native coercion; retained as any, not guessed.
---@param matches any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Spacer result1
function _mhSpacer:visibleWhen(fieldKey, expectedValue, matches) end

---@class MacroHandler.EditText
local _mhEditText = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:179
---@overload fun(value: any): MacroHandler.EditText
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.EditText result1
function _mhEditText:helper(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:177
---@overload fun(value: any): MacroHandler.EditText
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.EditText result1
function _mhEditText:hint(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:159
---@overload fun(value: any): MacroHandler.EditText
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.EditText result1
function _mhEditText:id(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:172
---@overload fun(value: any): MacroHandler.EditText
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.EditText result1
function _mhEditText:max(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:175
---@overload fun(value: any): MacroHandler.EditText
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.EditText result1
function _mhEditText:method(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:169
---@overload fun(value: any): MacroHandler.EditText
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.EditText result1
function _mhEditText:min(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:166
---@overload fun(value: any): MacroHandler.EditText
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.EditText result1
function _mhEditText:regex(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:163
---@overload fun(value: any): MacroHandler.EditText
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.EditText result1
function _mhEditText:required(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:181
---@overload fun(captureMode: any, component: any): MacroHandler.EditText
---@param captureMode any Flexible native coercion; retained as any, not guessed.
---@param component any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.EditText result1
function _mhEditText:runtimeCoordinateBinding(captureMode, component) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:161
---@overload fun(value: any): MacroHandler.EditText
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.EditText result1
function _mhEditText:text(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:198
---@overload fun(fieldKey: any, expectedValue: any, matches: any): MacroHandler.EditText
---@param fieldKey any Flexible native coercion; retained as any, not guessed.
---@param expectedValue any Flexible native coercion; retained as any, not guessed.
---@param matches any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.EditText result1
function _mhEditText:visibleWhen(fieldKey, expectedValue, matches) end

---@class MacroHandler.Checkbox
local _mhCheckbox = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:217
---@overload fun(value: any): MacroHandler.Checkbox
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Checkbox result1
function _mhCheckbox:checked(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:228
---@overload fun(value: any): MacroHandler.Checkbox
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Checkbox result1
function _mhCheckbox:helper(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:209
---@overload fun(value: any): MacroHandler.Checkbox
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Checkbox result1
function _mhCheckbox:id(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:214
---@overload fun(value: any): MacroHandler.Checkbox
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Checkbox result1
function _mhCheckbox:regex(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:211
---@overload fun(value: any): MacroHandler.Checkbox
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Checkbox result1
function _mhCheckbox:required(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:226
---@overload fun(value: any): MacroHandler.Checkbox
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Checkbox result1
function _mhCheckbox:text(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:230
---@overload fun(fieldKey: any, expectedValue: any, matches: any): MacroHandler.Checkbox
---@param fieldKey any Flexible native coercion; retained as any, not guessed.
---@param expectedValue any Flexible native coercion; retained as any, not guessed.
---@param matches any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Checkbox result1
function _mhCheckbox:visibleWhen(fieldKey, expectedValue, matches) end

---@class MacroHandler.RadioGroup
local _mhRadioGroup = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:265
---@overload fun(value: any): MacroHandler.RadioGroup
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.RadioGroup result1
function _mhRadioGroup:dropdown(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:283
---@overload fun(value: any): MacroHandler.RadioGroup
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.RadioGroup result1
function _mhRadioGroup:helper(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:274
---@overload fun(value: any): MacroHandler.RadioGroup
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.RadioGroup result1
function _mhRadioGroup:horizontal(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:243
---@overload fun(value: any): MacroHandler.RadioGroup
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.RadioGroup result1
function _mhRadioGroup:id(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:245
---@overload fun(value: any): MacroHandler.RadioGroup
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.RadioGroup result1
function _mhRadioGroup:radio(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:262
---@overload fun(value: any): MacroHandler.RadioGroup
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.RadioGroup result1
function _mhRadioGroup:regex(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:259
---@overload fun(value: any): MacroHandler.RadioGroup
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.RadioGroup result1
function _mhRadioGroup:required(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:247
---@overload fun(value: any): MacroHandler.RadioGroup
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.RadioGroup result1
function _mhRadioGroup:select(value) end

--- Dual-format selection hydrate: numbers resolve as LEGACY persisted indices, strings resolve by option text. Unresolvable values keep the generated default.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:256
---@overload fun(value: any): MacroHandler.RadioGroup
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.RadioGroup result1
function _mhRadioGroup:selectValue(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:285
---@overload fun(fieldKey: any, expectedValue: any, matches: any): MacroHandler.RadioGroup
---@param fieldKey any Flexible native coercion; retained as any, not guessed.
---@param expectedValue any Flexible native coercion; retained as any, not guessed.
---@param matches any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.RadioGroup result1
function _mhRadioGroup:visibleWhen(fieldKey, expectedValue, matches) end

---@class MacroHandler.MultiSelect
local _mhMultiSelect = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:311
---@overload fun(value: any): MacroHandler.MultiSelect
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.MultiSelect result1
function _mhMultiSelect:helper(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:297
---@overload fun(value: any): MacroHandler.MultiSelect
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.MultiSelect result1
function _mhMultiSelect:id(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:309
---@overload fun(value: any): MacroHandler.MultiSelect
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.MultiSelect result1
function _mhMultiSelect:label(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:302
---@overload fun(value: any): MacroHandler.MultiSelect
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.MultiSelect result1
function _mhMultiSelect:regex(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:299
---@overload fun(value: any): MacroHandler.MultiSelect
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.MultiSelect result1
function _mhMultiSelect:required(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:305
---@overload fun(value: any): MacroHandler.MultiSelect
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.MultiSelect result1
function _mhMultiSelect:select(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:313
---@overload fun(fieldKey: any, expectedValue: any, matches: any): MacroHandler.MultiSelect
---@param fieldKey any Flexible native coercion; retained as any, not guessed.
---@param expectedValue any Flexible native coercion; retained as any, not guessed.
---@param matches any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.MultiSelect result1
function _mhMultiSelect:visibleWhen(fieldKey, expectedValue, matches) end

---@class MacroHandler.TagInput
local _mhTagInput = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:336
---@overload fun(nextValue: any): MacroHandler.TagInput
---@param nextValue any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.TagInput result1
function _mhTagInput:helper(nextValue) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:324
---@overload fun(value: any): MacroHandler.TagInput
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.TagInput result1
function _mhTagInput:id(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:334
---@overload fun(nextLabel: any): MacroHandler.TagInput
---@param nextLabel any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.TagInput result1
function _mhTagInput:label(nextLabel) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:329
---@overload fun(value: any): MacroHandler.TagInput
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.TagInput result1
function _mhTagInput:regex(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:326
---@overload fun(value: any): MacroHandler.TagInput
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.TagInput result1
function _mhTagInput:required(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:332
---@overload fun(nextValue: any): MacroHandler.TagInput
---@param nextValue any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.TagInput result1
function _mhTagInput:value(nextValue) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:338
---@overload fun(fieldKey: any, expectedValue: any, matches: any): MacroHandler.TagInput
---@param fieldKey any Flexible native coercion; retained as any, not guessed.
---@param expectedValue any Flexible native coercion; retained as any, not guessed.
---@param matches any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.TagInput result1
function _mhTagInput:visibleWhen(fieldKey, expectedValue, matches) end

---@class MacroHandler.SignaturePad
local _mhSignaturePad = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:361
---@overload fun(nextValue: any): MacroHandler.SignaturePad
---@param nextValue any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.SignaturePad result1
function _mhSignaturePad:helper(nextValue) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:349
---@overload fun(value: any): MacroHandler.SignaturePad
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.SignaturePad result1
function _mhSignaturePad:id(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:359
---@overload fun(nextLabel: any): MacroHandler.SignaturePad
---@param nextLabel any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.SignaturePad result1
function _mhSignaturePad:label(nextLabel) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:354
---@overload fun(value: any): MacroHandler.SignaturePad
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.SignaturePad result1
function _mhSignaturePad:regex(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:351
---@overload fun(value: any): MacroHandler.SignaturePad
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.SignaturePad result1
function _mhSignaturePad:required(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:357
---@overload fun(nextValue: any): MacroHandler.SignaturePad
---@param nextValue any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.SignaturePad result1
function _mhSignaturePad:value(nextValue) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:363
---@overload fun(fieldKey: any, expectedValue: any, matches: any): MacroHandler.SignaturePad
---@param fieldKey any Flexible native coercion; retained as any, not guessed.
---@param expectedValue any Flexible native coercion; retained as any, not guessed.
---@param matches any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.SignaturePad result1
function _mhSignaturePad:visibleWhen(fieldKey, expectedValue, matches) end

---@class MacroHandler.ImagePicker
local _mhImagePicker = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:386
---@overload fun(value: any): MacroHandler.ImagePicker
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.ImagePicker result1
function _mhImagePicker:helper(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:374
---@overload fun(value: any): MacroHandler.ImagePicker
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.ImagePicker result1
function _mhImagePicker:id(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:384
---@overload fun(value: any): MacroHandler.ImagePicker
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.ImagePicker result1
function _mhImagePicker:label(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:382
---@overload fun(value: any): MacroHandler.ImagePicker
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.ImagePicker result1
function _mhImagePicker:name(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:379
---@overload fun(value: any): MacroHandler.ImagePicker
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.ImagePicker result1
function _mhImagePicker:regex(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:376
---@overload fun(value: any): MacroHandler.ImagePicker
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.ImagePicker result1
function _mhImagePicker:required(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:388
---@overload fun(fieldKey: any, expectedValue: any, matches: any): MacroHandler.ImagePicker
---@param fieldKey any Flexible native coercion; retained as any, not guessed.
---@param expectedValue any Flexible native coercion; retained as any, not guessed.
---@param matches any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.ImagePicker result1
function _mhImagePicker:visibleWhen(fieldKey, expectedValue, matches) end

---@class MacroHandler.ColorPicker
local _mhColorPicker = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:411
---@overload fun(value: any): MacroHandler.ColorPicker
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.ColorPicker result1
function _mhColorPicker:helper(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:399
---@overload fun(value: any): MacroHandler.ColorPicker
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.ColorPicker result1
function _mhColorPicker:id(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:409
---@overload fun(value: any): MacroHandler.ColorPicker
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.ColorPicker result1
function _mhColorPicker:label(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:404
---@overload fun(value: any): MacroHandler.ColorPicker
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.ColorPicker result1
function _mhColorPicker:regex(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:401
---@overload fun(value: any): MacroHandler.ColorPicker
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.ColorPicker result1
function _mhColorPicker:required(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:407
---@overload fun(value: any): MacroHandler.ColorPicker
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.ColorPicker result1
function _mhColorPicker:value(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:413
---@overload fun(fieldKey: any, expectedValue: any, matches: any): MacroHandler.ColorPicker
---@param fieldKey any Flexible native coercion; retained as any, not guessed.
---@param expectedValue any Flexible native coercion; retained as any, not guessed.
---@param matches any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.ColorPicker result1
function _mhColorPicker:visibleWhen(fieldKey, expectedValue, matches) end

---@class MacroHandler.NavigationEditor
local _mhNavigationEditor = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:436
---@overload fun(value: any): MacroHandler.NavigationEditor
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.NavigationEditor result1
function _mhNavigationEditor:helper(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:424
---@overload fun(value: any): MacroHandler.NavigationEditor
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.NavigationEditor result1
function _mhNavigationEditor:id(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:434
---@overload fun(value: any): MacroHandler.NavigationEditor
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.NavigationEditor result1
function _mhNavigationEditor:label(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:429
---@overload fun(value: any): MacroHandler.NavigationEditor
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.NavigationEditor result1
function _mhNavigationEditor:regex(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:426
---@overload fun(value: any): MacroHandler.NavigationEditor
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.NavigationEditor result1
function _mhNavigationEditor:required(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:432
---@overload fun(value: any): MacroHandler.NavigationEditor
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.NavigationEditor result1
function _mhNavigationEditor:value(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:438
---@overload fun(fieldKey: any, expectedValue: any, matches: any): MacroHandler.NavigationEditor
---@param fieldKey any Flexible native coercion; retained as any, not guessed.
---@param expectedValue any Flexible native coercion; retained as any, not guessed.
---@param matches any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.NavigationEditor result1
function _mhNavigationEditor:visibleWhen(fieldKey, expectedValue, matches) end

---@class MacroHandler.AgentDetectEditor
local _mhAgentDetectEditor = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:461
---@overload fun(value: any): MacroHandler.AgentDetectEditor
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.AgentDetectEditor result1
function _mhAgentDetectEditor:helper(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:449
---@overload fun(value: any): MacroHandler.AgentDetectEditor
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.AgentDetectEditor result1
function _mhAgentDetectEditor:id(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:459
---@overload fun(value: any): MacroHandler.AgentDetectEditor
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.AgentDetectEditor result1
function _mhAgentDetectEditor:label(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:454
---@overload fun(value: any): MacroHandler.AgentDetectEditor
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.AgentDetectEditor result1
function _mhAgentDetectEditor:regex(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:451
---@overload fun(value: any): MacroHandler.AgentDetectEditor
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.AgentDetectEditor result1
function _mhAgentDetectEditor:required(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:457
---@overload fun(value: any): MacroHandler.AgentDetectEditor
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.AgentDetectEditor result1
function _mhAgentDetectEditor:value(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:463
---@overload fun(fieldKey: any, expectedValue: any, matches: any): MacroHandler.AgentDetectEditor
---@param fieldKey any Flexible native coercion; retained as any, not guessed.
---@param expectedValue any Flexible native coercion; retained as any, not guessed.
---@param matches any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.AgentDetectEditor result1
function _mhAgentDetectEditor:visibleWhen(fieldKey, expectedValue, matches) end

---@class MacroHandler.FilePicker
local _mhFilePicker = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:486
---@overload fun(nextValue: any): MacroHandler.FilePicker
---@param nextValue any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.FilePicker result1
function _mhFilePicker:helper(nextValue) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:474
---@overload fun(value: any): MacroHandler.FilePicker
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.FilePicker result1
function _mhFilePicker:id(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:484
---@overload fun(nextLabel: any): MacroHandler.FilePicker
---@param nextLabel any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.FilePicker result1
function _mhFilePicker:label(nextLabel) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:479
---@overload fun(value: any): MacroHandler.FilePicker
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.FilePicker result1
function _mhFilePicker:regex(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:476
---@overload fun(value: any): MacroHandler.FilePicker
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.FilePicker result1
function _mhFilePicker:required(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:482
---@overload fun(nextValue: any): MacroHandler.FilePicker
---@param nextValue any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.FilePicker result1
function _mhFilePicker:value(nextValue) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:488
---@overload fun(fieldKey: any, expectedValue: any, matches: any): MacroHandler.FilePicker
---@param fieldKey any Flexible native coercion; retained as any, not guessed.
---@param expectedValue any Flexible native coercion; retained as any, not guessed.
---@param matches any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.FilePicker result1
function _mhFilePicker:visibleWhen(fieldKey, expectedValue, matches) end

---@class MacroHandler.DateTimePicker
local _mhDateTimePicker = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:515
---@overload fun(nextValue: any): MacroHandler.DateTimePicker
---@param nextValue any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.DateTimePicker result1
function _mhDateTimePicker:helper(nextValue) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:500
---@overload fun(value: any): MacroHandler.DateTimePicker
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.DateTimePicker result1
function _mhDateTimePicker:id(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:511
---@overload fun(nextLabel: any): MacroHandler.DateTimePicker
---@param nextLabel any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.DateTimePicker result1
function _mhDateTimePicker:label(nextLabel) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:513
---@overload fun(nextPattern: any): MacroHandler.DateTimePicker
---@param nextPattern any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.DateTimePicker result1
function _mhDateTimePicker:pattern(nextPattern) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:506
---@overload fun(value: any): MacroHandler.DateTimePicker
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.DateTimePicker result1
function _mhDateTimePicker:regex(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:502
---@overload fun(value: any): MacroHandler.DateTimePicker
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.DateTimePicker result1
function _mhDateTimePicker:required(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:509
---@overload fun(nextValue: any): MacroHandler.DateTimePicker
---@param nextValue any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.DateTimePicker result1
function _mhDateTimePicker:value(nextValue) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:517
---@overload fun(fieldKey: any, expectedValue: any, matches: any): MacroHandler.DateTimePicker
---@param fieldKey any Flexible native coercion; retained as any, not guessed.
---@param expectedValue any Flexible native coercion; retained as any, not guessed.
---@param matches any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.DateTimePicker result1
function _mhDateTimePicker:visibleWhen(fieldKey, expectedValue, matches) end

---@class MacroHandler.NumberRange
local _mhNumberRange = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:546
---@overload fun(nextValue: any): MacroHandler.NumberRange
---@param nextValue any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.NumberRange result1
function _mhNumberRange:helper(nextValue) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:530
---@overload fun(value: any): MacroHandler.NumberRange
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.NumberRange result1
function _mhNumberRange:id(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:540
---@overload fun(nextLabel: any): MacroHandler.NumberRange
---@param nextLabel any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.NumberRange result1
function _mhNumberRange:label(nextLabel) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:544
---@overload fun(nextMax: any): MacroHandler.NumberRange
---@param nextMax any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.NumberRange result1
function _mhNumberRange:max(nextMax) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:542
---@overload fun(nextMin: any): MacroHandler.NumberRange
---@param nextMin any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.NumberRange result1
function _mhNumberRange:min(nextMin) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:535
---@overload fun(value: any): MacroHandler.NumberRange
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.NumberRange result1
function _mhNumberRange:regex(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:532
---@overload fun(value: any): MacroHandler.NumberRange
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.NumberRange result1
function _mhNumberRange:required(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:538
---@overload fun(nextValue: any): MacroHandler.NumberRange
---@param nextValue any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.NumberRange result1
function _mhNumberRange:value(nextValue) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:548
---@overload fun(fieldKey: any, expectedValue: any, matches: any): MacroHandler.NumberRange
---@param fieldKey any Flexible native coercion; retained as any, not guessed.
---@param expectedValue any Flexible native coercion; retained as any, not guessed.
---@param matches any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.NumberRange result1
function _mhNumberRange:visibleWhen(fieldKey, expectedValue, matches) end

---@class MacroHandler.Slider
local _mhSlider = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:577
---@overload fun(nextValue: any): MacroHandler.Slider
---@param nextValue any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Slider result1
function _mhSlider:helper(nextValue) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:561
---@overload fun(value: any): MacroHandler.Slider
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Slider result1
function _mhSlider:id(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:571
---@overload fun(nextLabel: any): MacroHandler.Slider
---@param nextLabel any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Slider result1
function _mhSlider:label(nextLabel) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:575
---@overload fun(nextMax: any): MacroHandler.Slider
---@param nextMax any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Slider result1
function _mhSlider:max(nextMax) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:573
---@overload fun(nextMin: any): MacroHandler.Slider
---@param nextMin any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Slider result1
function _mhSlider:min(nextMin) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:566
---@overload fun(value: any): MacroHandler.Slider
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Slider result1
function _mhSlider:regex(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:563
---@overload fun(value: any): MacroHandler.Slider
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Slider result1
function _mhSlider:required(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:569
---@overload fun(nextValue: any): MacroHandler.Slider
---@param nextValue any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Slider result1
function _mhSlider:value(nextValue) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:579
---@overload fun(fieldKey: any, expectedValue: any, matches: any): MacroHandler.Slider
---@param fieldKey any Flexible native coercion; retained as any, not guessed.
---@param expectedValue any Flexible native coercion; retained as any, not guessed.
---@param matches any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Slider result1
function _mhSlider:visibleWhen(fieldKey, expectedValue, matches) end

---@class MacroHandler.Recorder
local _mhRecorder = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:602
---@overload fun(value: any): MacroHandler.Recorder
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Recorder result1
function _mhRecorder:helper(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:590
---@overload fun(value: any): MacroHandler.Recorder
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Recorder result1
function _mhRecorder:id(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:600
---@overload fun(value: any): MacroHandler.Recorder
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Recorder result1
function _mhRecorder:label(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:598
---@overload fun(value: any): MacroHandler.Recorder
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Recorder result1
function _mhRecorder:name(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:595
---@overload fun(value: any): MacroHandler.Recorder
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Recorder result1
function _mhRecorder:regex(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:592
---@overload fun(value: any): MacroHandler.Recorder
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Recorder result1
function _mhRecorder:required(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:604
---@overload fun(fieldKey: any, expectedValue: any, matches: any): MacroHandler.Recorder
---@param fieldKey any Flexible native coercion; retained as any, not guessed.
---@param expectedValue any Flexible native coercion; retained as any, not guessed.
---@param matches any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Recorder result1
function _mhRecorder:visibleWhen(fieldKey, expectedValue, matches) end

---@class MacroHandler.TabLayout
local _mhTabLayout = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:695
---@overload fun(value: any): MacroHandler.TabLayout
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.TabLayout result1
function _mhTabLayout:helper(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:624
---@overload fun(value: any): MacroHandler.TabLayout
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.TabLayout result1
function _mhTabLayout:id(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:633
---@overload fun(value: any): MacroHandler.TabLayout
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.TabLayout result1
function _mhTabLayout:regex(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:630
---@overload fun(value: any): MacroHandler.TabLayout
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.TabLayout result1
function _mhTabLayout:required(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:692
---@overload fun(value: any): MacroHandler.TabLayout
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.TabLayout result1
function _mhTabLayout:saveSelected(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:687
---@overload fun(value: any): MacroHandler.TabLayout
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.TabLayout result1
function _mhTabLayout:select(value) end

--- See [CompatRadioGroup.selectValue]: dual-format (legacy index / tab text) hydrate.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:627
---@overload fun(value: any): MacroHandler.TabLayout
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.TabLayout result1
function _mhTabLayout:selectValue(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:639
---@overload fun(self: MacroHandler.TabLayout, value: any, visibleIds: any): MacroHandler.TabLayout
---@overload fun(self: MacroHandler.TabLayout, value: any, visibleIds: any, hiddenIds: any): MacroHandler.TabLayout
---@overload fun(self: MacroHandler.TabLayout, value: any, visibleIds: any, hiddenIds: any, hideOtherViews: any): MacroHandler.TabLayout
---@overload fun(value: any): MacroHandler.TabLayout
---@overload fun(value: any, visibleIds: any): MacroHandler.TabLayout
---@overload fun(value: any, visibleIds: any, hiddenIds: any): MacroHandler.TabLayout
---@overload fun(value: any, visibleIds: any, hiddenIds: any, hideOtherViews: any): MacroHandler.TabLayout
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.TabLayout result1
function _mhTabLayout:tab(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatDialogFieldTypes.kt:697
---@overload fun(fieldKey: any, expectedValue: any, matches: any): MacroHandler.TabLayout
---@param fieldKey any Flexible native coercion; retained as any, not guessed.
---@param expectedValue any Flexible native coercion; retained as any, not guessed.
---@param matches any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.TabLayout result1
function _mhTabLayout:visibleWhen(fieldKey, expectedValue, matches) end

---@class MacroHandler.GesturePoint
local _mhGesturePoint = {}

---@class MacroHandler.AsyncPromise
local _mhAsyncPromise = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaAsyncApi.kt:39
---@overload fun(timeoutMs?: number): boolean, any
---@param timeoutMs? number
---@return boolean result1
---@return any result2
function _mhAsyncPromise:await(timeoutMs) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaAsyncApi.kt:70
---@overload fun(): boolean
---@return boolean result1
function _mhAsyncPromise:cancel() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaAsyncApi.kt:306
---@overload fun(defaultValue?: any): any
---@param defaultValue? any
---@return any result1
function _mhAsyncPromise:get(defaultValue) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaAsyncApi.kt:296
---@overload fun(): boolean
---@return boolean result1
function _mhAsyncPromise:isCancelled() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaAsyncApi.kt:292
---@overload fun(): boolean
---@return boolean result1
function _mhAsyncPromise:isDone() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaAsyncApi.kt:282
---@overload fun(reason: string): boolean
---@param reason string
---@return boolean result1
function _mhAsyncPromise:reject(reason) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaAsyncApi.kt:276
---@overload fun(value: any): boolean
---@param value any
---@return boolean result1
function _mhAsyncPromise:resolve(value) end

---@class MacroHandler.WebSocketSession
local _mhWebSocketSession = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:813
---@overload fun(): table
---@return table result1
function _mhWebSocketSession:close() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:938
---@overload fun(): boolean
---@return boolean result1
function _mhWebSocketSession:isOpen() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:872
---@overload fun(idOrName: integer|string): boolean
---@param idOrName integer|string
---@return boolean result1
function _mhWebSocketSession:off(idOrName) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:864
---@overload fun(event: MacroHandler.WebSocketEventName, handler: (fun(...: any): any)): integer
---@param event MacroHandler.WebSocketEventName
---@param handler fun(...: any): any
---@return integer result1
function _mhWebSocketSession:on(event, handler) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:868
---@overload fun(event: MacroHandler.WebSocketEventName, handler: (fun(...: any): any)): integer
---@param event MacroHandler.WebSocketEventName
---@param handler fun(...: any): any
---@return integer result1
function _mhWebSocketSession:once(event, handler) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:914
---@overload fun(timeoutMs?: integer): table|nil
---@param timeoutMs? integer
---@return table|nil result1
function _mhWebSocketSession:receive(timeoutMs) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:897
---@overload fun(message: any): MacroHandler.WebSocketSession
---@param message any
---@return MacroHandler.WebSocketSession result1
function _mhWebSocketSession:send(message) end
