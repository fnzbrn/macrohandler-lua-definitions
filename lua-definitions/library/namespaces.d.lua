---@meta
-- Namespace and constructor declarations, not runtime implementations.

---@class MacroHandler.TouchAPI
Touch = {}

--- Releases all active touch pointers and resets touch host state. Kept separate for no-code TOUCH_BREAK semantics clarity.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTouchHost.kt:1442
---@overload fun(self: MacroHandler.TouchAPI)
---@return nil result1
function Touch.breakAll() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTouchHost.kt:1741
---@overload fun(self: MacroHandler.TouchAPI): boolean
---@return boolean result1
function Touch.cancelSequence() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTouchHost.kt:1087
---@overload fun(self: MacroHandler.TouchAPI): boolean
---@return boolean result1
function Touch.dispatch() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTouchHost.kt:774
---@overload fun(self: MacroHandler.TouchAPI, point: any, id?: any): boolean
---@param point any Flexible native coercion; retained as any, not guessed.
---@param id? any Kotlin default: 0. Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function Touch.down(point, id) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTouchHost.kt:1853
---@overload fun(self: MacroHandler.TouchAPI, from: any, to: any, ratio?: any): MacroHandler.Point
---@param from any Flexible native coercion; retained as any, not guessed.
---@param to any Flexible native coercion; retained as any, not guessed.
---@param ratio? any Kotlin default: 0.5. Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.Point result1
function Touch.getBetween(from, to, ratio) end

--- Touch Break / reset: retry a parked quarantine, stop every lane and confirm the lift (bounded). False only when a lift of THIS run could not be confirmed (`cleanup_failed`). / private fun stopLanesAndConfirm(): Boolean { runCatching { laneOwnership.retryQuarantine() } awaitLanesEnded(lanes.stopAll()) return !lanes.anyCleanupFailed() } // ---- Gesture lanes: Touch.lane (docs/gesture-lanes-contract.md) ---- / Stages one finger or path; a failure poisons the staging buffer for the next [laneStart]. The four trailing arguments shape a back-and-forth lane (contract "Back-and-forth shape"); a nil or omitted one is its default (returnMs 0 = legMs, returnPct 100, no waits).
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTouchHost.kt:1465
---@overload fun(self: MacroHandler.TouchAPI, from: any, to: any, legMs?: any, legs?: any, turn?: any, finish?: any, returnMs?: any, returnPct?: any, holdAtForwardMs?: any, holdAtReturnMs?: any): boolean
---@param from any Flexible native coercion; retained as any, not guessed.
---@param to any Flexible native coercion; retained as any, not guessed.
---@param legMs? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@param legs? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@param turn? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@param finish? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@param returnMs? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@param returnPct? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@param holdAtForwardMs? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@param holdAtReturnMs? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function Touch.laneAdd(from, to, legMs, legs, turn, finish, returnMs, returnPct, holdAtForwardMs, holdAtReturnMs) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTouchHost.kt:1541
---@overload fun(self: MacroHandler.TouchAPI): string
---@return string result1
function Touch.laneError() end

--- A nil or omitted shape argument is its default; anything else must convert to a number. / private fun laneShapeArgument(value: Any?, default: Double): Double = if (value.unwrapLuaValue() == null) default else asDoubleConverter(value, Double.NaN) / Commits the staged lanes as one group (see the contract for the return value). / @JvmOverloads fun laneStart( tag: Any?, background: Any? = null, maxRunMs: Any? = 0, order: Any? = null, ): Boolean = startLanes( tag = tag.unwrapLuaValue() as? String, background = background.unwrapLuaValue() as? Boolean, maxRunMs = if (maxRunMs.unwrapLuaValue() == null) 0.0 else asDoubleConverter(maxRunMs, Double.NaN), order = order.unwrapLuaValue() as? String, allowReservedTag = false, specs = null, ) / `""` releases every group, `"prefix"` a family, otherwise one tag; 0 lifts now.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTouchHost.kt:1523
---@overload fun(self: MacroHandler.TouchAPI, tag: any, delayMs?: any): boolean
---@param tag any Flexible native coercion; retained as any, not guessed.
---@param delayMs? any Kotlin default: 0. Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function Touch.laneRelease(tag, delayMs) end

--- A nil or omitted shape argument is its default; anything else must convert to a number. / private fun laneShapeArgument(value: Any?, default: Double): Double = if (value.unwrapLuaValue() == null) default else asDoubleConverter(value, Double.NaN) / Commits the staged lanes as one group (see the contract for the return value).
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTouchHost.kt:1507
---@overload fun(self: MacroHandler.TouchAPI, tag: any, background?: any, maxRunMs?: any, order?: any): boolean
---@param tag any Flexible native coercion; retained as any, not guessed.
---@param background? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@param maxRunMs? any Kotlin default: 0. Flexible native coercion; retained as any, not guessed.
---@param order? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function Touch.laneStart(tag, background, maxRunMs, order) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTouchHost.kt:1536
---@overload fun(self: MacroHandler.TouchAPI, tag: any): string
---@param tag any Flexible native coercion; retained as any, not guessed.
---@return string result1
function Touch.laneStatus(tag) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTouchHost.kt:883
---@overload fun(self: MacroHandler.TouchAPI, point: any, id?: any): boolean
---@param point any Flexible native coercion; retained as any, not guessed.
---@param id? any Kotlin default: 0. Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function Touch.move(point, id) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTouchHost.kt:743
---@overload fun(self: MacroHandler.TouchAPI): boolean
---@return boolean result1
function Touch.multi() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTouchHost.kt:1794
---@overload fun(self: MacroHandler.TouchAPI, center: any, startDistance: any, endDistance: any, durationMs?: any, angleDeg?: any): boolean
---@param center any Flexible native coercion; retained as any, not guessed.
---@param startDistance any Flexible native coercion; retained as any, not guessed.
---@param endDistance any Flexible native coercion; retained as any, not guessed.
---@param durationMs? any Kotlin default: 250. Flexible native coercion; retained as any, not guessed.
---@param angleDeg? any Kotlin default: 0. Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function Touch.pinch(center, startDistance, endDistance, durationMs, angleDeg) end

--- TODO: expression return requires manual bridge tracing; return kept as any.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTouchHost.kt:860
---@overload fun(self: MacroHandler.TouchAPI, durationMs?: any): any
---@param durationMs? any Kotlin default: 0. Flexible native coercion; retained as any, not guessed.
---@return any result1
function Touch.releaseAfter(durationMs) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTouchHost.kt:1407
---@overload fun(self: MacroHandler.TouchAPI)
---@return nil result1
function Touch.reset() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTouchHost.kt:1826
---@overload fun(self: MacroHandler.TouchAPI, center: any, radius: any, degrees: any, durationMs?: any, startAngleDeg?: any): boolean
---@param center any Flexible native coercion; retained as any, not guessed.
---@param radius any Flexible native coercion; retained as any, not guessed.
---@param degrees any Flexible native coercion; retained as any, not guessed.
---@param durationMs? any Kotlin default: 300. Flexible native coercion; retained as any, not guessed.
---@param startAngleDeg? any Kotlin default: 0. Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function Touch.rotate(center, radius, degrees, durationMs, startAngleDeg) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTouchHost.kt:1747
---@overload fun(self: MacroHandler.TouchAPI): string
---@return string result1
function Touch.sequenceStatus() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTouchHost.kt:711
---@overload fun(self: MacroHandler.TouchAPI): boolean
---@return boolean result1
function Touch.single() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTouchHost.kt:1751
---@overload fun(self: MacroHandler.TouchAPI, from: any, to: any, durationMs?: any): boolean
---@param from any Flexible native coercion; retained as any, not guessed.
---@param to any Flexible native coercion; retained as any, not guessed.
---@param durationMs? any Kotlin default: 200. Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function Touch.swipe(from, to, durationMs) end

--- Legacy adapter (contract "Legacy adapter"): keeps its argument checks and runs `laneAdd(from, to, durationMs, repeatCount, pingPong ? "reverse" : "restart", "release")` plus `laneStart("seq", background, 0)`. Held legacy pointers are adopted instead of refusing the start. Background true means accepted and pressed; use sequenceStatus() for the eventual terminal result.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTouchHost.kt:1707
---@overload fun(self: MacroHandler.TouchAPI, from: any, to: any, durationMs: any, repeatCount: any, pingPong: any, background: any): boolean
---@param from any Flexible native coercion; retained as any, not guessed.
---@param to any Flexible native coercion; retained as any, not guessed.
---@param durationMs any Flexible native coercion; retained as any, not guessed.
---@param repeatCount any Flexible native coercion; retained as any, not guessed.
---@param pingPong any Flexible native coercion; retained as any, not guessed.
---@param background any Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function Touch.swipeSequence(from, to, durationMs, repeatCount, pingPong, background) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTouchHost.kt:1016
---@overload fun(self: MacroHandler.TouchAPI, id?: any): boolean
---@param id? any Kotlin default: 0. Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function Touch.up(id) end

---@class MacroHandler.SystemAPI
System = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:117
---@overload fun(self: MacroHandler.SystemAPI, value: any)
---@param value any Flexible native coercion; retained as any, not guessed.
---@return nil result1
function System.alert(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:894
---@overload fun(self: MacroHandler.SystemAPI): boolean
---@return boolean result1
function System.back() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:1266
---@overload fun(self: MacroHandler.SystemAPI, timerId: any): boolean
---@param timerId any Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function System.clearInterval(timerId) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:1295
---@overload fun(self: MacroHandler.SystemAPI): boolean
---@return boolean result1
function System.clearSchedule() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:1227
---@overload fun(self: MacroHandler.SystemAPI, timerId: any): boolean
---@param timerId any Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function System.clearTimeout(timerId) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:912
---@overload fun(self: MacroHandler.SystemAPI, pkg: any): boolean
---@param pkg any Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function System.closeApp(pkg) end

--- TODO: expression return requires manual bridge tracing; return kept as any.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:967
---@overload fun(self: MacroHandler.SystemAPI, text: any): any
---@param text any Flexible native coercion; retained as any, not guessed.
---@return any result1
function System.copyToClipboard(text) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:611
---@overload fun(self: MacroHandler.SystemAPI): string
---@return string result1
function System.currentPackage() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:102
---@overload fun(self: MacroHandler.SystemAPI): number
---@return number result1
function System.currentTime() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:455
---@overload fun(self: MacroHandler.SystemAPI): string
---@return string result1
function System.currentVersion() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:501
---@overload fun(self: MacroHandler.SystemAPI): boolean
---@return boolean result1
function System.darkMode() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:463
---@overload fun(self: MacroHandler.SystemAPI): integer
---@return integer result1
function System.dpi() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:105
---@overload fun(self: MacroHandler.SystemAPI, start?: any): number
---@param start? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return number result1
function System.elapsedTime(start) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:132
---@overload fun(self: MacroHandler.SystemAPI, value: any)
---@param value any Flexible native coercion; retained as any, not guessed.
---@return nil result1
function System.err(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:606
---@overload fun(self: MacroHandler.SystemAPI): string|nil
---@return string|nil result1
function System.foregroundApp() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:1335
---@overload fun(self: MacroHandler.SystemAPI): integer
---@return integer result1
function System.getBatteryLevel() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:981
---@overload fun(self: MacroHandler.SystemAPI): string
---@return string result1
function System.getFromClipboard() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:487
---@deprecated Use the canonical alias documented in docs/lua_api_alias_policy.md.
---@overload fun(self: MacroHandler.SystemAPI): number
---@return number result1
function System.getHeight() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:1345
---@overload fun(self: MacroHandler.SystemAPI): string
---@return string result1
function System.getPackageName() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:491
---@overload fun(self: MacroHandler.SystemAPI): number
---@return number result1
function System.getScreenHeight() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:489
---@overload fun(self: MacroHandler.SystemAPI): number
---@return number result1
function System.getScreenWidth() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:481
---@deprecated Use the canonical alias documented in docs/lua_api_alias_policy.md.
---@overload fun(self: MacroHandler.SystemAPI): number
---@return number result1
function System.getWidth() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:580
---@overload fun(self: MacroHandler.SystemAPI, action: any): boolean
---@param action any Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function System.globalAction(action) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:475
---@overload fun(self: MacroHandler.SystemAPI): number
---@return number result1
function System.height() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:893
---@overload fun(self: MacroHandler.SystemAPI): boolean
---@return boolean result1
function System.home() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:323
---@overload fun(self: MacroHandler.SystemAPI, property?: any): any
---@param property? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return any result1
function System.info(property) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:566
---@overload fun(self: MacroHandler.SystemAPI, value: any): boolean
---@param value any Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function System.inputText(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:929
---@overload fun(self: MacroHandler.SystemAPI, pkg: any): boolean
---@param pkg any Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function System.isAppInstalled(pkg) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:1340
---@overload fun(self: MacroHandler.SystemAPI): boolean
---@return boolean result1
function System.isCharging() end

--- Pause the running script from Lua. Execution will freeze at the next instruction hook check until `System.resume()` is called or the user resumes from the overlay panel. / fun pause() { val engine = ctx as? LuaScriptEngine ?: return engine.requestPause() RuntimeStateHub.publishPaused(true) logger("Script paused via System.pause()") } / Resume a paused script from Lua (e.g. from a HUD click callback running on a separate coroutine/timer). Normally resume is triggered by overlay panel. / fun resume() { val engine = ctx as? LuaScriptEngine ?: return engine.requestResume() RuntimeStateHub.publishPaused(false) logger("Script resumed via System.resume()") } / Returns true if the script is currently in a paused state.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:195
---@overload fun(self: MacroHandler.SystemAPI): boolean
---@return boolean result1
function System.isPaused() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:903
---@overload fun(self: MacroHandler.SystemAPI): boolean
---@return boolean result1
function System.isScreenOn() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:602
---@overload fun(self: MacroHandler.SystemAPI, key: any): boolean
---@param key any Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function System.keyevent(key) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:461
---@overload fun(self: MacroHandler.SystemAPI): string
---@return string result1
function System.lang() end

--- TODO: Lua payload shape/arity is not narrowed unless separately traced.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:146
---@overload fun(self: MacroHandler.SystemAPI): any
---@return any result1
function System.lastScanError() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:900
--- Policy-blocked in ScriptPolicyGuard; retained for compatibility diagnostics.
---@deprecated Blocked by the runtime script policy.
---@overload fun(self: MacroHandler.SystemAPI): boolean
---@return boolean result1
function System.lockScreen() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:128
---@overload fun(self: MacroHandler.SystemAPI, value: any)
---@param value any Flexible native coercion; retained as any, not guessed.
---@return nil result1
function System.log(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:140
---@overload fun(self: MacroHandler.SystemAPI, value: any)
---@param value any Flexible native coercion; retained as any, not guessed.
---@return nil result1
function System.noti(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:896
---@overload fun(self: MacroHandler.SystemAPI): boolean
---@return boolean result1
function System.notifications() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:527
---@overload fun(self: MacroHandler.SystemAPI, pkg: any, activity?: any): boolean
---@param pkg any Flexible native coercion; retained as any, not guessed.
---@param activity? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function System.openApp(pkg, activity) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:506
---@overload fun(self: MacroHandler.SystemAPI, url: any): boolean
---@param url any Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function System.openUrl(url) end

--- Pause the running script from Lua. Execution will freeze at the next instruction hook check until `System.resume()` is called or the user resumes from the overlay panel. TODO: expression return requires manual bridge tracing; return kept as any.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:176
---@overload fun(self: MacroHandler.SystemAPI): any
---@return any result1
function System.pause() end

--- TODO: expression return requires manual bridge tracing; return kept as any.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:201
---@overload fun(self: MacroHandler.SystemAPI, name: any, duration?: any, interval?: any, repeat_?: any): any
---@param name any Flexible native coercion; retained as any, not guessed.
---@param duration? any Kotlin default: -1. Flexible native coercion; retained as any, not guessed.
---@param interval? any Kotlin default: 0. Flexible native coercion; retained as any, not guessed.
---@param repeat_? any Kotlin default: 1. Flexible native coercion; retained as any, not guessed.
---@return any result1
function System.playMedia(name, duration, interval, repeat_) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:899
--- Policy-blocked in ScriptPolicyGuard; retained for compatibility diagnostics.
---@deprecated Blocked by the runtime script policy.
---@overload fun(self: MacroHandler.SystemAPI): boolean
---@return boolean result1
function System.powerDialog() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:594
---@overload fun(self: MacroHandler.SystemAPI, key: any): boolean
---@param key any Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function System.pressKey(key) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:897
---@overload fun(self: MacroHandler.SystemAPI): boolean
---@return boolean result1
function System.quickSettings() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:999
--- Policy-blocked in ScriptPolicyGuard; retained for compatibility diagnostics.
---@deprecated Blocked by the runtime script policy.
---@overload fun(self: MacroHandler.SystemAPI): boolean
---@return boolean result1
function System.reboot() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:895
---@overload fun(self: MacroHandler.SystemAPI): boolean
---@return boolean result1
function System.recents() end

--- IS-B (preview-only): tek-blok ekran-rehberi PLAY/TEST kosusu sonunda arama blogunun eslesme bulup bulmadigini RUNTIME_PREFS'e yazar (found=true / not-found=false). SADECE generatePreviewRuntimeCode'un urettigi preview script'i (arama-tipi blok) bu metodu cagirir; normal makro script'i icermez (codegen-gate). error-path'ten BAGIMSIZ: RuntimeStateHub/UI tetiklemez, yalnizca pref yazar. Host (resolveScreenGuideOneShotSuccessFromRuntimePrefs) okur.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:162
---@overload fun(self: MacroHandler.SystemAPI, found: any)
---@param found any Flexible native coercion; retained as any, not guessed.
---@return nil result1
function System.reportPreviewMatch(found) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:497
---@overload fun(self: MacroHandler.SystemAPI): string
---@return string result1
function System.resolution() end

--- Pause the running script from Lua. Execution will freeze at the next instruction hook check until `System.resume()` is called or the user resumes from the overlay panel. / fun pause() { val engine = ctx as? LuaScriptEngine ?: return engine.requestPause() RuntimeStateHub.publishPaused(true) logger("Script paused via System.pause()") } / Resume a paused script from Lua (e.g. from a HUD click callback running on a separate coroutine/timer). Normally resume is triggered by overlay panel. TODO: expression return requires manual bridge tracing; return kept as any.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:187
---@overload fun(self: MacroHandler.SystemAPI): any
---@return any result1
function System.resume() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:1186
---@overload fun(self: MacroHandler.SystemAPI, delayMs: any, action: any): boolean
---@param delayMs any Flexible native coercion; retained as any, not guessed.
---@param action any Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function System.schedule(delayMs, action) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:1269
---@overload fun(self: MacroHandler.SystemAPI, hour: any, minute?: any): boolean
---@param hour any Flexible native coercion; retained as any, not guessed.
---@param minute? any Kotlin default: 0. Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function System.scheduleDaily(hour, minute) end

--- TODO: Lua payload shape/arity is not narrowed unless separately traced.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:1307
---@overload fun(self: MacroHandler.SystemAPI): table
---@return table result1
function System.scheduleInfo() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:1284
---@overload fun(self: MacroHandler.SystemAPI, minutes: any): boolean
---@param minutes any Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function System.scheduleInterval(minutes) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:495
---@overload fun(self: MacroHandler.SystemAPI): number
---@return number result1
function System.screenHeight() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:910
--- Policy-blocked in ScriptPolicyGuard; retained for compatibility diagnostics.
---@deprecated Blocked by the runtime script policy.
---@overload fun(self: MacroHandler.SystemAPI): boolean
---@return boolean result1
function System.screenOff() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:908
---@overload fun(self: MacroHandler.SystemAPI): boolean
---@return boolean result1
function System.screenOn() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:493
---@overload fun(self: MacroHandler.SystemAPI): number
---@return number result1
function System.screenWidth() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:459
---@overload fun(self: MacroHandler.SystemAPI): integer
---@return integer result1
function System.sdk() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:1127
---@overload fun(self: MacroHandler.SystemAPI, action?: any, packageName?: any, className?: any, data?: any, extras?: any): boolean
---@param action? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@param packageName? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@param className? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@param data? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@param extras? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function System.sendIntent(action, packageName, className, data, extras) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:465
---@overload fun(self: MacroHandler.SystemAPI, value: any)
---@param value any Flexible native coercion; retained as any, not guessed.
---@return nil result1
function System.setControlOpacity(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:1229
---@overload fun(self: MacroHandler.SystemAPI, intervalMs: any, action: any): integer
---@param intervalMs any Flexible native coercion; retained as any, not guessed.
---@param action any Flexible native coercion; retained as any, not guessed.
---@return integer result1
function System.setInterval(intervalMs, action) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:1195
---@overload fun(self: MacroHandler.SystemAPI, delayMs: any, action: any): integer
---@param delayMs any Flexible native coercion; retained as any, not guessed.
---@param action any Flexible native coercion; retained as any, not guessed.
---@return integer result1
function System.setTimeout(delayMs, action) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:898
---@overload fun(self: MacroHandler.SystemAPI): boolean
---@return boolean result1
function System.splitScreen() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:885
---@overload fun(self: MacroHandler.SystemAPI)
---@return nil result1
function System.stop() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:901
---@overload fun(self: MacroHandler.SystemAPI): boolean
---@return boolean result1
function System.takeScreenshot() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:111
---@overload fun(self: MacroHandler.SystemAPI, value: any)
---@param value any Flexible native coercion; retained as any, not guessed.
---@return nil result1
function System.toast(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:617
---@overload fun(self: MacroHandler.SystemAPI, feature: any, enabled?: any): boolean
---@param feature any Flexible native coercion; retained as any, not guessed.
---@param enabled? any Kotlin default: true. Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function System.toggleFeature(feature, enabled) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:578
---@overload fun(self: MacroHandler.SystemAPI, value: any): boolean
---@param value any Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function System.typeText(value) end

--- TODO: expression return requires manual bridge tracing; return kept as any.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:939
---@overload fun(self: MacroHandler.SystemAPI, durationMs?: any): any
---@param durationMs? any Kotlin default: 200. Flexible native coercion; retained as any, not guessed.
---@return any result1
function System.vibrate(durationMs) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:862
---@overload fun(self: MacroHandler.SystemAPI): boolean
---@return boolean result1
function System.wake() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:473
---@overload fun(self: MacroHandler.SystemAPI): number
---@return number result1
function System.width() end

---@class MacroHandler.UiAPI
Ui = {}

--- TODO: Lua payload shape/arity is not narrowed unless separately traced.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatUiNodeHost.kt:32
---@overload fun(self: MacroHandler.UiAPI, id: any): any
---@param id any Flexible native coercion; retained as any, not guessed.
---@return any result1
function Ui.allById(id) end

--- TODO: Lua payload shape/arity is not narrowed unless separately traced.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatUiNodeHost.kt:29
---@overload fun(self: MacroHandler.UiAPI, text: any, caseSensitive?: any): any
---@param text any Flexible native coercion; retained as any, not guessed.
---@param caseSensitive? any Kotlin default: false. Flexible native coercion; retained as any, not guessed.
---@return any result1
function Ui.allByText(text, caseSensitive) end

--- TODO: Lua payload shape/arity is not narrowed unless separately traced.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatUiNodeHost.kt:25
---@overload fun(self: MacroHandler.UiAPI, id: any): any
---@param id any Flexible native coercion; retained as any, not guessed.
---@return any result1
function Ui.byId(id) end

--- TODO: Lua payload shape/arity is not narrowed unless separately traced.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatUiNodeHost.kt:22
---@overload fun(self: MacroHandler.UiAPI, text: any, caseSensitive?: any): any
---@param text any Flexible native coercion; retained as any, not guessed.
---@param caseSensitive? any Kotlin default: false. Flexible native coercion; retained as any, not guessed.
---@return any result1
function Ui.byText(text, caseSensitive) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatUiNodeHost.kt:35
---@overload fun(self: MacroHandler.UiAPI, nodeOrSelector: any): boolean
---@param nodeOrSelector any Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function Ui.click(nodeOrSelector) end

--- TODO: Lua payload shape/arity is not narrowed unless separately traced.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatUiNodeHost.kt:14
---@overload fun(self: MacroHandler.UiAPI, selector: any): any
---@param selector any Flexible native coercion; retained as any, not guessed.
---@return any result1
function Ui.findNode(selector) end

---@class MacroHandler.AsyncAPI
Async = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaAsyncApi.kt:86
---@overload fun(self: MacroHandler.AsyncAPI): integer
---@return integer result1
function Async.activeCount() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaAsyncApi.kt:39
---@overload fun(self: MacroHandler.AsyncAPI, promise: MacroHandler.AsyncPromise, timeoutMs?: number): boolean, any
---@param promise MacroHandler.AsyncPromise
---@param timeoutMs? number
---@return boolean result1
---@return any result2
function Async.await(promise, timeoutMs) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaAsyncApi.kt:70
---@overload fun(self: MacroHandler.AsyncAPI, timerId: integer): boolean
---@param timerId integer
---@return boolean result1
function Async.cancel(timerId) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaAsyncApi.kt:76
---@overload fun(self: MacroHandler.AsyncAPI): integer
---@return integer result1
function Async.cancelAll() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaAsyncApi.kt:48
---@overload fun(self: MacroHandler.AsyncAPI, delayMs: number, action: (fun(): any)): integer
---@param delayMs number
---@param action fun(): any
---@return integer result1
function Async.defer(delayMs, action) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaAsyncApi.kt:59
---@overload fun(self: MacroHandler.AsyncAPI, intervalMs: number, action: (fun(): any)): integer
---@param intervalMs number
---@param action fun(): any
---@return integer result1
function Async.every(intervalMs, action) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaAsyncApi.kt:80
---@overload fun(self: MacroHandler.AsyncAPI, timerId: integer): boolean
---@param timerId integer
---@return boolean result1
function Async.isActive(timerId) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaAsyncApi.kt:35
---@overload fun(self: MacroHandler.AsyncAPI): MacroHandler.AsyncPromise
---@return MacroHandler.AsyncPromise result1
function Async.promise() end

---@class MacroHandler.SnapAPI
Snap = {}

--- TODO: expression return requires manual bridge tracing; return kept as any.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatCacheHost.kt:152
---@overload fun(self: MacroHandler.SnapAPI): any
---@return any result1
function Snap.clear() end

--- TODO: expression return requires manual bridge tracing; return kept as any.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatCacheHost.kt:144
---@overload fun(self: MacroHandler.SnapAPI): any
---@return any result1
function Snap.clearImage() end

--- TODO: expression return requires manual bridge tracing; return kept as any.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatCacheHost.kt:150
---@overload fun(self: MacroHandler.SnapAPI): any
---@return any result1
function Snap.clearRegion() end

--- TODO: expression return requires manual bridge tracing; return kept as any.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatCacheHost.kt:160
---@overload fun(self: MacroHandler.SnapAPI): any
---@return any result1
function Snap.loadColor() end

--- TODO: expression return requires manual bridge tracing; return kept as any.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatCacheHost.kt:162
---@overload fun(self: MacroHandler.SnapAPI): any
---@return any result1
function Snap.loadVars() end

--- TODO: expression return requires manual bridge tracing; return kept as any.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatCacheHost.kt:122
---@overload fun(self: MacroHandler.SnapAPI, region: any): any
---@param region any Flexible native coercion; retained as any, not guessed.
---@return any result1
function Snap.region(region) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatCacheHost.kt:136
---@overload fun(self: MacroHandler.SnapAPI)
---@return nil result1
function Snap.regionOff() end

--- TODO: expression return requires manual bridge tracing; return kept as any.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatCacheHost.kt:142
---@overload fun(self: MacroHandler.SnapAPI): any
---@return any result1
function Snap.regionRefresh() end

--- TODO: expression return requires manual bridge tracing; return kept as any.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatCacheHost.kt:90
---@overload fun(self: MacroHandler.SnapAPI): any
---@return any result1
function Snap.screen() end

--- TODO: expression return requires manual bridge tracing; return kept as any.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatCacheHost.kt:97
---@overload fun(self: MacroHandler.SnapAPI): any
---@return any result1
function Snap.screenOff() end

--- TODO: expression return requires manual bridge tracing; return kept as any.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatCacheHost.kt:104
---@overload fun(self: MacroHandler.SnapAPI): any
---@return any result1
function Snap.screenRefresh() end

---@class MacroHandler.NumAPI
Num = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatMathHosts.kt:166
---@overload fun(self: MacroHandler.NumAPI, value: any): number
---@param value any Flexible native coercion; retained as any, not guessed.
---@return number result1
function Num.abs(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatMathHosts.kt:170
---@overload fun(self: MacroHandler.NumAPI, value: any): number
---@param value any Flexible native coercion; retained as any, not guessed.
---@return number result1
function Num.ceil(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatMathHosts.kt:114
---@overload fun(self: MacroHandler.NumAPI, value: any, def?: any): number
---@param value any Flexible native coercion; retained as any, not guessed.
---@param def? any Kotlin default: 0.0. Flexible native coercion; retained as any, not guessed.
---@return number result1
function Num.evalOcrMath(value, def) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatMathHosts.kt:171
---@overload fun(self: MacroHandler.NumAPI, value: any): number
---@param value any Flexible native coercion; retained as any, not guessed.
---@return number result1
function Num.floor(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatMathHosts.kt:167
---@overload fun(self: MacroHandler.NumAPI, a: any, b: any): number
---@param a any Flexible native coercion; retained as any, not guessed.
---@param b any Flexible native coercion; retained as any, not guessed.
---@return number result1
function Num.max(a, b) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatMathHosts.kt:168
---@overload fun(self: MacroHandler.NumAPI, a: any, b: any): number
---@param a any Flexible native coercion; retained as any, not guessed.
---@param b any Flexible native coercion; retained as any, not guessed.
---@return number result1
function Num.min(a, b) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatMathHosts.kt:40
---@overload fun(self: MacroHandler.NumAPI, value: any, def?: any): number
---@param value any Flexible native coercion; retained as any, not guessed.
---@param def? any Kotlin default: 0.0. Flexible native coercion; retained as any, not guessed.
---@return number result1
function Num.parse(value, def) end

--- Macro-console sink, mirroring `RegionTextReadHelper.logNumericReadFallback`. Null-able so this host stays free of Android types and unit-testable; production never leaves it null. / private val logger: ((String) -> Unit)? = null, ) { @JvmOverloads fun parse(value: Any?, def: Any? = 0.0): Double { return value.toString().toDoubleOrNull() ?: def.toDoubleCompat(0.0) } / `Num.parseOcr` used to swallow a failed read with a bare `parsed.value ?: def` — no metric, no log. A macro that could not read the number on screen silently received the default and carried on comparing against it, which is indistinguishable from a genuine reading of that default. Reporting now matches [com.macrohandler.app.runtime.RegionTextReadHelper.readAsNumber]: the same `ocrNumericReadCount` metrics, plus a console line when a logger is wired.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatMathHosts.kt:52
---@overload fun(self: MacroHandler.NumAPI, value: any, def?: any): number
---@param value any Flexible native coercion; retained as any, not guessed.
---@param def? any Kotlin default: 0.0. Flexible native coercion; retained as any, not guessed.
---@return number result1
function Num.parseOcr(value, def) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatMathHosts.kt:152
---@overload fun(self: MacroHandler.NumAPI, value: any, decimals?: any): number
---@param value any Flexible native coercion; retained as any, not guessed.
---@param decimals? any Kotlin default: 2. Flexible native coercion; retained as any, not guessed.
---@return number result1
function Num.precise(value, decimals) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatMathHosts.kt:159
---@overload fun(self: MacroHandler.NumAPI, min?: any, max?: any): number
---@param min? any Kotlin default: 0.0. Flexible native coercion; retained as any, not guessed.
---@param max? any Kotlin default: 1.0. Flexible native coercion; retained as any, not guessed.
---@return number result1
function Num.random(min, max) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatMathHosts.kt:169
---@overload fun(self: MacroHandler.NumAPI, value: any): integer
---@param value any Flexible native coercion; retained as any, not guessed.
---@return integer result1
function Num.round(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatMathHosts.kt:164
---@overload fun(self: MacroHandler.NumAPI, seed?: any): integer
---@param seed? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return integer result1
function Num.seed(seed) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatMathHosts.kt:149
---@overload fun(self: MacroHandler.NumAPI, value: any): number
---@param value any Flexible native coercion; retained as any, not guessed.
---@return number result1
function Num.toDouble(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatMathHosts.kt:148
---@overload fun(self: MacroHandler.NumAPI, value: any): number
---@param value any Flexible native coercion; retained as any, not guessed.
---@return number result1
function Num.toFloat(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatMathHosts.kt:147
---@overload fun(self: MacroHandler.NumAPI, value: any): integer
---@param value any Flexible native coercion; retained as any, not guessed.
---@return integer result1
function Num.toInt(value) end

---@class MacroHandler.AIAPI
AI = {}

--- TODO: Lua payload shape/arity is not narrowed unless separately traced.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatAiHost.kt:105
---@overload fun(self: MacroHandler.AIAPI, prompt: any, providerId?: any, apiKey?: any): table
---@param prompt any Flexible native coercion; retained as any, not guessed.
---@param providerId? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@param apiKey? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return table result1
function AI.ask(prompt, providerId, apiKey) end

--- TODO: Lua payload shape/arity is not narrowed unless separately traced.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatAiHost.kt:300
---@overload fun(self: MacroHandler.AIAPI, prompt: any, imageBase64: any, providerId?: any, mimeType?: any, apiKey?: any, timeoutMs?: any): table
---@param prompt any Flexible native coercion; retained as any, not guessed.
---@param imageBase64 any Flexible native coercion; retained as any, not guessed.
---@param providerId? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@param mimeType? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@param apiKey? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@param timeoutMs? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return table result1
function AI.askVision(prompt, imageBase64, providerId, mimeType, apiKey, timeoutMs) end

---@class MacroHandler.AgentAPI
Agent = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/agentmacro/AgentMacroLuaApi.kt:70
---@param blockId string
---@return MacroHandler.AgentResult result1
function Agent.run(blockId) end

---@class MacroHandler.WorkflowAPI
Workflow = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/WorkflowLuaApi.kt:1
---@overload fun(self: MacroHandler.WorkflowAPI, items: any[], action: (fun(item: any, index: integer): any), options?: MacroHandler.WorkflowIterationOptions): MacroHandler.WorkflowResult
---@param items any[]
---@param action fun(item: any, index: integer): any
---@param options? MacroHandler.WorkflowIterationOptions
---@return MacroHandler.WorkflowResult result1
function Workflow.each(items, action, options) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/WorkflowLuaApi.kt:34
---@overload fun(self: MacroHandler.WorkflowAPI, action: (fun(): any), options?: MacroHandler.WorkflowRetryOptions): MacroHandler.WorkflowResult
---@param action fun(): any
---@param options? MacroHandler.WorkflowRetryOptions
---@return MacroHandler.WorkflowResult result1
function Workflow.retry(action, options) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/WorkflowLuaApi.kt:1
---@overload fun(self: MacroHandler.WorkflowAPI, count: integer, action: (fun(index: integer): any), options?: MacroHandler.WorkflowIterationOptions): MacroHandler.WorkflowResult
---@param count integer 0..1000000.
---@param action fun(index: integer): any
---@param options? MacroHandler.WorkflowIterationOptions
---@return MacroHandler.WorkflowResult result1
function Workflow.times(count, action, options) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/WorkflowLuaApi.kt:1
---@overload fun(self: MacroHandler.WorkflowAPI, predicate: (fun(): any), options?: MacroHandler.WorkflowPollOptions): MacroHandler.WorkflowResult
---@param predicate fun(): any
---@param options? MacroHandler.WorkflowPollOptions
---@return MacroHandler.WorkflowResult result1
function Workflow.waitUntil(predicate, options) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/WorkflowLuaApi.kt:1
---@overload fun(self: MacroHandler.WorkflowAPI, action: (fun(): any), cleanup: (fun(ok: boolean, values: MacroHandler.PackedValues, error: any): any)): MacroHandler.WorkflowResult
---@param action fun(): any
---@param cleanup fun(ok: boolean, values: MacroHandler.PackedValues, error: any): any
---@return MacroHandler.WorkflowResult result1
function Workflow.withCleanup(action, cleanup) end

---@class MacroHandler.FormAPI
Form = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/FormLuaApi.kt:309
---@overload fun(self: MacroHandler.FormAPI, schema: MacroHandler.FormSchema): MacroHandler.SettingDialog
---@param schema MacroHandler.FormSchema
---@return MacroHandler.SettingDialog result1
function Form.build(schema) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/FormLuaApi.kt:1
---@overload fun(self: MacroHandler.FormAPI, schema: MacroHandler.FormSchema): table<string, any>
---@param schema MacroHandler.FormSchema
---@return table<string, any> result1
function Form.defaults(schema) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/FormLuaApi.kt:1
---@overload fun(self: MacroHandler.FormAPI, schema: MacroHandler.FormSchema): any
---@param schema MacroHandler.FormSchema
---@return any result1
function Form.show(schema) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/FormLuaApi.kt:1
---@overload fun(self: MacroHandler.FormAPI, schema: MacroHandler.FormSchema): boolean, string|nil
---@param schema MacroHandler.FormSchema
---@return boolean result1
---@return string|nil result2
function Form.validate(schema) end

---@class MacroHandler.ModuleAPI
Module = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/ModuleLuaApi.kt:1
---@param name string
---@param factory fun(name: string): table|function
---@return boolean result1
function Module.define(name, factory) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ModuleLuaApi.kt:1
---@param name string
---@return boolean result1
function Module.has(name) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ModuleLuaApi.kt:1
---@return string[] result1
function Module.list() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ModuleLuaApi.kt:1
---@param name string
---@return table|function result1
function Module.use(name) end

---@class MacroHandler.ApiAPI
Api = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/ApiCapabilitiesLuaApi.kt:1
---@param required string[]
---@return MacroHandler.ApiCheck result1
function Api.check(required) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ApiCapabilitiesLuaApi.kt:1
---@param prefix? string
---@return string[] result1
function Api.list(prefix) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ApiCapabilitiesLuaApi.kt:1
---@param name any
---@return boolean result1
function Api.supports(name) end

---@class MacroHandler.ConsoleAPI
Console = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatConsoleHost.kt:29
---@overload fun(self: MacroHandler.ConsoleAPI, value: any)
---@param value any Flexible native coercion; retained as any, not guessed.
---@return nil result1
function Console.err(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatConsoleHost.kt:33
---@overload fun(self: MacroHandler.ConsoleAPI, prompt: any): string
---@param prompt any Kotlin default: "". Flexible native coercion; retained as any, not guessed.
---@return string result1
Console["in"] = function(prompt) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatConsoleHost.kt:25
---@overload fun(self: MacroHandler.ConsoleAPI, value: any)
---@param value any Flexible native coercion; retained as any, not guessed.
---@return nil result1
function Console.out(value) end

---@class MacroHandler.EventAPI
Event = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatEventHost.kt:25
---@overload fun(self: MacroHandler.EventAPI): string
---@return string result1
function Event.appName() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatEventHost.kt:31
---@overload fun(self: MacroHandler.EventAPI): number
---@return number result1
function Event.at() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatEventHost.kt:29
---@overload fun(self: MacroHandler.EventAPI): string
---@return string result1
function Event.body() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatEventHost.kt:13
---@overload fun(self: MacroHandler.EventAPI): boolean
---@return boolean result1
function Event.exists() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatEventHost.kt:33
---@overload fun(self: MacroHandler.EventAPI, key: any): any
---@param key any Flexible native coercion; retained as any, not guessed.
---@return any result1
function Event.get(key) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatEventHost.kt:17
---@overload fun(self: MacroHandler.EventAPI): string
---@return string result1
function Event.kind() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatEventHost.kt:21
---@overload fun(self: MacroHandler.EventAPI): string
---@return string result1
function Event.macroId() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatEventHost.kt:19
---@overload fun(self: MacroHandler.EventAPI): string
---@return string result1
function Event.mode() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatEventHost.kt:23
---@overload fun(self: MacroHandler.EventAPI): string
---@return string result1
function Event.packageName() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatEventHost.kt:15
---@overload fun(self: MacroHandler.EventAPI): string
---@return string result1
function Event.source() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatEventHost.kt:27
---@overload fun(self: MacroHandler.EventAPI): string
---@return string result1
function Event.title() end

---@class MacroHandler.EventsAPI
Events = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaEventBus.kt:33
---@overload fun(self: MacroHandler.EventsAPI, event?: string): integer
---@param event? string
---@return integer result1
function Events.clear(event) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaEventBus.kt:47
---@overload fun(self: MacroHandler.EventsAPI, event: string, ...: any): integer
---@param event string
---@param ... any
---@return integer result1
function Events.emit(event, ...) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaEventBus.kt:40
---@overload fun(self: MacroHandler.EventsAPI, event?: string): integer
---@param event? string
---@return integer result1
function Events.listenerCount(event) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaEventBus.kt:29
---@overload fun(self: MacroHandler.EventsAPI, idOrName: integer|string): boolean
---@param idOrName integer|string
---@return boolean result1
function Events.off(idOrName) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaEventBus.kt:21
---@overload fun(self: MacroHandler.EventsAPI, event: string, handler: (fun(...: any): any)): integer
---@param event string
---@param handler fun(...: any): any
---@return integer result1
function Events.on(event, handler) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaEventBus.kt:25
---@overload fun(self: MacroHandler.EventsAPI, event: string, handler: (fun(...: any): any)): integer
---@param event string
---@param handler fun(...: any): any
---@return integer result1
function Events.once(event, handler) end

---@class MacroHandler.SSEAPI
SSE = {}

--- TODO: Lua payload shape/arity is not narrowed unless separately traced.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatRealtimeHosts.kt:72
---@overload fun(self: MacroHandler.SSEAPI, rawUrl: any, timeoutMs?: any, headers?: any): table
---@param rawUrl any Flexible native coercion; retained as any, not guessed.
---@param timeoutMs? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@param headers? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return table result1
function SSE.first(rawUrl, timeoutMs, headers) end

--- TODO: Lua payload shape/arity is not narrowed unless separately traced.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatRealtimeHosts.kt:53
---@overload fun(self: MacroHandler.SSEAPI, rawUrl: any, maxEvents?: any, timeoutMs?: any, headers?: any): table
---@param rawUrl any Flexible native coercion; retained as any, not guessed.
---@param maxEvents? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@param timeoutMs? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@param headers? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return table result1
function SSE.read(rawUrl, maxEvents, timeoutMs, headers) end

---@class MacroHandler.WebSocketAPI
WebSocket = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:970
---@param url? string
---@param timeoutMs? any Default 15000; clamped 1000..60000 milliseconds.
---@param headers? any
---@return MacroHandler.WebSocketSession result1
function WebSocket.connect(url, timeoutMs, headers) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:947
---@param url any
---@param message any
---@param maxMessages? any
---@param timeoutMs? any
---@param headers? any
---@return table result1
function WebSocket.exchange(url, message, maxMessages, timeoutMs, headers) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:959
---@param url any
---@param message any
---@param timeoutMs? any
---@param headers? any
---@return table result1
function WebSocket.text(url, message, timeoutMs, headers) end

---@class MacroHandler.ClipboardAPI
Clipboard = {}

--- TODO: expression return requires manual bridge tracing; return kept as any.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatIoHosts.kt:29
---@overload fun(self: MacroHandler.ClipboardAPI): any
---@return any result1
function Clipboard.clear() end

--- TODO: expression return requires manual bridge tracing; return kept as any.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatIoHosts.kt:37
---@overload fun(self: MacroHandler.ClipboardAPI, text: any): any
---@param text any Flexible native coercion; retained as any, not guessed.
---@return any result1
function Clipboard.copy(text) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatIoHosts.kt:56
---@overload fun(self: MacroHandler.ClipboardAPI): string
---@return string result1
function Clipboard.get() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatIoHosts.kt:46
---@overload fun(self: MacroHandler.ClipboardAPI): string
---@return string result1
function Clipboard.paste() end

---@class MacroHandler.FileAPI
File = {}

--- TODO: expression return requires manual bridge tracing; return kept as any.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatIoHosts.kt:232
---@overload fun(self: MacroHandler.FileAPI, path: any, content: any): any
---@param path any Flexible native coercion; retained as any, not guessed.
---@param content any Flexible native coercion; retained as any, not guessed.
---@return any result1
function File.append(path, content) end

--- TODO: expression return requires manual bridge tracing; return kept as any.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatIoHosts.kt:151
---@overload fun(self: MacroHandler.FileAPI, path: any, lines: any): any
---@param path any Flexible native coercion; retained as any, not guessed.
---@param lines any Flexible native coercion; retained as any, not guessed.
---@return any result1
function File.appendLines(path, lines) end

--- TODO: expression return requires manual bridge tracing; return kept as any.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatIoHosts.kt:135
---@overload fun(self: MacroHandler.FileAPI, path: any, content: any): any
---@param path any Flexible native coercion; retained as any, not guessed.
---@param content any Flexible native coercion; retained as any, not guessed.
---@return any result1
function File.appendText(path, content) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatIoHosts.kt:184
---@overload fun(self: MacroHandler.FileAPI, source: any, dest: any): boolean
---@param source any Flexible native coercion; retained as any, not guessed.
---@param dest any Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function File.copy(source, dest) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatIoHosts.kt:199
---@overload fun(self: MacroHandler.FileAPI, path: any): boolean
---@param path any Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function File.delete(path) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatIoHosts.kt:204
---@overload fun(self: MacroHandler.FileAPI, path: any): boolean
---@param path any Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function File.exists(path) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatIoHosts.kt:209
---@overload fun(self: MacroHandler.FileAPI, path: any): boolean
---@param path any Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function File.isDir(path) end

--- TODO: Lua payload shape/arity is not narrowed unless separately traced.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatIoHosts.kt:219
---@overload fun(self: MacroHandler.FileAPI, path: any): table
---@param path any Flexible native coercion; retained as any, not guessed.
---@return table result1
function File.list(path) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatIoHosts.kt:214
---@overload fun(self: MacroHandler.FileAPI, path: any): boolean
---@param path any Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function File.mkdirs(path) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatIoHosts.kt:225
---@overload fun(self: MacroHandler.FileAPI, path: any): string
---@param path any Flexible native coercion; retained as any, not guessed.
---@return string result1
function File.read(path) end

--- TODO: Lua payload shape/arity is not narrowed unless separately traced.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatIoHosts.kt:175
---@overload fun(self: MacroHandler.FileAPI, path: any): table
---@param path any Flexible native coercion; retained as any, not guessed.
---@return table result1
function File.readLines(path) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatIoHosts.kt:169
---@overload fun(self: MacroHandler.FileAPI, path: any): string
---@param path any Flexible native coercion; retained as any, not guessed.
---@return string result1
function File.readText(path) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatIoHosts.kt:102
---@overload fun(self: MacroHandler.FileAPI): string
---@return string result1
function File.separator() end

--- TODO: expression return requires manual bridge tracing; return kept as any.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatIoHosts.kt:227
---@overload fun(self: MacroHandler.FileAPI, path: any, content: any): any
---@param path any Flexible native coercion; retained as any, not guessed.
---@param content any Flexible native coercion; retained as any, not guessed.
---@return any result1
function File.write(path, content) end

--- TODO: expression return requires manual bridge tracing; return kept as any.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatIoHosts.kt:120
---@overload fun(self: MacroHandler.FileAPI, path: any, lines: any): any
---@param path any Flexible native coercion; retained as any, not guessed.
---@param lines any Flexible native coercion; retained as any, not guessed.
---@return any result1
function File.writeLines(path, lines) end

--- TODO: expression return requires manual bridge tracing; return kept as any.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatIoHosts.kt:104
---@overload fun(self: MacroHandler.FileAPI, path: any, content: any): any
---@param path any Flexible native coercion; retained as any, not guessed.
---@param content any Flexible native coercion; retained as any, not guessed.
---@return any result1
function File.writeText(path, content) end

---@class MacroHandler.PanelAPI
Panel = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatOverlayHost.kt:74
---@overload fun(self: MacroHandler.PanelAPI)
---@return nil result1
function Panel.close() end

--- Absolute position setter. Identical to [move]; provided as the more conventional name so scripts ported from other automation platforms can keep their `Panel:setPosition(x, y)` calls unchanged. / fun setPosition(x: Any?, y: Any?) = move(x, y) / Current cached overlay X coordinate (already mapped to overlay space). / fun getX(): Double = x / Current cached overlay Y coordinate (already mapped to overlay space). / fun getY(): Double = y / Current cached overlay width in overlay-space units. / fun getWidth(): Double = w / Current cached overlay height in overlay-space units.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatOverlayHost.kt:113
---@overload fun(self: MacroHandler.PanelAPI): number
---@return number result1
function Panel.getHeight() end

--- Absolute position setter. Identical to [move]; provided as the more conventional name so scripts ported from other automation platforms can keep their `Panel:setPosition(x, y)` calls unchanged. / fun setPosition(x: Any?, y: Any?) = move(x, y) / Current cached overlay X coordinate (already mapped to overlay space). / fun getX(): Double = x / Current cached overlay Y coordinate (already mapped to overlay space). / fun getY(): Double = y / Current cached overlay width in overlay-space units. / fun getWidth(): Double = w / Current cached overlay height in overlay-space units. / fun getHeight(): Double = h / Last opacity value successfully dispatched (range 0.0–1.0).
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatOverlayHost.kt:116
---@overload fun(self: MacroHandler.PanelAPI): number
---@return number result1
function Panel.getOpacity() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatOverlayHost.kt:45
---@overload fun(self: MacroHandler.PanelAPI): any
---@return any result1
function Panel.getRegion() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatOverlayHost.kt:33
---@overload fun(self: MacroHandler.PanelAPI): string
---@return string result1
function Panel.getState() end

--- True when the panel is still reachable (not closed). Closing is the only terminal transition; show / hide / spin all remain reversible, so a caller that gets back `true` here can safely re-issue any of those commands without first re-opening the overlay surface. / fun isAvailable(): Boolean = state != "closed" / Absolute position setter. Identical to [move]; provided as the more conventional name so scripts ported from other automation platforms can keep their `Panel:setPosition(x, y)` calls unchanged. / fun setPosition(x: Any?, y: Any?) = move(x, y) / Current cached overlay X coordinate (already mapped to overlay space). / fun getX(): Double = x / Current cached overlay Y coordinate (already mapped to overlay space). / fun getY(): Double = y / Current cached overlay width in overlay-space units.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatOverlayHost.kt:110
---@overload fun(self: MacroHandler.PanelAPI): number
---@return number result1
function Panel.getWidth() end

--- True when the panel was last toggled into the visible state. / fun isVisible(): Boolean = state == "show" / True when the panel is still reachable (not closed). Closing is the only terminal transition; show / hide / spin all remain reversible, so a caller that gets back `true` here can safely re-issue any of those commands without first re-opening the overlay surface. / fun isAvailable(): Boolean = state != "closed" / Absolute position setter. Identical to [move]; provided as the more conventional name so scripts ported from other automation platforms can keep their `Panel:setPosition(x, y)` calls unchanged. / fun setPosition(x: Any?, y: Any?) = move(x, y) / Current cached overlay X coordinate (already mapped to overlay space).
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatOverlayHost.kt:104
---@overload fun(self: MacroHandler.PanelAPI): number
---@return number result1
function Panel.getX() end

--- True when the panel was last toggled into the visible state. / fun isVisible(): Boolean = state == "show" / True when the panel is still reachable (not closed). Closing is the only terminal transition; show / hide / spin all remain reversible, so a caller that gets back `true` here can safely re-issue any of those commands without first re-opening the overlay surface. / fun isAvailable(): Boolean = state != "closed" / Absolute position setter. Identical to [move]; provided as the more conventional name so scripts ported from other automation platforms can keep their `Panel:setPosition(x, y)` calls unchanged. / fun setPosition(x: Any?, y: Any?) = move(x, y) / Current cached overlay X coordinate (already mapped to overlay space). / fun getX(): Double = x / Current cached overlay Y coordinate (already mapped to overlay space).
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatOverlayHost.kt:107
---@overload fun(self: MacroHandler.PanelAPI): number
---@return number result1
function Panel.getY() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatOverlayHost.kt:69
---@overload fun(self: MacroHandler.PanelAPI)
---@return nil result1
function Panel.hide() end

--- True when the panel was last toggled into the visible state. / fun isVisible(): Boolean = state == "show" / True when the panel is still reachable (not closed). Closing is the only terminal transition; show / hide / spin all remain reversible, so a caller that gets back `true` here can safely re-issue any of those commands without first re-opening the overlay surface.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatOverlayHost.kt:94
---@overload fun(self: MacroHandler.PanelAPI): boolean
---@return boolean result1
function Panel.isAvailable() end

--- True when the panel was last toggled into the visible state.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatOverlayHost.kt:86
---@overload fun(self: MacroHandler.PanelAPI): boolean
---@return boolean result1
function Panel.isVisible() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatOverlayHost.kt:47
---@overload fun(self: MacroHandler.PanelAPI, x: any, y: any)
---@param x any Flexible native coercion; retained as any, not guessed.
---@param y any Flexible native coercion; retained as any, not guessed.
---@return nil result1
function Panel.move(x, y) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatOverlayHost.kt:26
---@overload fun(self: MacroHandler.PanelAPI, value: any)
---@param value any Flexible native coercion; retained as any, not guessed.
---@return nil result1
function Panel.setOpacity(value) end

--- True when the panel was last toggled into the visible state. / fun isVisible(): Boolean = state == "show" / True when the panel is still reachable (not closed). Closing is the only terminal transition; show / hide / spin all remain reversible, so a caller that gets back `true` here can safely re-issue any of those commands without first re-opening the overlay surface. / fun isAvailable(): Boolean = state != "closed" / Absolute position setter. Identical to [move]; provided as the more conventional name so scripts ported from other automation platforms can keep their `Panel:setPosition(x, y)` calls unchanged. TODO: expression return requires manual bridge tracing; return kept as any.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatOverlayHost.kt:101
---@overload fun(self: MacroHandler.PanelAPI, x: any, y: any): any
---@param x any Flexible native coercion; retained as any, not guessed.
---@param y any Flexible native coercion; retained as any, not guessed.
---@return any result1
function Panel.setPosition(x, y) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatOverlayHost.kt:35
---@overload fun(self: MacroHandler.PanelAPI, value: any)
---@param value any Flexible native coercion; retained as any, not guessed.
---@return nil result1
function Panel.setState(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatOverlayHost.kt:64
---@overload fun(self: MacroHandler.PanelAPI)
---@return nil result1
function Panel.show() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatOverlayHost.kt:59
---@overload fun(self: MacroHandler.PanelAPI)
---@return nil result1
function Panel.spin() end

---@class MacroHandler.SettingAPI
Setting = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:1292
---@return MacroHandler.SettingBuilder result1
function Setting.builder() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:1301
---@return nil result1
function Setting.clear() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:1286
---@param key any
---@param defaultValue? any
---@return any result1
function Setting.get(key, defaultValue) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:1307
---@return nil result1
function Setting.load() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:1310
---@return nil result1
function Setting.loadVars() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:1295
---@param key any
---@return nil result1
function Setting.remove(key) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:1304
---@return nil result1
function Setting.save() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:1280
---@param key any
---@param value any
---@return nil result1
function Setting.set(key, value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:1318
---@param dialog MacroHandler.SettingDialog
---@return nil result1
function Setting.setDialog(dialog) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:1324
---@return any result1
function Setting.show() end

---@class MacroHandler.AssetAPI
Asset = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTemplateHosts.kt:54
---@overload fun(self: MacroHandler.AssetAPI)
---@return nil result1
function Asset.clear() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTemplateHosts.kt:18
---@overload fun(self: MacroHandler.AssetAPI, value: any): MacroHandler.AssetTemplate
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.AssetTemplate result1
function Asset.color(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTemplateHosts.kt:30
---@overload fun(self: MacroHandler.AssetAPI, value: any): MacroHandler.AssetTemplate
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.AssetTemplate result1
function Asset.image(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTemplateHosts.kt:50
---@overload fun(self: MacroHandler.AssetAPI)
---@return nil result1
function Asset.load() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTemplateHosts.kt:58
---@overload fun(self: MacroHandler.AssetAPI, value: any): MacroHandler.AssetTemplate
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.AssetTemplate result1
function Asset.mutate(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTemplateHosts.kt:36
---@overload fun(self: MacroHandler.AssetAPI, value: any)
---@param value any Flexible native coercion; retained as any, not guessed.
---@return nil result1
function Asset.setDefaultScale(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTemplateHosts.kt:42
---@overload fun(self: MacroHandler.AssetAPI, value: any)
---@param value any Flexible native coercion; retained as any, not guessed.
---@return nil result1
function Asset.setDefaultScaleX(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTemplateHosts.kt:46
---@overload fun(self: MacroHandler.AssetAPI, value: any)
---@param value any Flexible native coercion; retained as any, not guessed.
---@return nil result1
function Asset.setDefaultScaleY(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTemplateHosts.kt:24
---@overload fun(self: MacroHandler.AssetAPI, value: any): MacroHandler.AssetTemplate
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.AssetTemplate result1
function Asset.text(value) end

---@class MacroHandler.FindParamAPI
FindParam = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSearchParam.kt:222
---@overload fun(self: MacroHandler.FindParamAPI, value: any): MacroHandler.FindParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.FindParam result1
function FindParam.blacklist(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSearchParam.kt:227
---@overload fun(self: MacroHandler.FindParamAPI, value: any): MacroHandler.FindParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.FindParam result1
function FindParam.case(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSearchParam.kt:232
---@overload fun(self: MacroHandler.FindParamAPI, value: any): MacroHandler.FindParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.FindParam result1
function FindParam.engine(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSearchParam.kt:246
---@overload fun(self: MacroHandler.FindParamAPI): boolean
---@return boolean result1
function FindParam.getHighlight() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSearchParam.kt:247
---@overload fun(self: MacroHandler.FindParamAPI): integer
---@return integer result1
function FindParam.getHighlightDuration() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSearchParam.kt:248
---@overload fun(self: MacroHandler.FindParamAPI): string
---@return string result1
function FindParam.getHighlightTooltip() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSearchParam.kt:204
---@overload fun(self: MacroHandler.FindParamAPI, value: number): MacroHandler.FindParam
---@param value number Similarity 0..1; clamped.
---@return MacroHandler.FindParam result1
function FindParam.mScore(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSearchParam.kt:213
---@overload fun(self: MacroHandler.FindParamAPI, value: any): MacroHandler.FindParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.FindParam result1
function FindParam.method(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSearchParam.kt:216
---@overload fun(self: MacroHandler.FindParamAPI, value: any): MacroHandler.FindParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.FindParam result1
function FindParam.mode(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSearchParam.kt:234
---@overload fun(self: MacroHandler.FindParamAPI, value: any): MacroHandler.FindParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.FindParam result1
function FindParam.ocrScript(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSearchParam.kt:210
---@overload fun(self: MacroHandler.FindParamAPI, value: any): MacroHandler.FindParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.FindParam result1
function FindParam.sRate(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSearchParam.kt:207
---@overload fun(self: MacroHandler.FindParamAPI, value: number): MacroHandler.FindParam
---@param value number Finite positive scale, normalized to 0.5..4.0; invalid becomes 1.
---@return MacroHandler.FindParam result1
function FindParam.scale(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSearchParam.kt:229
---@overload fun(self: MacroHandler.FindParamAPI, value: any): MacroHandler.FindParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.FindParam result1
function FindParam.segment(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSearchParam.kt:237
---@overload fun(self: MacroHandler.FindParamAPI, value: any): MacroHandler.FindParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.FindParam result1
function FindParam.setHighlight(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSearchParam.kt:238
---@overload fun(self: MacroHandler.FindParamAPI, value: any): MacroHandler.FindParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.FindParam result1
function FindParam.setHighlightDuration(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSearchParam.kt:239
---@overload fun(self: MacroHandler.FindParamAPI, value: any): MacroHandler.FindParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.FindParam result1
function FindParam.setHighlightTooltip(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSearchParam.kt:201
---@overload fun(self: MacroHandler.FindParamAPI, value: number): MacroHandler.FindParam
---@param value number Milliseconds; nonnegative integer timeout. Default 0.
---@return MacroHandler.FindParam result1
function FindParam.timeout(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatSearchParam.kt:219
---@overload fun(self: MacroHandler.FindParamAPI, value: any): MacroHandler.FindParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.FindParam result1
function FindParam.whitelist(value) end

---@class MacroHandler.ClickParamAPI
ClickParam = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatParamTypes.kt:163
---@overload fun(self: MacroHandler.ClickParamAPI, value: any): MacroHandler.ClickParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.ClickParam result1
function ClickParam.delay(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatParamTypes.kt:162
---@overload fun(self: MacroHandler.ClickParamAPI, value: any): MacroHandler.ClickParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.ClickParam result1
function ClickParam.hold(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatParamTypes.kt:168
---@overload fun(self: MacroHandler.ClickParamAPI): MacroHandler.ClickParam
---@return MacroHandler.ClickParam result1
function ClickParam.humanLike() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatParamTypes.kt:165
---@overload fun(self: MacroHandler.ClickParamAPI, value: any): MacroHandler.ClickParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.ClickParam result1
function ClickParam.random(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatParamTypes.kt:167
---@overload fun(self: MacroHandler.ClickParamAPI, value?: any): MacroHandler.ClickParam
---@param value? any Kotlin default: HUMAN_LIKE_RANDOM_RADIUS. Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.ClickParam result1
function ClickParam.randomize(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatParamTypes.kt:161
---@overload fun(self: MacroHandler.ClickParamAPI, value: any): MacroHandler.ClickParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.ClickParam result1
ClickParam["repeat"] = function(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatParamTypes.kt:164
---@overload fun(self: MacroHandler.ClickParamAPI, value: any): MacroHandler.ClickParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.ClickParam result1
function ClickParam.waitNext(value) end

---@class MacroHandler.SwipeParamAPI
SwipeParam = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatParamTypes.kt:173
---@overload fun(self: MacroHandler.SwipeParamAPI, value: any): MacroHandler.SwipeParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.SwipeParam result1
function SwipeParam.delay(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatParamTypes.kt:178
---@overload fun(self: MacroHandler.SwipeParamAPI): MacroHandler.SwipeParam
---@return MacroHandler.SwipeParam result1
function SwipeParam.humanLike() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatParamTypes.kt:175
---@overload fun(self: MacroHandler.SwipeParamAPI, value: any): MacroHandler.SwipeParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.SwipeParam result1
function SwipeParam.random(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatParamTypes.kt:177
---@overload fun(self: MacroHandler.SwipeParamAPI, value?: any): MacroHandler.SwipeParam
---@param value? any Kotlin default: HUMAN_LIKE_RANDOM_RADIUS. Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.SwipeParam result1
function SwipeParam.randomize(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatParamTypes.kt:172
---@overload fun(self: MacroHandler.SwipeParamAPI, value: any): MacroHandler.SwipeParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.SwipeParam result1
SwipeParam["repeat"] = function(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatParamTypes.kt:174
---@overload fun(self: MacroHandler.SwipeParamAPI, value: any): MacroHandler.SwipeParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.SwipeParam result1
function SwipeParam.waitNext(value) end

---@class MacroHandler.PlayParamAPI
PlayParam = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatParamTypes.kt:183
---@overload fun(self: MacroHandler.PlayParamAPI, value: any): MacroHandler.PlayParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.PlayParam result1
function PlayParam.delay(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatParamTypes.kt:188
---@overload fun(self: MacroHandler.PlayParamAPI): MacroHandler.PlayParam
---@return MacroHandler.PlayParam result1
function PlayParam.humanLike() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatParamTypes.kt:185
---@overload fun(self: MacroHandler.PlayParamAPI, value: any): MacroHandler.PlayParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.PlayParam result1
function PlayParam.random(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatParamTypes.kt:187
---@overload fun(self: MacroHandler.PlayParamAPI, value?: any): MacroHandler.PlayParam
---@param value? any Kotlin default: HUMAN_LIKE_RANDOM_RADIUS. Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.PlayParam result1
function PlayParam.randomize(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatParamTypes.kt:182
---@overload fun(self: MacroHandler.PlayParamAPI, value: any): MacroHandler.PlayParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.PlayParam result1
PlayParam["repeat"] = function(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatParamTypes.kt:189
---@overload fun(self: MacroHandler.PlayParamAPI, value: any): MacroHandler.PlayParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.PlayParam result1
function PlayParam.setSpeed(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatParamTypes.kt:184
---@overload fun(self: MacroHandler.PlayParamAPI, value: any): MacroHandler.PlayParam
---@param value any Flexible native coercion; retained as any, not guessed.
---@return MacroHandler.PlayParam result1
function PlayParam.waitNext(value) end

---@class MacroHandler.ReplayAPI
Replay = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatRecordHost.kt:209
---@overload fun(self: MacroHandler.ReplayAPI, name: any): boolean
---@param name any Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function Replay.delete(name) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatRecordHost.kt:188
---@overload fun(self: MacroHandler.ReplayAPI): boolean
---@return boolean result1
function Replay.isRecording() end

--- LuaJ-facing list: returns a 1-based Lua array of replay entry tables. TODO: Lua payload shape/arity is not narrowed unless separately traced.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatRecordHost.kt:203
---@overload fun(self: MacroHandler.ReplayAPI): any
---@return any result1
function Replay.list() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatRecordHost.kt:217
---@overload fun(self: MacroHandler.ReplayAPI, record: any, param: any): boolean
---@param record any Flexible native coercion; retained as any, not guessed.
---@param param any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function Replay.play(record, param) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatRecordHost.kt:194
---@overload fun(self: MacroHandler.ReplayAPI, name: any): boolean
---@param name any Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function Replay.save(name) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatRecordHost.kt:172
---@overload fun(self: MacroHandler.ReplayAPI): boolean
---@return boolean result1
function Replay.start() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatRecordHost.kt:180
---@overload fun(self: MacroHandler.ReplayAPI): boolean
---@return boolean result1
function Replay.stop() end

---@class MacroHandler.CaptureAPI
Capture = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatScreenCaptureHost.kt:64
---@overload fun(self: MacroHandler.CaptureAPI): number
---@return number result1
function Capture.height() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatScreenCaptureHost.kt:60
---@overload fun(self: MacroHandler.CaptureAPI): boolean
---@return boolean result1
function Capture.isRunning() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatScreenCaptureHost.kt:67
---@overload fun(self: MacroHandler.CaptureAPI, region?: any, format?: any, quality?: any): string
---@param region? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@param format? any Kotlin default: "jpeg". Flexible native coercion; retained as any, not guessed.
---@param quality? any Kotlin default: DEFAULT_JPEG_QUALITY. Flexible native coercion; retained as any, not guessed.
---@return string result1
function Capture.regionToBase64(region, format, quality) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatScreenCaptureHost.kt:56
---@overload fun(self: MacroHandler.CaptureAPI)
---@return nil result1
function Capture.stop() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatScreenCaptureHost.kt:62
---@overload fun(self: MacroHandler.CaptureAPI): number
---@return number result1
function Capture.width() end

---@class MacroHandler.RuntimeAPI
Runtime = {}

--- TODO: Lua payload shape/arity is not narrowed unless separately traced.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatEnvHost.kt:155
---@overload fun(self: MacroHandler.RuntimeAPI): table
---@return table result1
function Runtime.cutouts() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatEnvHost.kt:63
---@overload fun(self: MacroHandler.RuntimeAPI): number
---@return number result1
function Runtime.deviceH() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatEnvHost.kt:61
---@overload fun(self: MacroHandler.RuntimeAPI): number
---@return number result1
function Runtime.deviceW() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatEnvHost.kt:57
---@overload fun(self: MacroHandler.RuntimeAPI): number
---@return number result1
function Runtime.deviceX() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatEnvHost.kt:59
---@overload fun(self: MacroHandler.RuntimeAPI): number
---@return number result1
function Runtime.deviceY() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatEnvHost.kt:157
---@overload fun(self: MacroHandler.RuntimeAPI, key: any): any
---@param key any Flexible native coercion; retained as any, not guessed.
---@return any result1
function Runtime.get(key) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatEnvHost.kt:67
---@overload fun(self: MacroHandler.RuntimeAPI): number
---@return number result1
function Runtime.height() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatEnvHost.kt:104
---@overload fun(self: MacroHandler.RuntimeAPI): boolean
---@return boolean result1
function Runtime.isDebug() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatEnvHost.kt:43
---@overload fun(self: MacroHandler.RuntimeAPI): number
---@return number result1
function Runtime.macroX() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatEnvHost.kt:50
---@overload fun(self: MacroHandler.RuntimeAPI): number
---@return number result1
function Runtime.macroY() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatEnvHost.kt:69
---@overload fun(self: MacroHandler.RuntimeAPI): string
---@return string result1
function Runtime.resolution() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatEnvHost.kt:90
---@overload fun(self: MacroHandler.RuntimeAPI): number
---@return number result1
function Runtime.scale() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatEnvHost.kt:176
---@overload fun(self: MacroHandler.RuntimeAPI, key: any, value: any)
---@param key any Flexible native coercion; retained as any, not guessed.
---@param value any Flexible native coercion; retained as any, not guessed.
---@return nil result1
function Runtime.set(key, value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatEnvHost.kt:97
---@overload fun(self: MacroHandler.RuntimeAPI, value: any)
---@param value any Flexible native coercion; retained as any, not guessed.
---@return nil result1
function Runtime.setCompareWidth(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatEnvHost.kt:106
---@overload fun(self: MacroHandler.RuntimeAPI, value: any)
---@param value any Flexible native coercion; retained as any, not guessed.
---@return nil result1
function Runtime.setDebug(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatEnvHost.kt:131
---@overload fun(self: MacroHandler.RuntimeAPI, value: any)
---@param value any Flexible native coercion; retained as any, not guessed.
---@return nil result1
function Runtime.setDeviceCutouts(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatEnvHost.kt:123
---@overload fun(self: MacroHandler.RuntimeAPI, value: any)
---@param value any Flexible native coercion; retained as any, not guessed.
---@return nil result1
function Runtime.setMacroCutouts(value) end

--- TODO: expression return requires manual bridge tracing; return kept as any.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatEnvHost.kt:71
---@overload fun(self: MacroHandler.RuntimeAPI, width: any, height: any): any
---@param width any Flexible native coercion; retained as any, not guessed.
---@param height any Flexible native coercion; retained as any, not guessed.
---@return any result1
function Runtime.setMacroSize(width, height) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatEnvHost.kt:45
---@overload fun(self: MacroHandler.RuntimeAPI, value: any)
---@param value any Flexible native coercion; retained as any, not guessed.
---@return nil result1
function Runtime.setMacroX(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatEnvHost.kt:52
---@overload fun(self: MacroHandler.RuntimeAPI, value: any)
---@param value any Flexible native coercion; retained as any, not guessed.
---@return nil result1
function Runtime.setMacroY(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatEnvHost.kt:111
---@overload fun(self: MacroHandler.RuntimeAPI, value: any)
---@param value any Flexible native coercion; retained as any, not guessed.
---@return nil result1
function Runtime.setMessageDone(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatEnvHost.kt:119
---@overload fun(self: MacroHandler.RuntimeAPI, value: any)
---@param value any Flexible native coercion; retained as any, not guessed.
---@return nil result1
function Runtime.setMessageError(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatEnvHost.kt:115
---@overload fun(self: MacroHandler.RuntimeAPI, value: any)
---@param value any Flexible native coercion; retained as any, not guessed.
---@return nil result1
function Runtime.setMessageStop(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatEnvHost.kt:92
---@overload fun(self: MacroHandler.RuntimeAPI, value: any)
---@param value any Flexible native coercion; retained as any, not guessed.
---@return nil result1
function Runtime.setScale(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatEnvHost.kt:65
---@overload fun(self: MacroHandler.RuntimeAPI): number
---@return number result1
function Runtime.width() end

---@class MacroHandler.EnvAPI
Env = {}

--- TODO: Lua payload shape/arity is not narrowed unless separately traced.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatEnvHost.kt:155
---@overload fun(self: MacroHandler.EnvAPI): table
---@return table result1
function Env.cutouts() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatEnvHost.kt:131
---@overload fun(self: MacroHandler.EnvAPI, value: any)
---@param value any Flexible native coercion; retained as any, not guessed.
---@return nil result1
function Env.setDeviceCutouts(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatEnvHost.kt:123
---@overload fun(self: MacroHandler.EnvAPI, value: any)
---@param value any Flexible native coercion; retained as any, not guessed.
---@return nil result1
function Env.setMacroCutouts(value) end

---@class MacroHandler.RequestAPI
---@overload fun(url?: string): MacroHandler.Request
Request = {}

--- Direct HTTPS request; use Request(url) to configure a request instance.
--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:1628
---@overload fun(self: MacroHandler.RequestAPI, url?: string): MacroHandler.Response
---@param url? string
---@return MacroHandler.Response result1
function Request.delete(url) end

--- Direct HTTPS request; use Request(url) to configure a request instance.
--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:1286
---@overload fun(self: MacroHandler.RequestAPI, url?: string): MacroHandler.Response
---@param url? string
---@return MacroHandler.Response result1
function Request.get(url) end

--- Direct HTTPS request; use Request(url) to configure a request instance.
--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:1631
---@overload fun(self: MacroHandler.RequestAPI, url?: string): MacroHandler.Response
---@param url? string
---@return MacroHandler.Response result1
function Request.patch(url) end

--- Direct HTTPS request; use Request(url) to configure a request instance.
--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:1622
---@overload fun(self: MacroHandler.RequestAPI, url?: string): MacroHandler.Response
---@param url? string
---@return MacroHandler.Response result1
function Request.post(url) end

--- Direct HTTPS request; use Request(url) to configure a request instance.
--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:1625
---@overload fun(self: MacroHandler.RequestAPI, url?: string): MacroHandler.Response
---@param url? string
---@return MacroHandler.Response result1
function Request.put(url) end

---@class MacroHandler.VersionAPI
---@overload fun(value: any): MacroHandler.Version
Version = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatVersionHost.kt:53
---@overload fun(self: MacroHandler.VersionAPI, value: any): integer
---@param value any Flexible native coercion; retained as any, not guessed.
---@return integer result1
function Version.build(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatVersionHost.kt:82
---@overload fun(self: MacroHandler.VersionAPI, version: any): boolean
---@param version any Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function Version.check(version) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatVersionHost.kt:39
---@overload fun(self: MacroHandler.VersionAPI): integer
---@return integer result1
function Version.code() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatVersionHost.kt:57
---@overload fun(self: MacroHandler.VersionAPI, a: any, b: any): integer
---@param a any Flexible native coercion; retained as any, not guessed.
---@param b any Flexible native coercion; retained as any, not guessed.
---@return integer result1
function Version.compare(a, b) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatVersionHost.kt:65
---@overload fun(self: MacroHandler.VersionAPI): MacroHandler.Version
---@return MacroHandler.Version result1
function Version.current() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatVersionHost.kt:80
---@overload fun(self: MacroHandler.VersionAPI, a: any, b?: any): boolean
---@param a any Flexible native coercion; retained as any, not guessed.
---@param b? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function Version.equalsTo(a, b) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatVersionHost.kt:61
---@overload fun(self: MacroHandler.VersionAPI): string
---@return string result1
function Version.getCurrent() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatVersionHost.kt:63
---@overload fun(self: MacroHandler.VersionAPI): string
---@return string result1
function Version.getMin() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatVersionHost.kt:71
---@overload fun(self: MacroHandler.VersionAPI, a: any, b?: any): boolean
---@param a any Flexible native coercion; retained as any, not guessed.
---@param b? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function Version.isAtLeast(a, b) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatVersionHost.kt:74
---@overload fun(self: MacroHandler.VersionAPI, a: any, b?: any): boolean
---@param a any Flexible native coercion; retained as any, not guessed.
---@param b? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function Version.isGreaterThan(a, b) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatVersionHost.kt:77
---@overload fun(self: MacroHandler.VersionAPI, a: any, b?: any): boolean
---@param a any Flexible native coercion; retained as any, not guessed.
---@param b? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function Version.isLessThan(a, b) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatVersionHost.kt:49
---@overload fun(self: MacroHandler.VersionAPI, value: any): integer
---@param value any Flexible native coercion; retained as any, not guessed.
---@return integer result1
function Version.major(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatVersionHost.kt:51
---@overload fun(self: MacroHandler.VersionAPI, value: any): integer
---@param value any Flexible native coercion; retained as any, not guessed.
---@return integer result1
function Version.minor(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatVersionHost.kt:45
---@overload fun(self: MacroHandler.VersionAPI): string
---@return string result1
function Version.name() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatVersionHost.kt:55
---@overload fun(self: MacroHandler.VersionAPI, value: any): integer
---@param value any Flexible native coercion; retained as any, not guessed.
---@return integer result1
function Version.revision(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatVersionHost.kt:68
---@overload fun(self: MacroHandler.VersionAPI, value?: any): string
---@param value? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return string result1
function Version.value(value) end

---@class MacroHandler.DateTimeAPI
---@overload fun(): MacroHandler.DateTime
---@overload fun(unixMillis: number): MacroHandler.DateTime
---@overload fun(year: number, month: number, day?: number, hour?: number, minute?: number, second?: number, millisecond?: number): MacroHandler.DateTime
DateTime = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:2100
---@param value any
---@param pattern any
---@return string result1
function DateTime.format(value, pattern) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:2094
---@param value any
---@return MacroHandler.DateTime result1
function DateTime.fromUnixMillis(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:2085
---@return MacroHandler.DateTime result1
function DateTime.now() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:2088
---@return number result1
function DateTime.nowMs() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:2091
---@param value any
---@return MacroHandler.DateTime result1
function DateTime.parse(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:2097
---@return integer result1
function DateTime.timeZoneOffset() end

---@class MacroHandler.TimeSpanAPI
---@overload fun(): MacroHandler.TimeSpan
---@overload fun(milliseconds: number): MacroHandler.TimeSpan
---@overload fun(seconds: number, milliseconds: number): MacroHandler.TimeSpan
---@overload fun(minutes: number, seconds: number, milliseconds: number): MacroHandler.TimeSpan
---@overload fun(hours: number, minutes: number, seconds: number, milliseconds: number): MacroHandler.TimeSpan
---@overload fun(days: number, hours: number, minutes: number, seconds: number, milliseconds: number): MacroHandler.TimeSpan
TimeSpan = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:2125
---@param value any
---@return MacroHandler.TimeSpan result1
function TimeSpan.fromDays(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:2128
---@param value any
---@return MacroHandler.TimeSpan result1
function TimeSpan.fromHours(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:2131
---@param value any
---@return MacroHandler.TimeSpan result1
function TimeSpan.fromMinutes(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:2137
---@param value any
---@return MacroHandler.TimeSpan result1
function TimeSpan.fromMs(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:2134
---@param value any
---@return MacroHandler.TimeSpan result1
function TimeSpan.fromSeconds(value) end

---@class MacroHandler.StopwatchAPI
---@overload fun(): MacroHandler.Stopwatch
Stopwatch = {}

---@class MacroHandler.StrAPI
Str = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatStringAndMapHosts.kt:159
---@overload fun(self: MacroHandler.StrAPI, source: any, index: any): string
---@param source any Flexible native coercion; retained as any, not guessed.
---@param index any Flexible native coercion; retained as any, not guessed.
---@return string result1
function Str.charAt(source, index) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatStringAndMapHosts.kt:85
---@overload fun(self: MacroHandler.StrAPI, a: any, b: any): integer
---@param a any Flexible native coercion; retained as any, not guessed.
---@param b any Flexible native coercion; retained as any, not guessed.
---@return integer result1
function Str.compare(a, b) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatStringAndMapHosts.kt:174
---@overload fun(self: MacroHandler.StrAPI, ...: any): string
---@param ... any Flexible native coercion; retained as any, not guessed.
---@return string result1
function Str.concat(...) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatStringAndMapHosts.kt:89
---@overload fun(self: MacroHandler.StrAPI, source: any, target: any): boolean
---@param source any Flexible native coercion; retained as any, not guessed.
---@param target any Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function Str.contains(source, target) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatStringAndMapHosts.kt:97
---@overload fun(self: MacroHandler.StrAPI, source: any, suffix: any): boolean
---@param source any Flexible native coercion; retained as any, not guessed.
---@param suffix any Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function Str.endsWith(source, suffix) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatStringAndMapHosts.kt:72
---@overload fun(self: MacroHandler.StrAPI, format: any, ...: any): string
---@param format any Flexible native coercion; retained as any, not guessed.
---@param ... any Flexible native coercion; retained as any, not guessed.
---@return string result1
function Str.format(format, ...) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatStringAndMapHosts.kt:151
---@overload fun(self: MacroHandler.StrAPI, source: any, target: any): integer
---@param source any Flexible native coercion; retained as any, not guessed.
---@param target any Flexible native coercion; retained as any, not guessed.
---@return integer result1
function Str.indexOf(source, target) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatStringAndMapHosts.kt:61
---@overload fun(self: MacroHandler.StrAPI, delimiter: any, ...: any): string
---@param delimiter any Flexible native coercion; retained as any, not guessed.
---@param ... any Flexible native coercion; retained as any, not guessed.
---@return string result1
function Str.join(delimiter, ...) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatStringAndMapHosts.kt:155
---@overload fun(self: MacroHandler.StrAPI, source: any, target: any): integer
---@param source any Flexible native coercion; retained as any, not guessed.
---@param target any Flexible native coercion; retained as any, not guessed.
---@return integer result1
function Str.lastIndexOf(source, target) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatStringAndMapHosts.kt:149
---@overload fun(self: MacroHandler.StrAPI, source: any): integer
---@param source any Flexible native coercion; retained as any, not guessed.
---@return integer result1
function Str.length(source) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatStringAndMapHosts.kt:48
---@overload fun(self: MacroHandler.StrAPI, source: any, target: any): number
---@param source any Flexible native coercion; retained as any, not guessed.
---@param target any Flexible native coercion; retained as any, not guessed.
---@return number result1
function Str.lockMatch(source, target) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatStringAndMapHosts.kt:165
---@overload fun(self: MacroHandler.StrAPI, source: any, regex: any): boolean
---@param source any Flexible native coercion; retained as any, not guessed.
---@param regex any Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function Str.matches(source, regex) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatStringAndMapHosts.kt:185
---@overload fun(self: MacroHandler.StrAPI, source: any, targetLength: any, fill?: any): string
---@param source any Flexible native coercion; retained as any, not guessed.
---@param targetLength any Flexible native coercion; retained as any, not guessed.
---@param fill? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return string result1
function Str.pad(source, targetLength, fill) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatStringAndMapHosts.kt:204
---@overload fun(self: MacroHandler.StrAPI, source: any, count: any): string
---@param source any Flexible native coercion; retained as any, not guessed.
---@param count any Flexible native coercion; retained as any, not guessed.
---@return string result1
Str["repeat"] = function(source, count) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatStringAndMapHosts.kt:107
---@overload fun(self: MacroHandler.StrAPI, source: any, old: any, new: any): string
---@param source any Flexible native coercion; retained as any, not guessed.
---@param old any Flexible native coercion; retained as any, not guessed.
---@param new any Flexible native coercion; retained as any, not guessed.
---@return string result1
function Str.replace(source, old, new) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatStringAndMapHosts.kt:111
---@overload fun(self: MacroHandler.StrAPI, source: any, regex: any, replacement: any): string
---@param source any Flexible native coercion; retained as any, not guessed.
---@param regex any Flexible native coercion; retained as any, not guessed.
---@param replacement any Flexible native coercion; retained as any, not guessed.
---@return string result1
function Str.replaceAll(source, regex, replacement) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatStringAndMapHosts.kt:120
---@overload fun(self: MacroHandler.StrAPI, source: any, regex: any, replacement: any): string
---@param source any Flexible native coercion; retained as any, not guessed.
---@param regex any Flexible native coercion; retained as any, not guessed.
---@param replacement any Flexible native coercion; retained as any, not guessed.
---@return string result1
function Str.replaceFirst(source, regex, replacement) end

--- TODO: Lua payload shape/arity is not narrowed unless separately traced.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatStringAndMapHosts.kt:129
---@overload fun(self: MacroHandler.StrAPI, source: any, delimiter: any): table
---@param source any Flexible native coercion; retained as any, not guessed.
---@param delimiter any Flexible native coercion; retained as any, not guessed.
---@return table result1
function Str.split(source, delimiter) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatStringAndMapHosts.kt:93
---@overload fun(self: MacroHandler.StrAPI, source: any, prefix: any): boolean
---@param source any Flexible native coercion; retained as any, not guessed.
---@param prefix any Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function Str.startsWith(source, prefix) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatStringAndMapHosts.kt:147
---@deprecated Use the canonical alias documented in docs/lua_api_alias_policy.md.
---@overload fun(self: MacroHandler.StrAPI, source: any, start: any, end_?: any): string
---@param source any Flexible native coercion; retained as any, not guessed.
---@param start any Flexible native coercion; retained as any, not guessed.
---@param end_? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return string result1
function Str.subString(source, start, end_) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatStringAndMapHosts.kt:135
---@overload fun(self: MacroHandler.StrAPI, source: any, start: any, end_?: any): string
---@param source any Flexible native coercion; retained as any, not guessed.
---@param start any Flexible native coercion; retained as any, not guessed.
---@param end_? any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return string result1
function Str.substring(source, start, end_) end

--- TODO: Lua payload shape/arity is not narrowed unless separately traced.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatStringAndMapHosts.kt:214
---@overload fun(self: MacroHandler.StrAPI, source: any): table
---@param source any Flexible native coercion; retained as any, not guessed.
---@return table result1
function Str.toArray(source) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatStringAndMapHosts.kt:103
---@overload fun(self: MacroHandler.StrAPI, source: any): string
---@param source any Flexible native coercion; retained as any, not guessed.
---@return string result1
function Str.toLowerCase(source) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatStringAndMapHosts.kt:105
---@overload fun(self: MacroHandler.StrAPI, source: any): string
---@param source any Flexible native coercion; retained as any, not guessed.
---@return string result1
function Str.toUpperCase(source) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatStringAndMapHosts.kt:101
---@overload fun(self: MacroHandler.StrAPI, source: any): string
---@param source any Flexible native coercion; retained as any, not guessed.
---@return string result1
function Str.trim(source) end

---@class MacroHandler.MapAPI
---@overload fun(): MacroHandler.Map
Map = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:2162
---@param input any
---@return table result1
function Map.entries(input) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:2165
---@param input any
---@return table result1
function Map.keys(input) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:2168
---@param input any
---@return table result1
function Map.values(input) end

---@class MacroHandler.MultiGestureAPI
MultiGesture = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatMultiSwipeHosts.kt:103
---@overload fun(self: MacroHandler.MultiGestureAPI): MacroHandler.MultiGestureBuilder
---@return MacroHandler.MultiGestureBuilder result1
function MultiGesture.builder() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatMultiSwipeHosts.kt:105
---@overload fun(self: MacroHandler.MultiGestureAPI, path: any, sParam: any): boolean
---@param path any Flexible native coercion; retained as any, not guessed.
---@param sParam any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function MultiGesture.go(path, sParam) end

---@class MacroHandler.LicenseAPI
License = {}

--- Entitlement-based license bridge used by Lua `License` host object. Extracted from LuaScriptEngine for modular runtime host composition. / internal class CompatLicenseHost( private val isEntitled: () -> Boolean, private val deviceBinding: () -> String?, private val firstInstallTimeMs: () -> Long?, ) { fun getDeviceId(): String = runCatching { deviceBinding()?.trim().orEmpty() }.getOrDefault("") / activate() is a no-op in the entitlement model — premium is admin-granted server-side.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatLicenseHost.kt:17
---@overload fun(self: MacroHandler.LicenseAPI, macroId: any, key: any, secret: any): integer
---@param macroId any Flexible native coercion; retained as any, not guessed.
---@param key any Flexible native coercion; retained as any, not guessed.
---@param secret any Flexible native coercion; retained as any, not guessed.
---@return integer result1
function License.activate(macroId, key, secret) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatLicenseHost.kt:28
---@overload fun(self: MacroHandler.LicenseAPI, macroId: any): integer
---@param macroId any Flexible native coercion; retained as any, not guessed.
---@return integer result1
function License.daysLeft(macroId) end

--- Entitlement-based license bridge used by Lua `License` host object. Extracted from LuaScriptEngine for modular runtime host composition. / internal class CompatLicenseHost( private val isEntitled: () -> Boolean, private val deviceBinding: () -> String?, private val firstInstallTimeMs: () -> Long?, ) { fun getDeviceId(): String = runCatching { deviceBinding()?.trim().orEmpty() }.getOrDefault("") / activate() is a no-op in the entitlement model — premium is admin-granted server-side. / fun activate( macroId: Any?, key: Any?, secret: Any?, ): Int = if (isActive()) 1 else 0 fun isValid( macroId: Any?, secret: Any?, ): Boolean = isActive(macroId, secret) fun daysLeft(macroId: Any?): Int = if (isEntitled()) Int.MAX_VALUE else 0 / deactivate() is a no-op — only admin can revoke. TODO: expression return requires manual bridge tracing; return kept as any.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatLicenseHost.kt:31
---@overload fun(self: MacroHandler.LicenseAPI, macroId: any): any
---@param macroId any Flexible native coercion; retained as any, not guessed.
---@return any result1
function License.deactivate(macroId) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatLicenseHost.kt:42
---@overload fun(self: MacroHandler.LicenseAPI, macroId: any): number
---@param macroId any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return number result1
function License.expiresAt(macroId) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatLicenseHost.kt:12
---@overload fun(self: MacroHandler.LicenseAPI): string
---@return string result1
function License.getDeviceId() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatLicenseHost.kt:33
---@overload fun(self: MacroHandler.LicenseAPI, macroId: any): number
---@param macroId any Flexible native coercion; retained as any, not guessed.
---@return number result1
function License.getInstallDate(macroId) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatLicenseHost.kt:37
---@overload fun(self: MacroHandler.LicenseAPI, macroId: any, secret: any): boolean
---@param macroId any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@param secret any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function License.isActive(macroId, secret) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatLicenseHost.kt:23
---@overload fun(self: MacroHandler.LicenseAPI, macroId: any, secret: any): boolean
---@param macroId any Flexible native coercion; retained as any, not guessed.
---@param secret any Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function License.isValid(macroId, secret) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatLicenseHost.kt:44
---@overload fun(self: MacroHandler.LicenseAPI, macroId: any): string
---@param macroId any Kotlin default: null. Flexible native coercion; retained as any, not guessed.
---@return string result1
function License.type(macroId) end

---@class MacroHandler.MathAPI
Math = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatMathHosts.kt:211
---@overload fun(self: MacroHandler.MathAPI, value: any): number
---@param value any Flexible native coercion; retained as any, not guessed.
---@return number result1
function Math.acos(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatMathHosts.kt:210
---@overload fun(self: MacroHandler.MathAPI, value: any): number
---@param value any Flexible native coercion; retained as any, not guessed.
---@return number result1
function Math.asin(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatMathHosts.kt:209
---@overload fun(self: MacroHandler.MathAPI, y: any, x: any): number
---@param y any Flexible native coercion; retained as any, not guessed.
---@param x any Flexible native coercion; retained as any, not guessed.
---@return number result1
function Math.atan2(y, x) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatMathHosts.kt:206
---@overload fun(self: MacroHandler.MathAPI, x: any): number
---@param x any Flexible native coercion; retained as any, not guessed.
---@return number result1
function Math.cbrt(x) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatMathHosts.kt:208
---@overload fun(self: MacroHandler.MathAPI, x: any, y: any): number
---@param x any Flexible native coercion; retained as any, not guessed.
---@param y any Flexible native coercion; retained as any, not guessed.
---@return number result1
function Math.hypot(x, y) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatMathHosts.kt:207
---@overload fun(self: MacroHandler.MathAPI, x: any): number
---@param x any Flexible native coercion; retained as any, not guessed.
---@return number result1
function Math.log1p(x) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatMathHosts.kt:178
---@overload fun(self: MacroHandler.MathAPI, min?: any, max?: any): number
---@param min? any Kotlin default: 0.0. Flexible native coercion; retained as any, not guessed.
---@param max? any Kotlin default: 0.0. Flexible native coercion; retained as any, not guessed.
---@return number result1
function Math.randomRange(min, max) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatMathHosts.kt:204
---@overload fun(self: MacroHandler.MathAPI, rad: any): number
---@param rad any Flexible native coercion; retained as any, not guessed.
---@return number result1
function Math.toDegrees(rad) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatMathHosts.kt:205
---@overload fun(self: MacroHandler.MathAPI, deg: any): number
---@param deg any Flexible native coercion; retained as any, not guessed.
---@return number result1
function Math.toRadians(deg) end

---@class MacroHandler.ColorAPI
---@overload fun(): MacroHandler.Color
---@overload fun(hex: string): MacroHandler.Color
---@overload fun(r: number, g: number, b: number): MacroHandler.Color
---@overload fun(a: number, r: number, g: number, b: number): MacroHandler.Color
Color = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaJColorApiSurface.kt:97
---@overload fun(self: MacroHandler.ColorAPI, color: any): number|nil
---@param color any
---@return number|nil result1
function Color.alpha(color) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaJColorApiSurface.kt:96
---@overload fun(self: MacroHandler.ColorAPI, color: any): number|nil
---@param color any
---@return number|nil result1
function Color.blue(color) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaJColorApiSurface.kt:63
---@overload fun(self: MacroHandler.ColorAPI, left: any, right: any): number|nil
---@param left any
---@param right any
---@return number|nil result1
function Color.compare(left, right) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaJColorApiSurface.kt:70
---@overload fun(self: MacroHandler.ColorAPI, left: any, right: any): number|nil
---@param left any
---@param right any
---@return number|nil result1
function Color.compareRGB(left, right) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaJColorApiSurface.kt:134
---@overload fun(self: MacroHandler.ColorAPI, left: any, right: any): number|nil
---@param left any
---@param right any
---@return number|nil result1
function Color.contrast(left, right) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaJColorApiSurface.kt:107
---@overload fun(self: MacroHandler.ColorAPI, color: any, amount: any): MacroHandler.Color|nil
---@param color any
---@param amount any
---@return MacroHandler.Color|nil result1
function Color.darken(color, amount) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaJColorApiSurface.kt:77
---@overload fun(self: MacroHandler.ColorAPI, left: any, right: any, mode?: any): number|nil
---@param left any
---@param right any
---@param mode? any
---@return number|nil result1
function Color.deltaE(left, right, mode) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:2042
---@overload fun(self: MacroHandler.ColorAPI, h: any, s: any, v: any, alpha?: any): MacroHandler.Color
---@param h any
---@param s any
---@param v any
---@param alpha? any
---@return MacroHandler.Color result1
function Color.fromHSV(h, s, v, alpha) end

--- Screen pixel read; direct coordinates/Point signatures are traced from the binding.
--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:1286
---@overload fun(self: MacroHandler.ColorAPI, xOrPoint: number|MacroHandler.Point, y?: number): MacroHandler.Color|nil
---@param xOrPoint number|MacroHandler.Point
---@param y? number
---@return MacroHandler.Color|nil result1
function Color.get(xOrPoint, y) end

--- Result index preserves requested point order; false marks failed sampling. getAll uses macro-reference coordinates, getAllScreen uses screen pixels.
--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:1858
---@overload fun(self: MacroHandler.ColorAPI, ...: any): (MacroHandler.Color|false)[]
---@param ... any
---@return (MacroHandler.Color|false)[] result1
function Color.getAll(...) end

--- Result index preserves requested point order; false marks failed sampling. getAll uses macro-reference coordinates, getAllScreen uses screen pixels.
--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:1915
---@overload fun(self: MacroHandler.ColorAPI, ...: any): (string|false)[]
---@param ... any
---@return (string|false)[] result1
function Color.getAllScreen(...) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaJColorApiSurface.kt:95
---@overload fun(self: MacroHandler.ColorAPI, color: any): number|nil
---@param color any
---@return number|nil result1
function Color.green(color) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaJColorApiSurface.kt:118
---@overload fun(self: MacroHandler.ColorAPI, color: any): MacroHandler.Color|nil
---@param color any
---@return MacroHandler.Color|nil result1
function Color.invert(color) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaJColorApiSurface.kt:56
---@overload fun(self: MacroHandler.ColorAPI, left: any, right: any, method?: any): boolean
---@param left any
---@param right any
---@param method? any
---@return boolean result1
function Color.isExact(left, right, method) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaJColorApiSurface.kt:54
---@overload fun(self: MacroHandler.ColorAPI, left: any, right: any, threshold?: any, method?: any): boolean
---@param left any
---@param right any
---@param threshold? any
---@param method? any
---@return boolean result1
function Color.isSame(left, right, threshold, method) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaJColorApiSurface.kt:53
---@overload fun(self: MacroHandler.ColorAPI, left: any, right: any, threshold?: any, method?: any): boolean
---@param left any
---@param right any
---@param threshold? any
---@param method? any
---@return boolean result1
function Color.isSimilar(left, right, threshold, method) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:1997
---@overload fun(self: MacroHandler.ColorAPI, left: any, right: any, hueTolerance?: any, saturationTolerance?: any, valueTolerance?: any): boolean
---@param left any
---@param right any
---@param hueTolerance? any
---@param saturationTolerance? any
---@param valueTolerance? any
---@return boolean result1
function Color.isSimilarHSV(left, right, hueTolerance, saturationTolerance, valueTolerance) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaJColorApiSurface.kt:103
---@overload fun(self: MacroHandler.ColorAPI, color: any, amount: any): MacroHandler.Color|nil
---@param color any
---@param amount any
---@return MacroHandler.Color|nil result1
function Color.lighten(color, amount) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaJColorApiSurface.kt:130
---@overload fun(self: MacroHandler.ColorAPI, color: any): number|nil
---@param color any
---@return number|nil result1
function Color.luminance(color) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaJColorApiSurface.kt:111
---@overload fun(self: MacroHandler.ColorAPI, left: any, right: any, ratio?: any): MacroHandler.Color|nil
---@param left any
---@param right any
---@param ratio? any
---@return MacroHandler.Color|nil result1
function Color.mix(left, right, ratio) end

--- Screen pixel read; direct coordinates/Point signatures are traced from the binding.
--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:1836
---@overload fun(self: MacroHandler.ColorAPI, xOrPoint: number|MacroHandler.Point, y?: number): MacroHandler.Color|nil
---@param xOrPoint number|MacroHandler.Point
---@param y? number
---@return MacroHandler.Color|nil result1
function Color.pixel(xOrPoint, y) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaJColorApiSurface.kt:94
---@overload fun(self: MacroHandler.ColorAPI, color: any): number|nil
---@param color any
---@return number|nil result1
function Color.red(color) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:2015
---@overload fun(self: MacroHandler.ColorAPI, color: any): MacroHandler.HSV|nil
---@param color any
---@return MacroHandler.HSV|nil result1
function Color.toHSV(color) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaJColorApiSurface.kt:126
---@overload fun(self: MacroHandler.ColorAPI, color: any): string|nil
---@param color any
---@return string|nil result1
function Color.toHex(color) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:2029
---@overload fun(self: MacroHandler.ColorAPI, color: any): MacroHandler.Lab|nil
---@param color any
---@return MacroHandler.Lab|nil result1
function Color.toLab(color) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaJColorApiSurface.kt:93
---@overload fun(self: MacroHandler.ColorAPI, color: any): number|nil
---@param color any
---@return number|nil result1
function Color.value(color) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaJColorApiSurface.kt:99
---@overload fun(self: MacroHandler.ColorAPI, color: any): string|nil
---@param color any
---@return string|nil result1
function Color.valueString(color) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaJColorApiSurface.kt:122
---@overload fun(self: MacroHandler.ColorAPI, color: any, alpha: any): MacroHandler.Color|nil
---@param color any
---@param alpha any
---@return MacroHandler.Color|nil result1
function Color.withAlpha(color, alpha) end

---@class MacroHandler.PointAPI
---@overload fun(x?: number, y?: number): MacroHandler.Point|nil
Point = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:1715
---@overload fun(self: MacroHandler.PointAPI, x?: number, y?: number, edges?: integer): MacroHandler.Point|nil
---@param x? number
---@param y? number
---@param edges? integer Default 0; bit combination of LEFT/TOP/RIGHT/BOTTOM.
---@return MacroHandler.Point|nil result1
function Point.scale(x, y, edges) end

---@class MacroHandler.RegionAPI
---@overload fun(x?: number, y?: number, width?: number, height?: number): MacroHandler.Region
Region = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:1715
---@overload fun(self: MacroHandler.RegionAPI, x?: number, y?: number, width?: number, height?: number, edges?: integer): MacroHandler.Region
---@param x? number
---@param y? number
---@param width? number
---@param height? number
---@param edges? integer
---@return MacroHandler.Region result1
function Region.scale(x, y, width, height, edges) end

---@class MacroHandler.HudAPI
---@overload fun(x?: number, y?: number, width?: number, height?: number, clickable?: boolean): MacroHandler.Hud
Hud = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:872
---@return nil result1
function Hud.off() end

---@class MacroHandler.JSONAPI
JSON = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:69
---@overload fun(self: MacroHandler.JSONAPI, json: string): any
---@param json string
---@return any result1
function JSON.parse(json) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:83
---@overload fun(self: MacroHandler.JSONAPI, value: any): string
---@param value any
---@return string result1
function JSON.stringify(value) end

---@class MacroHandler.RegexAPI
Regex = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:280
---@overload fun(self: MacroHandler.RegexAPI, pattern: string, text: string): boolean
---@param pattern string
---@param text string
---@return boolean result1
function Regex.find(pattern, text) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:263
---@overload fun(self: MacroHandler.RegexAPI, pattern: string, text: string): string|nil
---@param pattern string
---@param text string
---@return string|nil result1
function Regex.match(pattern, text) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:272
---@overload fun(self: MacroHandler.RegexAPI, pattern: string, text: string): string[]
---@param pattern string
---@param text string
---@return string[] result1
function Regex.matchAll(pattern, text) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:290
---@overload fun(self: MacroHandler.RegexAPI, pattern: string, text: string, replacement: string): string
---@param pattern string
---@param text string
---@param replacement string
---@return string result1
function Regex.replace(pattern, text, replacement) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:300
---@overload fun(self: MacroHandler.RegexAPI, pattern: string, text: string): string[]
---@param pattern string
---@param text string
---@return string[] result1
function Regex.split(pattern, text) end

---@class MacroHandler.KVAPI
KV = {}

--- TODO: polymorphic Lua handler; shape/return and flexible arguments kept conservative.
--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:467
---@overload fun(self: MacroHandler.KVAPI, key: any, value: any): any
---@param key any
---@param value any
---@return any result1
function KV.append(key, value) end

--- TODO: polymorphic Lua handler; shape/return and flexible arguments kept conservative.
--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:435
---@overload fun(self: MacroHandler.KVAPI): any
---@return any result1
function KV.clear() end

--- TODO: polymorphic Lua handler; shape/return and flexible arguments kept conservative.
--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:428
---@overload fun(self: MacroHandler.KVAPI, key: any): any
---@param key any
---@return any result1
function KV.delete(key) end

--- TODO: polymorphic Lua handler; shape/return and flexible arguments kept conservative.
--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:406
---@overload fun(self: MacroHandler.KVAPI, key: any, defaultVal: any): any
---@param key any
---@param defaultVal any
---@return any result1
function KV.get(key, defaultVal) end

--- TODO: polymorphic Lua handler; shape/return and flexible arguments kept conservative.
--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:526
---@overload fun(self: MacroHandler.KVAPI): any
---@return any result1
function KV.getAll() end

--- TODO: polymorphic Lua handler; shape/return and flexible arguments kept conservative.
--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:691
---@overload fun(self: MacroHandler.KVAPI, key: any, defaultVal: any): any
---@param key any
---@param defaultVal any
---@return any result1
function KV.getBoolean(key, defaultVal) end

--- TODO: polymorphic Lua handler; shape/return and flexible arguments kept conservative.
--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:672
---@overload fun(self: MacroHandler.KVAPI, key: any, defaultVal: any): any
---@param key any
---@param defaultVal any
---@return any result1
function KV.getNumber(key, defaultVal) end

--- TODO: polymorphic Lua handler; shape/return and flexible arguments kept conservative.
--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:656
---@overload fun(self: MacroHandler.KVAPI, key: any, defaultVal: any): any
---@param key any
---@param defaultVal any
---@return any result1
function KV.getString(key, defaultVal) end

--- TODO: polymorphic Lua handler; shape/return and flexible arguments kept conservative.
--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:507
---@overload fun(self: MacroHandler.KVAPI, key: any): any
---@param key any
---@return any result1
function KV.has(key) end

--- TODO: polymorphic Lua handler; shape/return and flexible arguments kept conservative.
--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:630
---@overload fun(self: MacroHandler.KVAPI, key: any, by: any): any
---@param key any
---@param by any
---@return any result1
function KV.increment(key, by) end

--- TODO: polymorphic Lua handler; shape/return and flexible arguments kept conservative.
--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:444
---@overload fun(self: MacroHandler.KVAPI): any
---@return any result1
function KV.keys() end

--- TODO: polymorphic Lua handler; shape/return and flexible arguments kept conservative.
--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:383
---@overload fun(self: MacroHandler.KVAPI, key: any, value: any): any
---@param key any
---@param value any
---@return any result1
function KV.set(key, value) end

--- TODO: polymorphic Lua handler; shape/return and flexible arguments kept conservative.
--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:558
---@overload fun(self: MacroHandler.KVAPI, arg: any): any
---@param arg any
---@return any result1
function KV.setAll(arg) end

--- TODO: polymorphic Lua handler; shape/return and flexible arguments kept conservative.
--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:517
---@overload fun(self: MacroHandler.KVAPI): any
---@return any result1
function KV.size() end

---@class MacroHandler.CollectionAPI
Collection = {}

--- TODO: polymorphic Lua handler; shape/return and flexible arguments kept conservative.
--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:762
---@overload fun(self: MacroHandler.CollectionAPI, name: any): any
---@param name any
---@return any result1
function Collection.clear(name) end

--- TODO: polymorphic Lua handler; shape/return and flexible arguments kept conservative.
--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:821
---@overload fun(self: MacroHandler.CollectionAPI, name: any): any
---@param name any
---@return any result1
function Collection.count(name) end

--- TODO: polymorphic Lua handler; shape/return and flexible arguments kept conservative.
--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:755
---@overload fun(self: MacroHandler.CollectionAPI, name: any, id: any): any
---@param name any
---@param id any
---@return any result1
function Collection.delete(name, id) end

--- TODO: polymorphic Lua handler; shape/return and flexible arguments kept conservative.
--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:795
---@overload fun(self: MacroHandler.CollectionAPI, arg1: any, arg2: any, arg3: any, arg4: any): any
---@param arg1 any
---@param arg2 any
---@param arg3 any
---@param arg4 any
---@return any result1
function Collection.find(arg1, arg2, arg3, arg4) end

--- TODO: polymorphic Lua handler; shape/return and flexible arguments kept conservative.
--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:736
---@overload fun(self: MacroHandler.CollectionAPI, name: string, id: string, defaultValue: any): any
---@param name string
---@param id string
---@param defaultValue any
---@return any result1
function Collection.get(name, id, defaultValue) end

--- TODO: polymorphic Lua handler; shape/return and flexible arguments kept conservative.
--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:748
---@overload fun(self: MacroHandler.CollectionAPI, name: any, id: any): any
---@param name any
---@param id any
---@return any result1
function Collection.has(name, id) end

--- TODO: polymorphic Lua handler; shape/return and flexible arguments kept conservative.
--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:769
---@overload fun(self: MacroHandler.CollectionAPI, arg1: any, arg2: any, arg3: any): any
---@param arg1 any
---@param arg2 any
---@param arg3 any
---@return any result1
function Collection.keys(arg1, arg2, arg3) end

--- TODO: polymorphic Lua handler; shape/return and flexible arguments kept conservative.
--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:782
---@overload fun(self: MacroHandler.CollectionAPI, arg1: any, arg2: any, arg3: any): any
---@param arg1 any
---@param arg2 any
---@param arg3 any
---@return any result1
function Collection.list(arg1, arg2, arg3) end

--- TODO: polymorphic Lua handler; shape/return and flexible arguments kept conservative.
--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:724
---@overload fun(self: MacroHandler.CollectionAPI, name: string, id: string, document: any): any
---@param name string
---@param id string
---@param document any
---@return any result1
function Collection.put(name, id, document) end

--- TODO: polymorphic Lua handler; shape/return and flexible arguments kept conservative.
--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:809
---@overload fun(self: MacroHandler.CollectionAPI, arg1: any, arg2: any, arg3: any): any
---@param arg1 any
---@param arg2 any
---@param arg3 any
---@return any result1
function Collection.update(arg1, arg2, arg3) end

---@class MacroHandler.ArrayAPI
Array = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:1378
---@overload fun(self: MacroHandler.ArrayAPI, items: any[], value: any): boolean
---@param items any[]
---@param value any
---@return boolean result1
function Array.contains(items, value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:1340
---@overload fun(self: MacroHandler.ArrayAPI, items: any[], predicate: (fun(value: any, index: integer): any)): any[]
---@param items any[]
---@param predicate fun(value: any, index: integer): any
---@return any[] result1
function Array.filter(items, predicate) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:1406
---@overload fun(self: MacroHandler.ArrayAPI, items: any[], separator?: string): string
---@param items any[]
---@param separator? string Default comma.
---@return string result1
function Array.join(items, separator) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:1388
---@overload fun(self: MacroHandler.ArrayAPI, items: any[]): integer
---@param items any[]
---@return integer result1
function Array.length(items) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:1355
---@overload fun(self: MacroHandler.ArrayAPI, items: any[], mapper: (fun(value: any, index: integer): any)): any[]
---@param items any[]
---@param mapper fun(value: any, index: integer): any
---@return any[] result1
function Array.map(items, mapper) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:1366
---@overload fun(self: MacroHandler.ArrayAPI, items: any[], reducer: (fun(accumulator: any, value: any): any), initial?: any): any
---@param items any[]
---@param reducer fun(accumulator: any, value: any): any
---@param initial? any
---@return any result1
function Array.reduce(items, reducer, initial) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:1394
---@overload fun(self: MacroHandler.ArrayAPI, items: any[]): any[]
---@param items any[]
---@return any[] result1
function Array.reverse(items) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:1321
---@overload fun(self: MacroHandler.ArrayAPI, items: any[], comparator?: (fun(left: any, right: any): boolean)): any[]
---@param items any[]
---@param comparator? fun(left: any, right: any): boolean
---@return any[] result1
function Array.sort(items, comparator) end

---@class MacroHandler.UtilsAPI
Utils = {}

--- TODO: count default/limits are described only by the binding; see source.
--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:1727
---@overload fun(self: MacroHandler.UtilsAPI, start: MacroHandler.Point, finish: MacroHandler.Point, count?: integer): MacroHandler.Point[]
---@param start MacroHandler.Point
---@param finish MacroHandler.Point
---@param count? integer
---@return MacroHandler.Point[] result1
function Utils.interpolatePoints(start, finish, count) end

---@class MacroHandler.MetricsAPI
Metrics = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:2259
---@return boolean result1
function Metrics.disable() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:2253
---@return boolean result1
function Metrics.enable() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:2270
---@return boolean result1
function Metrics.reset() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:2265
---@return string result1
function Metrics.summary() end

---@class MacroHandler.CryptoAPI
Crypto = {}

--- Returns the decoded string. Assumes UTF-8 for the decoded content — callers who decode binary should hex-encode it back via [hexEncode].
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatCryptoHosts.kt:101
---@overload fun(self: MacroHandler.CryptoAPI, encoded: any, urlSafe?: any): string
---@param encoded any Flexible native coercion; retained as any, not guessed.
---@param urlSafe? any Kotlin default: false. Flexible native coercion; retained as any, not guessed.
---@return string result1
function Crypto.base64Decode(encoded, urlSafe) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatCryptoHosts.kt:77
---@overload fun(self: MacroHandler.CryptoAPI, data: any, urlSafe?: any): string
---@param data any Flexible native coercion; retained as any, not guessed.
---@param urlSafe? any Kotlin default: false. Flexible native coercion; retained as any, not guessed.
---@return string result1
function Crypto.base64Encode(data, urlSafe) end

--- RFC 4122 v4 UUID using a CSPRNG. Lowercase, dash-separated. / fun uuid(): String = UUID.randomUUID().toString() // ── Constant-time equality ───────────────────────────────────────────────── / Constant-time string equality. Use this to compare tokens, MAC tags, session ids etc. Plain `==` leaks timing information that can be turned into a successful brute force against an HMAC tag in some scenarios. Returns `false` for null inputs or when the strings have different lengths (length-leak is inherent to any constant-time comparison and cannot be hidden without padding both inputs).
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatCryptoHosts.kt:205
---@overload fun(self: MacroHandler.CryptoAPI, a: any, b: any): boolean
---@param a any Flexible native coercion; retained as any, not guessed.
---@param b any Flexible native coercion; retained as any, not guessed.
---@return boolean result1
function Crypto.constantTimeEquals(a, b) end

--- Generic hash. Accepts JVM `MessageDigest` algorithm names, case- and separator-insensitive. Examples: "SHA-256", "sha256", "SHA_256". Returns empty string on unknown algorithm or oversize input.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatCryptoHosts.kt:54
---@overload fun(self: MacroHandler.CryptoAPI, algorithm: any, data: any): string
---@param algorithm any Flexible native coercion; retained as any, not guessed.
---@param data any Flexible native coercion; retained as any, not guessed.
---@return string result1
function Crypto.hash(algorithm, data) end

--- Decodes a hex string to its UTF-8 representation. Returns empty string on malformed input (odd length, non-hex characters, or invalid UTF-8 bytes).
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatCryptoHosts.kt:139
---@overload fun(self: MacroHandler.CryptoAPI, hex: any): string
---@param hex any Flexible native coercion; retained as any, not guessed.
---@return string result1
function Crypto.hexDecode(hex) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatCryptoHosts.kt:126
---@overload fun(self: MacroHandler.CryptoAPI, data: any): string
---@param data any Flexible native coercion; retained as any, not guessed.
---@return string result1
function Crypto.hexEncode(data) end

--- Generic hash. Accepts JVM `MessageDigest` algorithm names, case- and separator-insensitive. Examples: "SHA-256", "sha256", "SHA_256". Returns empty string on unknown algorithm or oversize input. / fun hash(algorithm: Any?, data: Any?): String { val algo = normalizeDigestAlgorithm(algorithm.toStringSafe()) ?: return "" return digestHex(algo, data) } // ── HMAC conveniences ─────────────────────────────────────────────────────── fun hmacSha1(key: Any?, data: Any?): String = hmacHex("HmacSHA1", key, data) fun hmacSha256(key: Any?, data: Any?): String = hmacHex("HmacSHA256", key, data) fun hmacSha512(key: Any?, data: Any?): String = hmacHex("HmacSHA512", key, data) / Generic HMAC. Accepts JVM `Mac` algorithm names, normalized similarly to [hash]. Examples: "HmacSHA256", "hmac-sha256", "HMAC_SHA512".
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatCryptoHosts.kt:69
---@overload fun(self: MacroHandler.CryptoAPI, algorithm: any, key: any, data: any): string
---@param algorithm any Flexible native coercion; retained as any, not guessed.
---@param key any Flexible native coercion; retained as any, not guessed.
---@param data any Flexible native coercion; retained as any, not guessed.
---@return string result1
function Crypto.hmac(algorithm, key, data) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatCryptoHosts.kt:61
---@overload fun(self: MacroHandler.CryptoAPI, key: any, data: any): string
---@param key any Flexible native coercion; retained as any, not guessed.
---@param data any Flexible native coercion; retained as any, not guessed.
---@return string result1
function Crypto.hmacSha1(key, data) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatCryptoHosts.kt:62
---@overload fun(self: MacroHandler.CryptoAPI, key: any, data: any): string
---@param key any Flexible native coercion; retained as any, not guessed.
---@param data any Flexible native coercion; retained as any, not guessed.
---@return string result1
function Crypto.hmacSha256(key, data) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatCryptoHosts.kt:63
---@overload fun(self: MacroHandler.CryptoAPI, key: any, data: any): string
---@param key any Flexible native coercion; retained as any, not guessed.
---@param data any Flexible native coercion; retained as any, not guessed.
---@return string result1
function Crypto.hmacSha512(key, data) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatCryptoHosts.kt:43
---@overload fun(self: MacroHandler.CryptoAPI, data: any): string
---@param data any Flexible native coercion; retained as any, not guessed.
---@return string result1
function Crypto.md5(data) end

--- Returns [length] cryptographically-secure random bytes as a lowercase hex string (so the output is 2length characters). `length` is clamped to the inclusive range [1, [MAX_RANDOM_BYTES]] — values outside the range are coerced to the nearest boundary rather than silently rejected, because Lua scripts often compute the length dynamically.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatCryptoHosts.kt:165
---@overload fun(self: MacroHandler.CryptoAPI, length?: any): string
---@param length? any Kotlin default: 16. Flexible native coercion; retained as any, not guessed.
---@return string result1
function Crypto.randomBytes(length) end

--- Returns [length] cryptographically-secure random bytes as a lowercase hex string (so the output is 2length characters). `length` is clamped to the inclusive range [1, [MAX_RANDOM_BYTES]] — values outside the range are coerced to the nearest boundary rather than silently rejected, because Lua scripts often compute the length dynamically. / @JvmOverloads fun randomBytes(length: Any? = 16): String { val requested = length.toIntCompat(16) val n = requested.coerceIn(1, MAX_RANDOM_BYTES) val buf = ByteArray(n) secureRandom.nextBytes(buf) return bytesToHex(buf) } / Returns [length] cryptographically-secure random hex characters. `length` is clamped to the inclusive range [2, 2[MAX_RANDOM_BYTES]]; odd values are rounded up to the next even number to keep byte-alignment.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatCryptoHosts.kt:179
---@overload fun(self: MacroHandler.CryptoAPI, length?: any): string
---@param length? any Kotlin default: 32. Flexible native coercion; retained as any, not guessed.
---@return string result1
function Crypto.randomHex(length) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatCryptoHosts.kt:44
---@overload fun(self: MacroHandler.CryptoAPI, data: any): string
---@param data any Flexible native coercion; retained as any, not guessed.
---@return string result1
function Crypto.sha1(data) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatCryptoHosts.kt:45
---@overload fun(self: MacroHandler.CryptoAPI, data: any): string
---@param data any Flexible native coercion; retained as any, not guessed.
---@return string result1
function Crypto.sha256(data) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatCryptoHosts.kt:46
---@overload fun(self: MacroHandler.CryptoAPI, data: any): string
---@param data any Flexible native coercion; retained as any, not guessed.
---@return string result1
function Crypto.sha384(data) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatCryptoHosts.kt:47
---@overload fun(self: MacroHandler.CryptoAPI, data: any): string
---@param data any Flexible native coercion; retained as any, not guessed.
---@return string result1
function Crypto.sha512(data) end

--- Returns [length] cryptographically-secure random hex characters. `length` is clamped to the inclusive range [2, 2[MAX_RANDOM_BYTES]]; odd values are rounded up to the next even number to keep byte-alignment. / @JvmOverloads fun randomHex(length: Any? = 32): String { val requested = length.toIntCompat(32).coerceAtLeast(2) val even = if (requested % 2 == 0) requested else requested + 1 val clamped = even.coerceAtMost(MAX_RANDOM_BYTES 2) val nBytes = clamped / 2 val buf = ByteArray(nBytes) secureRandom.nextBytes(buf) return bytesToHex(buf) } / RFC 4122 v4 UUID using a CSPRNG. Lowercase, dash-separated.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatCryptoHosts.kt:192
---@overload fun(self: MacroHandler.CryptoAPI): string
---@return string result1
function Crypto.uuid() end

---@class MacroHandler.ToastParamsAPI
---@overload fun(): MacroHandler.ToastParams
ToastParams = {}

---@class MacroHandler.TuneAPI
Tune = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTuneHost.kt:142
---@overload fun(self: MacroHandler.TuneAPI): boolean
---@return boolean result1
function Tune.cacheOff() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTuneHost.kt:141
---@overload fun(self: MacroHandler.TuneAPI): boolean
---@return boolean result1
function Tune.cacheOn() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTuneHost.kt:85
---@overload fun(self: MacroHandler.TuneAPI): integer
---@return integer result1
function Tune.getClickDelay() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTuneHost.kt:122
---@overload fun(self: MacroHandler.TuneAPI): integer
---@return integer result1
function Tune.getComparisonHeight() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTuneHost.kt:114
---@overload fun(self: MacroHandler.TuneAPI): integer
---@return integer result1
function Tune.getComparisonWidth() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTuneHost.kt:75
---@overload fun(self: MacroHandler.TuneAPI): number
---@return number result1
function Tune.getMinScore() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTuneHost.kt:104
---@overload fun(self: MacroHandler.TuneAPI): integer
---@return integer result1
function Tune.getScanInterval() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTuneHost.kt:93
---@overload fun(self: MacroHandler.TuneAPI): integer
---@return integer result1
function Tune.getSwipeDelay() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTuneHost.kt:132
---@overload fun(self: MacroHandler.TuneAPI): boolean
---@return boolean result1
function Tune.grayscaleOff() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTuneHost.kt:126
---@overload fun(self: MacroHandler.TuneAPI): boolean
---@return boolean result1
function Tune.grayscaleOn() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTuneHost.kt:143
---@overload fun(self: MacroHandler.TuneAPI): boolean
---@return boolean result1
function Tune.isCacheEnabled() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTuneHost.kt:137
---@overload fun(self: MacroHandler.TuneAPI): boolean
---@return boolean result1
function Tune.isGrayscale() end

--- Restores every field to its documented default. Useful at macro start when a previous run left the runtime in a non-default state.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTuneHost.kt:151
---@overload fun(self: MacroHandler.TuneAPI): boolean
---@return boolean result1
function Tune.reset() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTuneHost.kt:79
---@overload fun(self: MacroHandler.TuneAPI, value: any): integer
---@param value any Flexible native coercion; retained as any, not guessed.
---@return integer result1
function Tune.setClickDelay(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTuneHost.kt:116
---@overload fun(self: MacroHandler.TuneAPI, value: any): integer
---@param value any Flexible native coercion; retained as any, not guessed.
---@return integer result1
function Tune.setComparisonHeight(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTuneHost.kt:108
---@overload fun(self: MacroHandler.TuneAPI, value: any): integer
---@param value any Flexible native coercion; retained as any, not guessed.
---@return integer result1
function Tune.setComparisonWidth(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTuneHost.kt:68
---@overload fun(self: MacroHandler.TuneAPI, value: any): number
---@param value any Flexible native coercion; retained as any, not guessed.
---@return number result1
function Tune.setMinScore(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTuneHost.kt:97
---@overload fun(self: MacroHandler.TuneAPI, value: any): integer
---@param value any Flexible native coercion; retained as any, not guessed.
---@return integer result1
function Tune.setScanInterval(value) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatTuneHost.kt:87
---@overload fun(self: MacroHandler.TuneAPI, value: any): integer
---@param value any Flexible native coercion; retained as any, not guessed.
---@return integer result1
function Tune.setSwipeDelay(value) end

---@class MacroHandler.MacroAPI
Macro = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:2221
---@return table[] result1
function Macro.list() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:2240
---@return any result1
function Macro.params() end

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:2224
---@param id any
---@param params? any
---@return boolean result1
function Macro.run(id, params) end

--- May raise a Lua error for cyclic/re-entrant calls.
--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:2228
---@param id any
---@param params? any
---@param timeoutMs? any
---@return table result1
function Macro.runWait(id, params, timeoutMs) end

---@class MacroHandler.HumanizeAPI
Humanize = {}

--- Sets the humanize level (clamped to 0..3) for the active macro. Returns the stored level. / fun setLevel(value: Any?): Int { val requested = value.toIntCompat(HumanizeGesturePolicy.LEVEL_OFF) val sanitized = requested.coerceIn(0, MAX_LEVEL) val macroId = activeMacroIdProvider()?.trim().orEmpty() if (macroId.isEmpty()) { logger("Humanize.setLevel: aktif makro yok, seviye kaydedilmedi.") return HumanizeGesturePolicy.LEVEL_OFF } val stored = writeLevel(macroId, sanitized) if (requested != sanitized) { logger("Humanize.setLevel: deger 0-$MAX_LEVEL araligina sabitlendi ($requested -> $sanitized).") } return stored } / Current humanize level for the active macro (0 when no macro context).
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatHumanizeHost.kt:47
---@overload fun(self: MacroHandler.HumanizeAPI): integer
---@return integer result1
function Humanize.getLevel() end

--- Sets the humanize level (clamped to 0..3) for the active macro. Returns the stored level.
--- Source: app/src/main/java/com/macrohandler/app/runtime/compat/CompatHumanizeHost.kt:31
---@overload fun(self: MacroHandler.HumanizeAPI, value: any): integer
---@param value any Flexible native coercion; retained as any, not guessed.
---@return integer result1
function Humanize.setLevel(value) end

---@class MacroHandler.DialogAPI
---@overload fun(title?: string): MacroHandler.DialogOpaque
Dialog = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:1330
---@return MacroHandler.SettingBuilder result1
function Dialog.init() end

---@class MacroHandler.VisualTargetAPI
VisualTarget = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/VisualTargetLuaApi.kt:601
---@param profile MacroHandler.VisualTargetProfile
---@param clickParam? MacroHandler.ClickParam
---@return boolean result1
function VisualTarget.click(profile, clickParam) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/VisualTargetLuaApi.kt:200
---@param name string
---@param views table[]
---@param options? table
---@return MacroHandler.VisualTargetProfile result1
function VisualTarget.profile(name, views, options) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/VisualTargetLuaApi.kt:237
---@param previous? MacroHandler.VisualTargetProfile
---@param name string
---@param views table[]
---@param options? table
---@return MacroHandler.VisualTargetProfile result1
function VisualTarget.refresh(previous, name, views, options) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/VisualTargetLuaApi.kt:584
---@param profile MacroHandler.VisualTargetProfile
---@return boolean result1
function VisualTarget.reset(profile) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/VisualTargetLuaApi.kt:579
---@param profile MacroHandler.VisualTargetProfile
---@return MacroHandler.VisualTargetSnapshot|nil result1
function VisualTarget.snapshot(profile) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/VisualTargetLuaApi.kt:509
---@param profile MacroHandler.VisualTargetProfile
---@param region MacroHandler.Region
---@return MacroHandler.VisualTargetSnapshot result1
function VisualTarget.step(profile, region) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/VisualTargetLuaApi.kt:610
---@param profile MacroHandler.VisualTargetProfile
---@param fromX number
---@param fromY number
---@param durationMs? number
---@return boolean result1
function VisualTarget.swipeToward(profile, fromX, fromY, durationMs) end

---@class MacroHandler.PhaseGateAPI
PhaseGate = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/PhaseGateLuaApi.kt:1
---@param options? MacroHandler.PhaseGateOptions
---@return MacroHandler.PhaseGateHandle result1
function PhaseGate.create(options) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/PhaseGateLuaApi.kt:1
---@param handle MacroHandler.PhaseGateHandle
---@param options? MacroHandler.PhaseGateOptions
---@return boolean result1
function PhaseGate.next(handle, options) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/PhaseGateLuaApi.kt:1
---@param handle MacroHandler.PhaseGateHandle
---@param options? MacroHandler.PhaseGateOptions
---@return nil result1
function PhaseGate.reset(handle, options) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/PhaseGateLuaApi.kt:1
---@param handle MacroHandler.PhaseGateHandle
---@return MacroHandler.PhaseGateStatus result1
function PhaseGate.status(handle) end

---@class MacroHandler.NavigationAPI
Navigation = {}

--- Source: app/src/main/java/com/macrohandler/app/runtime/navigation/NavigationLuaApi.kt:18
---@param options table
---@param onCheckpoint? fun(checkpoint: table): boolean
---@return table result1
function Navigation.run(options, onCheckpoint) end

--- Source: app/src/main/java/com/macrohandler/app/runtime/navigation/NavigationLuaApi.kt:13
---@return boolean result1
function Navigation.stop() end
