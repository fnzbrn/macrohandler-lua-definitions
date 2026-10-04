# Macro Handler Lua API Definition Audit

Definition version: **0.1.0**. Application source profile: **1.0.51 / 65**.
Prepared from a working-tree source snapshot on **2026-10-04**.
Source HEAD: `c98456b8a94f02491c392e36f12c7ec8d12b9b81`.
API evidence fingerprint: `eb3538a5cb1b012e84711cc9ba7bc29844b10b05cd00b9e911f15555a1b5feaa`.

This audit concerns IDE declarations and source evidence, not certification of a shipped
APK, Google Play version, physical device, or experimental native runtime.

## Evidence status

- **Verified:** catalog/name coverage, strict source fingerprint comparison at preparation,
  definition syntax, CLI diagnostics and the recorded language-server protocol checks.
- **Partially verified:** flexible native inputs, dynamic return/payload schemas, direct
  utility arity, custom editor DSL and experimental native-host compatibility.
- **Not verified:** actual VS Code GUI, Android execution of examples, physical-device
  behavior, or binary parity with Play 1.0.50.

No application runtime, Android behavior, API name, production configuration or deployment
was changed to prepare this package. Documentation discrepancies were reported rather
than changing the main application or its website.

## Where the real API is defined

Runtime source paths below are relative to
`app/src/main/java/com/macrohandler/app/runtime/`.

1. `app/build.gradle.kts:1274-1275` records versionCode 65 and versionName 1.0.51, and pins
   LuaJ 3.0.1. The default `luaj` backend is selected by `LuaRuntimeEngineFactory.kt`.
2. `ExecutionLifecycleManager.kt` creates `JsePlatform.standardGlobals()`, configures the
   sandbox, installs APIs, loads trusted polyfills and runs user scripts. The effective
   user interface must be inspected after all these steps.
3. `ScriptApiCatalog.kt` records approved names. It is a catalog, not proof that every
   method name exists directly on the global namespace table.
4. `ScriptApiInstaller.kt` defines global calls, manual tables, callable constructors,
   host wrappers and embedded/trusted modules.
5. `LuaApiRegistry.kt` intersects declared public nonstatic/nonbridge methods with the
   applicable catalog/allowlist, strips bound self arguments and normalizes returned values.
6. `Compat*` and `compat/*` classes define actual parameters, overloads, units and return types.
7. `WorkflowLuaApi.kt`, `FormLuaApi.kt`, `PhaseGateLuaApi.kt`, `ApiCapabilitiesLuaApi.kt`,
   `ModuleLuaApi.kt`, `VisualTargetLuaApi.kt`, `LuaUtilityApis.kt`, `LuaAsyncApi.kt`,
   `LuaEventBus.kt`, and navigation/agent bindings produce Lua tables and callbacks.
8. `app/src/main/assets/lua/polyfills.lua` adds public helper functions and standard-library
   extensions. Its final `sleep(seconds)` definition supersedes the earlier installer binding.
9. `SandboxConfigurer.kt` and `ExecutionLifecycleManager.loadPolyfills:164-167` remove
   desktop Lua operations. `getmetatable` and `setmetatable` are nil after polyfill loading.
10. `LuaSandbox.kt` wraps pcall/xpcall logging and preserves uncatchable stop/safety aborts.
11. `app/src/main/cpp/CMakeLists.txt`, `third_party/lua-5.4.8/src/lua.h`, native bridge code
    and `Lua54NativeHostSupportCatalog.kt` identify the experimental Lua 5.4.8 backend and
    its separate migration/support boundaries. Full native parity is not asserted.

Source/tests/examples/web documentation were cross-referenced, but the implementation and
binding allowlists determine declarations. Source extraction is not a compiler or device test.

## Inventory and counting rules

| Measurement | Count |
|---|---:|
| Catalog public global functions | 29 |
| Additional public polyfill globals | 19 |
| Retained LuaJ base global functions declared here | 13 |
| Total global function declarations including base operations | 61 |
| Macro Handler global namespace tables | 60 |
| Callable global factory tables | 12 |
| Catalog owners, including auxiliary returned-object owners | 64 |
| Catalog method names represented | 814 |
| Callable declaration sites, including namespace/instance and stdlib variants | 1189 |
| Namespace annotation classes | 60 |
| Returned-object annotation classes | 45 |
| Payload/opaque/helper annotation classes | 23 |
| Sandbox standard-library classes | 2 |
| Total annotation classes | 130 |
| Finite-value aliases | 9 |
| Global coordinate-edge constants | 4 |
| Declaration sites with all overload parameter types free of Any | 468 |
| Direct utility declarations retaining conservative variadic input | 24 |
| Sites with Any parameters or entirely Any return | 728 |
| Sites retaining an explicit tracing TODO | 95 |
| Uncovered catalog methods | 0 |
| Source-evidence files fingerprinted | 70 |

The 1,189-site figure is not a count of unique Android runtime functions. A method may
appear on a namespace and a returned instance, or have multiple verified overloads.
The 728 conservative sites include intentionally dynamic APIs; they are not all unknown.
Formal parameter names/arity are drawn from explicit binding/trusted Lua/dependency
signatures at 1,165 sites; 24 direct utility sites retain a wider variadic boundary.
No optional Lua overload is inferred merely from a Kotlin default without @JvmOverloads
or direct binding evidence. Public Kotlin methods outside the binding allowlist are excluded.

Primary signature provenance: `{'binding': 179, 'lua_body': 88, 'kotlin_signature': 866, 'direct_conservative': 24, 'dependency_source': 32}`.
`kotlin_signature` means static source evidence, not Android runtime validation.
Full signatures, constructors, payload fields and source references are in `api-inventory.json`.

## Important verified distinctions

| Surface | Declaration decision |
|---|---|
| Global click | Target object/table plus optional click parameters; no invented x,y overload |
| quickTap | Verified point parser inputs; not expanded to unsupported OCR MatchText inputs |
| Point | Method wrapper; x/y are not plain numeric record fields |
| Region:find | Result or nil |
| Region:findAll/findAllText | Wrapped Result arrays from RegionMatchStatePublisher; absence is an empty array |
| Region:read | TextResult array with getPoint/getText/click, not the entire image-result surface |
| Result | Catalog methods plus click; non-allowlisted getRegion/canClick/getCoordinateContext are excluded |
| Request(url) | Returned Request instance with chained setters |
| Request.get/post/etc. | Response with getData/getResponseCode, not getBody |
| Request:getCookies / System.foregroundApp | Unknown Java Map userdata is stringified by normalization; a table shape is not fabricated |
| Asset.image():build() | Builder and built Template are distinct types |
| Color.getAll | Array of Color or false values |
| Color.getAllScreen | Array of string or false values |
| Dialog.init | Usable SettingBuilder |
| Dialog(title) | Opaque CompatDialog in the default LuaJ binding; methods are not invented |
| GesturePoint | Opaque swipe path handle, not arbitrary Java getters |
| Workflow | Structured result with ok/reason/attempts/elapsedMs/value/packed values and error fields |
| Api.check | One result table with ok and missing, not two return values |
| Async.await | Boolean plus dynamic value/reason |
| Events.off | Boolean; listener registration tokens and emit/count have separate integer contracts |
| WebSocket | Global connect/exchange/text; session methods are modeled on the returned object |
| Form | Verified schema keys; every per-field runtime validation constraint is not modeled statically |
| Module | Dot bindings; unsupported colon overloads are not invented |
| wait/sleep | Milliseconds versus seconds; final polyfill sleep argument is required |
| pcall/xpcall/assert/select | Variable return tails are preserved |
| coroutine.running | LuaJ CoroutineLib:96 returns thread and isMainThread boolean |

## Documentation and implementation discrepancies

These findings refer to the reviewed source/documentation snapshot. Public web documentation
can be updated independently; it is not automatically the binding authority for this package.

1. `web/src/lib/apiDocumentation.ts:424` contains a Response.getBody example while the
   binding exposes getData/getResponseCode. The definitions and example use getData.
2. Generic quickTap result examples cannot be extended to CompatMatchText without evidence;
   `compat/LuaCompatPointParser.kt` treats image Match and OCR MatchText differently.
3. `compat/CompatSearchParam.kt:250` mentions FindParam.WORD/LINE-like constants in a
   comment, but the catalog/host allowlist does not expose them as factory fields. No such
   fields are declared; verified numeric segment meanings are documented separately.
4. Catalog owner lists mix namespace and instance methods. Request setters, Point x/y
   methods and Region scanning methods are not blindly placed on their global factory tables.
5. Unknown returned Java userdata, including some native Maps, is stringified by
   normalizeReturnedLuaValue instead of automatically becoming a field-completable Lua table.
6. The installer initially defines sleep, but trusted polyfills replace it with required seconds.
7. The catalog mentions global unpack. LuaJ 3.0.1 BaseLib/TableLib and the reviewed installer/
   polyfill do not show a global unpack registration; table.unpack is verified. No global
   unpack declaration was invented. This remains a source finding, not a Play APK probe.
8. The app's preprocessing DSL does not make its custom syntax parseable by stock LuaLS.
9. Stock Lua 5.2 editor libraries suggest functions removed by the app. The supplied config
   disables those stock libraries, declares retained operations and types removed operations nil.
10. Native Lua 5.4.8 presence does not prove full host/API behavior parity with the default LuaJ backend.

## Deprecated, blocked and internal symbols

Source alias policy identifies `Str.subString`, `Region:readPlain`, `System.getWidth` and
`System.getHeight` as compatibility aliases. They remain declared with deprecation notes.
`System.lockScreen`, `screenOff`, `powerDialog` and `reboot` are policy-blocked names;
the declarations explicitly do not promise they can be executed.

Excluded from the public callable package:

- Internal swipe-dispatch receipts, native transport helpers and instrumentation `_debug*` calls.
- Generated Navigation flow hooks such as `_step`, `_resume` and `_cancel`.
- Trusted `__mh_*`, `_safeMathEval` and sandbox-metatable implementation helpers.
- Unsafe/inherited reflection methods and private native identity fields.
- Public Java/Kotlin methods outside the actual Lua wrapper allowlist.
- User-generated global variable names, for example through Setting.loadVars; names are not invented.
- Unavailable io/package/load/require/debug and unsafe OS/coroutine operations as usable runtime APIs.
  Removed names are represented as nil for diagnostic accuracy.

## Catalog owner coverage

Counts below are catalog method names. Constructor signatures and additional wrapper methods
are separate. Coverage means the name exists on a verified namespace or returned-object surface.

| Owner | Catalog methods | Status |
|---|---:|---|
| Workflow | 5 | Source/declaration name coverage verified |
| Form | 4 | Source/declaration name coverage verified |
| Module | 4 | Source/declaration name coverage verified |
| Api | 3 | Source/declaration name coverage verified |
| Agent | 1 | Source/declaration name coverage verified |
| Touch | 21 | Source/declaration name coverage verified |
| FindParam | 18 | Source/declaration name coverage verified |
| AssetTemplate | 21 | Source/declaration name coverage verified |
| ClickParam | 7 | Source/declaration name coverage verified |
| SwipeParam | 6 | Source/declaration name coverage verified |
| PlayParam | 7 | Source/declaration name coverage verified |
| System | 72 | Source/declaration name coverage verified |
| Ui | 6 | Source/declaration name coverage verified |
| Async | 8 | Source/declaration name coverage verified |
| Snap | 11 | Source/declaration name coverage verified |
| Region | 79 | Source/declaration name coverage verified |
| Color | 28 | Source/declaration name coverage verified |
| Point | 9 | Source/declaration name coverage verified |
| Utils | 1 | Source/declaration name coverage verified |
| Setting | 10 | Source/declaration name coverage verified |
| Dialog | 1 | Source/declaration name coverage verified |
| VisualTarget | 7 | Source/declaration name coverage verified |
| PhaseGate | 4 | Source/declaration name coverage verified |
| Navigation | 2 | Source/declaration name coverage verified |
| Hud | 37 | Source/declaration name coverage verified |
| Asset | 9 | Source/declaration name coverage verified |
| Console | 3 | Source/declaration name coverage verified |
| Event | 11 | Source/declaration name coverage verified |
| Events | 6 | Source/declaration name coverage verified |
| SSE | 2 | Source/declaration name coverage verified |
| WebSocket | 10 | Source/declaration name coverage verified |
| Clipboard | 4 | Source/declaration name coverage verified |
| File | 16 | Source/declaration name coverage verified |
| Panel | 17 | Source/declaration name coverage verified |
| Request | 13 | Source/declaration name coverage verified |
| Runtime | 25 | Source/declaration name coverage verified |
| Env | 3 | Source/declaration name coverage verified |
| Replay | 7 | Source/declaration name coverage verified |
| Str | 25 | Source/declaration name coverage verified |
| Num | 15 | Source/declaration name coverage verified |
| AI | 2 | Source/declaration name coverage verified |
| DateTime | 32 | Source/declaration name coverage verified |
| Stopwatch | 14 | Source/declaration name coverage verified |
| TimeSpan | 34 | Source/declaration name coverage verified |
| Version | 16 | Source/declaration name coverage verified |
| License | 9 | Source/declaration name coverage verified |
| Map | 17 | Source/declaration name coverage verified |
| MultiGesture | 5 | Source/declaration name coverage verified |
| Capture | 5 | Source/declaration name coverage verified |
| Math | 9 | Source/declaration name coverage verified |
| SettingBuilder | 12 | Source/declaration name coverage verified |
| AsyncPromise | 7 | Source/declaration name coverage verified |
| Result | 11 | Source/declaration name coverage verified |
| JSON | 2 | Source/declaration name coverage verified |
| Regex | 5 | Source/declaration name coverage verified |
| KV | 14 | Source/declaration name coverage verified |
| Collection | 10 | Source/declaration name coverage verified |
| Array | 8 | Source/declaration name coverage verified |
| Metrics | 4 | Source/declaration name coverage verified |
| Crypto | 18 | Source/declaration name coverage verified |
| ToastParams | 17 | Source/declaration name coverage verified |
| Tune | 19 | Source/declaration name coverage verified |
| Macro | 4 | Source/declaration name coverage verified |
| Humanize | 2 | Source/declaration name coverage verified |

## Public globals and finite aliases

Catalog globals: `print`, `sleep`, `wait`, `notifyPro`, `toast`, `click`, `quickTap`, `swipe`, `MultiGestureBuilder`, `GesturePoint`, `TextView`, `Spacer`, `EditText`, `Checkbox`, `RadioGroup`, `MultiSelect`, `TagInput`, `SignaturePad`, `ImagePicker`, `NavigationEditor`, `AgentDetectEditor`, `ColorPicker`, `FilePicker`, `DateTimePicker`, `NumberRange`, `Slider`, `Recorder`, `TabLayout`, `requestStop`.

Polyfill globals: `sleep`, `push`, `pop`, `size`, `iif`, `coalesce`, `try`, `range`, `times`, `log`, `dump`, `Class`, `switch`, `map`, `filter`, `find`, `reduce`, `keys`, `values`, `each`.

Namespace tables: `Touch`, `System`, `Ui`, `Async`, `Snap`, `Num`, `AI`, `Agent`, `Workflow`, `Form`, `Module`, `Api`, `Console`, `Event`, `Events`, `SSE`, `WebSocket`, `Clipboard`, `File`, `Panel`, `Setting`, `Asset`, `FindParam`, `ClickParam`, `SwipeParam`, `PlayParam`, `Replay`, `Capture`, `Runtime`, `Env`, `Request`, `Version`, `DateTime`, `TimeSpan`, `Stopwatch`, `Str`, `Map`, `MultiGesture`, `License`, `Math`, `Color`, `Point`, `Region`, `Hud`, `JSON`, `Regex`, `KV`, `Collection`, `Array`, `Utils`, `Metrics`, `Crypto`, `ToastParams`, `Tune`, `Macro`, `Humanize`, `Dialog`, `VisualTarget`, `PhaseGate`, `Navigation`.

Finite aliases: `PhaseGateMode`, `FormFieldType`, `SurfaceMode`, `SurfaceStyle`, `ControlStyle`, `ControlCoverage`, `IndicatorMark`, `WebSocketEventName`, `ImageMode`.

## Remaining conservative/TODO declarations

These entries still require narrower expression-return, payload-shape or dynamic arity tracing.
Actual Any inputs remain Any intentionally. See `conservativeTypes` in api-inventory.json for
the wider dynamic-type list; replacing those types with unsupported guesses is not a valid fix.

| Symbol | Source evidence | Remaining note |
|---|---|---|
| `Touch.releaseAfter` | `app/src/main/java/com/macrohandler/app/runtime/compat/CompatTouchHost.kt:860` | TODO: expression return requires manual bridge tracing; return kept as any. |
| `System.copyToClipboard` | `app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:967` | TODO: expression return requires manual bridge tracing; return kept as any. |
| `System.lastScanError` | `app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:146` | TODO: Lua payload shape/arity is not narrowed unless separately traced. |
| `System.pause` | `app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:176` | TODO: expression return requires manual bridge tracing; return kept as any. |
| `System.playMedia` | `app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:201` | TODO: expression return requires manual bridge tracing; return kept as any. |
| `System.resume` | `app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:187` | TODO: expression return requires manual bridge tracing; return kept as any. |
| `System.scheduleInfo` | `app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:1307` | TODO: Lua payload shape/arity is not narrowed unless separately traced. |
| `System.vibrate` | `app/src/main/java/com/macrohandler/app/runtime/compat/CompatSysHost.kt:939` | TODO: expression return requires manual bridge tracing; return kept as any. |
| `Ui.allById` | `app/src/main/java/com/macrohandler/app/runtime/compat/CompatUiNodeHost.kt:32` | TODO: Lua payload shape/arity is not narrowed unless separately traced. |
| `Ui.allByText` | `app/src/main/java/com/macrohandler/app/runtime/compat/CompatUiNodeHost.kt:29` | TODO: Lua payload shape/arity is not narrowed unless separately traced. |
| `Ui.byId` | `app/src/main/java/com/macrohandler/app/runtime/compat/CompatUiNodeHost.kt:25` | TODO: Lua payload shape/arity is not narrowed unless separately traced. |
| `Ui.byText` | `app/src/main/java/com/macrohandler/app/runtime/compat/CompatUiNodeHost.kt:22` | TODO: Lua payload shape/arity is not narrowed unless separately traced. |
| `Ui.findNode` | `app/src/main/java/com/macrohandler/app/runtime/compat/CompatUiNodeHost.kt:14` | TODO: Lua payload shape/arity is not narrowed unless separately traced. |
| `Snap.clear` | `app/src/main/java/com/macrohandler/app/runtime/compat/CompatCacheHost.kt:152` | TODO: expression return requires manual bridge tracing; return kept as any. |
| `Snap.clearImage` | `app/src/main/java/com/macrohandler/app/runtime/compat/CompatCacheHost.kt:144` | TODO: expression return requires manual bridge tracing; return kept as any. |
| `Snap.clearRegion` | `app/src/main/java/com/macrohandler/app/runtime/compat/CompatCacheHost.kt:150` | TODO: expression return requires manual bridge tracing; return kept as any. |
| `Snap.loadColor` | `app/src/main/java/com/macrohandler/app/runtime/compat/CompatCacheHost.kt:160` | TODO: expression return requires manual bridge tracing; return kept as any. |
| `Snap.loadVars` | `app/src/main/java/com/macrohandler/app/runtime/compat/CompatCacheHost.kt:162` | TODO: expression return requires manual bridge tracing; return kept as any. |
| `Snap.region` | `app/src/main/java/com/macrohandler/app/runtime/compat/CompatCacheHost.kt:122` | TODO: expression return requires manual bridge tracing; return kept as any. |
| `Snap.regionRefresh` | `app/src/main/java/com/macrohandler/app/runtime/compat/CompatCacheHost.kt:142` | TODO: expression return requires manual bridge tracing; return kept as any. |
| `Snap.screen` | `app/src/main/java/com/macrohandler/app/runtime/compat/CompatCacheHost.kt:90` | TODO: expression return requires manual bridge tracing; return kept as any. |
| `Snap.screenOff` | `app/src/main/java/com/macrohandler/app/runtime/compat/CompatCacheHost.kt:97` | TODO: expression return requires manual bridge tracing; return kept as any. |
| `Snap.screenRefresh` | `app/src/main/java/com/macrohandler/app/runtime/compat/CompatCacheHost.kt:104` | TODO: expression return requires manual bridge tracing; return kept as any. |
| `AI.ask` | `app/src/main/java/com/macrohandler/app/runtime/compat/CompatAiHost.kt:105` | TODO: Lua payload shape/arity is not narrowed unless separately traced. |
| `AI.askVision` | `app/src/main/java/com/macrohandler/app/runtime/compat/CompatAiHost.kt:300` | TODO: Lua payload shape/arity is not narrowed unless separately traced. |
| `SSE.first` | `app/src/main/java/com/macrohandler/app/runtime/compat/CompatRealtimeHosts.kt:72` | TODO: Lua payload shape/arity is not narrowed unless separately traced. |
| `SSE.read` | `app/src/main/java/com/macrohandler/app/runtime/compat/CompatRealtimeHosts.kt:53` | TODO: Lua payload shape/arity is not narrowed unless separately traced. |
| `Clipboard.clear` | `app/src/main/java/com/macrohandler/app/runtime/compat/CompatIoHosts.kt:29` | TODO: expression return requires manual bridge tracing; return kept as any. |
| `Clipboard.copy` | `app/src/main/java/com/macrohandler/app/runtime/compat/CompatIoHosts.kt:37` | TODO: expression return requires manual bridge tracing; return kept as any. |
| `File.append` | `app/src/main/java/com/macrohandler/app/runtime/compat/CompatIoHosts.kt:232` | TODO: expression return requires manual bridge tracing; return kept as any. |
| `File.appendLines` | `app/src/main/java/com/macrohandler/app/runtime/compat/CompatIoHosts.kt:151` | TODO: expression return requires manual bridge tracing; return kept as any. |
| `File.appendText` | `app/src/main/java/com/macrohandler/app/runtime/compat/CompatIoHosts.kt:135` | TODO: expression return requires manual bridge tracing; return kept as any. |
| `File.list` | `app/src/main/java/com/macrohandler/app/runtime/compat/CompatIoHosts.kt:219` | TODO: Lua payload shape/arity is not narrowed unless separately traced. |
| `File.readLines` | `app/src/main/java/com/macrohandler/app/runtime/compat/CompatIoHosts.kt:175` | TODO: Lua payload shape/arity is not narrowed unless separately traced. |
| `File.write` | `app/src/main/java/com/macrohandler/app/runtime/compat/CompatIoHosts.kt:227` | TODO: expression return requires manual bridge tracing; return kept as any. |
| `File.writeLines` | `app/src/main/java/com/macrohandler/app/runtime/compat/CompatIoHosts.kt:120` | TODO: expression return requires manual bridge tracing; return kept as any. |
| `File.writeText` | `app/src/main/java/com/macrohandler/app/runtime/compat/CompatIoHosts.kt:104` | TODO: expression return requires manual bridge tracing; return kept as any. |
| `Panel.setPosition` | `app/src/main/java/com/macrohandler/app/runtime/compat/CompatOverlayHost.kt:101` | TODO: expression return requires manual bridge tracing; return kept as any. |
| `Replay.list` | `app/src/main/java/com/macrohandler/app/runtime/compat/CompatRecordHost.kt:203` | TODO: Lua payload shape/arity is not narrowed unless separately traced. |
| `Runtime.cutouts` | `app/src/main/java/com/macrohandler/app/runtime/compat/CompatEnvHost.kt:155` | TODO: Lua payload shape/arity is not narrowed unless separately traced. |
| `Runtime.setMacroSize` | `app/src/main/java/com/macrohandler/app/runtime/compat/CompatEnvHost.kt:71` | TODO: expression return requires manual bridge tracing; return kept as any. |
| `Env.cutouts` | `app/src/main/java/com/macrohandler/app/runtime/compat/CompatEnvHost.kt:155` | TODO: Lua payload shape/arity is not narrowed unless separately traced. |
| `Str.split` | `app/src/main/java/com/macrohandler/app/runtime/compat/CompatStringAndMapHosts.kt:129` | TODO: Lua payload shape/arity is not narrowed unless separately traced. |
| `Str.toArray` | `app/src/main/java/com/macrohandler/app/runtime/compat/CompatStringAndMapHosts.kt:214` | TODO: Lua payload shape/arity is not narrowed unless separately traced. |
| `License.deactivate` | `app/src/main/java/com/macrohandler/app/runtime/compat/CompatLicenseHost.kt:31` | TODO: expression return requires manual bridge tracing; return kept as any. |
| `KV.append` | `app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:467` | TODO: polymorphic Lua handler; shape/return and flexible arguments kept conservative. |
| `KV.clear` | `app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:435` | TODO: polymorphic Lua handler; shape/return and flexible arguments kept conservative. |
| `KV.delete` | `app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:428` | TODO: polymorphic Lua handler; shape/return and flexible arguments kept conservative. |
| `KV.get` | `app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:406` | TODO: polymorphic Lua handler; shape/return and flexible arguments kept conservative. |
| `KV.getAll` | `app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:526` | TODO: polymorphic Lua handler; shape/return and flexible arguments kept conservative. |
| `KV.getBoolean` | `app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:691` | TODO: polymorphic Lua handler; shape/return and flexible arguments kept conservative. |
| `KV.getNumber` | `app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:672` | TODO: polymorphic Lua handler; shape/return and flexible arguments kept conservative. |
| `KV.getString` | `app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:656` | TODO: polymorphic Lua handler; shape/return and flexible arguments kept conservative. |
| `KV.has` | `app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:507` | TODO: polymorphic Lua handler; shape/return and flexible arguments kept conservative. |
| `KV.increment` | `app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:630` | TODO: polymorphic Lua handler; shape/return and flexible arguments kept conservative. |
| `KV.keys` | `app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:444` | TODO: polymorphic Lua handler; shape/return and flexible arguments kept conservative. |
| `KV.set` | `app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:383` | TODO: polymorphic Lua handler; shape/return and flexible arguments kept conservative. |
| `KV.setAll` | `app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:558` | TODO: polymorphic Lua handler; shape/return and flexible arguments kept conservative. |
| `KV.size` | `app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:517` | TODO: polymorphic Lua handler; shape/return and flexible arguments kept conservative. |
| `Collection.clear` | `app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:762` | TODO: polymorphic Lua handler; shape/return and flexible arguments kept conservative. |
| `Collection.count` | `app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:821` | TODO: polymorphic Lua handler; shape/return and flexible arguments kept conservative. |
| `Collection.delete` | `app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:755` | TODO: polymorphic Lua handler; shape/return and flexible arguments kept conservative. |
| `Collection.find` | `app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:795` | TODO: polymorphic Lua handler; shape/return and flexible arguments kept conservative. |
| `Collection.get` | `app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:736` | TODO: polymorphic Lua handler; shape/return and flexible arguments kept conservative. |
| `Collection.has` | `app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:748` | TODO: polymorphic Lua handler; shape/return and flexible arguments kept conservative. |
| `Collection.keys` | `app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:769` | TODO: polymorphic Lua handler; shape/return and flexible arguments kept conservative. |
| `Collection.list` | `app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:782` | TODO: polymorphic Lua handler; shape/return and flexible arguments kept conservative. |
| `Collection.put` | `app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:724` | TODO: polymorphic Lua handler; shape/return and flexible arguments kept conservative. |
| `Collection.update` | `app/src/main/java/com/macrohandler/app/runtime/LuaUtilityApis.kt:809` | TODO: polymorphic Lua handler; shape/return and flexible arguments kept conservative. |
| `Utils.interpolatePoints` | `app/src/main/java/com/macrohandler/app/runtime/ScriptApiInstaller.kt:1727` | TODO: count default/limits are described only by the binding; see source. |
| `MacroHandler.Region.agentDetect` | `app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:623` | TODO: Lua payload shape/arity is not narrowed unless separately traced. |
| `MacroHandler.Region.findColorBlobs` | `app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:618` | TODO: Lua payload shape/arity is not narrowed unless separately traced. |
| `MacroHandler.Region.findMulti` | `app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:595` | TODO: Lua payload shape/arity is not narrowed unless separately traced. |
| `MacroHandler.Region.findMultiText` | `app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:639` | TODO: Lua payload shape/arity is not narrowed unless separately traced. |
| `MacroHandler.Region.findMultiVisualIdentity` | `app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:606` | TODO: Lua payload shape/arity is not narrowed unless separately traced. |
| `MacroHandler.Region.getLastMatches` | `app/src/main/java/com/macrohandler/app/runtime/CompatRegion.kt:113` | TODO: Lua payload shape/arity is not narrowed unless separately traced. |
| `MacroHandler.Stopwatch.pause` | `app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeHosts.kt:83` | TODO: expression return requires manual bridge tracing; return kept as any. |
| `MacroHandler.Stopwatch.resume` | `app/src/main/java/com/macrohandler/app/runtime/compat/CompatDateTimeHosts.kt:86` | TODO: expression return requires manual bridge tracing; return kept as any. |
| `MacroHandler.Map.entries` | `app/src/main/java/com/macrohandler/app/runtime/compat/CompatStringAndMapHosts.kt:305` | TODO: Lua payload shape/arity is not narrowed unless separately traced. |
| `MacroHandler.Map.keys` | `app/src/main/java/com/macrohandler/app/runtime/compat/CompatStringAndMapHosts.kt:316` | TODO: Lua payload shape/arity is not narrowed unless separately traced. |
| `MacroHandler.Map.values` | `app/src/main/java/com/macrohandler/app/runtime/compat/CompatStringAndMapHosts.kt:318` | TODO: Lua payload shape/arity is not narrowed unless separately traced. |
| `MacroHandler.Hud.fullscreen` | `app/src/main/java/com/macrohandler/app/runtime/CompatOnScreenText.kt:578` | TODO: expression return requires manual bridge tracing; return kept as any. |
| `MacroHandler.Hud.setBackgroundColor` | `app/src/main/java/com/macrohandler/app/runtime/CompatOnScreenText.kt:389` | TODO: expression return requires manual bridge tracing; return kept as any. |
| `MacroHandler.Hud.setBackgroundImage` | `app/src/main/java/com/macrohandler/app/runtime/CompatOnScreenText.kt:396` | TODO: expression return requires manual bridge tracing; return kept as any. |
| `MacroHandler.Hud.setH` | `app/src/main/java/com/macrohandler/app/runtime/CompatOnScreenText.kt:555` | TODO: expression return requires manual bridge tracing; return kept as any. |
| `MacroHandler.Hud.setHtmlText` | `app/src/main/java/com/macrohandler/app/runtime/CompatOnScreenText.kt:567` | TODO: expression return requires manual bridge tracing; return kept as any. |
| `MacroHandler.Hud.setText` | `app/src/main/java/com/macrohandler/app/runtime/CompatOnScreenText.kt:365` | TODO: expression return requires manual bridge tracing; return kept as any. |
| `MacroHandler.Hud.setTextColor` | `app/src/main/java/com/macrohandler/app/runtime/CompatOnScreenText.kt:382` | TODO: expression return requires manual bridge tracing; return kept as any. |
| `MacroHandler.Hud.setTextSize` | `app/src/main/java/com/macrohandler/app/runtime/CompatOnScreenText.kt:372` | TODO: expression return requires manual bridge tracing; return kept as any. |
| `MacroHandler.Hud.setW` | `app/src/main/java/com/macrohandler/app/runtime/CompatOnScreenText.kt:548` | TODO: expression return requires manual bridge tracing; return kept as any. |
| `MacroHandler.Hud.setX` | `app/src/main/java/com/macrohandler/app/runtime/CompatOnScreenText.kt:534` | TODO: expression return requires manual bridge tracing; return kept as any. |
| `MacroHandler.Hud.setY` | `app/src/main/java/com/macrohandler/app/runtime/CompatOnScreenText.kt:541` | TODO: expression return requires manual bridge tracing; return kept as any. |
| `MacroHandler.Hud.show` | `app/src/main/java/com/macrohandler/app/runtime/CompatOnScreenText.kt:469` | TODO: expression return requires manual bridge tracing; return kept as any. |
| `MacroHandler.SettingDialog.preview` | `app/src/main/java/com/macrohandler/app/runtime/CompatSettingDialog.kt:3424` | TODO: Lua payload shape/arity is not narrowed unless separately traced. |
| `MacroHandler.SettingDialog.show` | `app/src/main/java/com/macrohandler/app/runtime/CompatSettingDialog.kt:226` | TODO: Lua payload shape/arity is not narrowed unless separately traced. |

## Checks and maintenance

LuaLS 3.19.1 completed Warning-level CLI checks with 0 problems. Seventeen real LSP checks
passed for completion, fields/enums, hover, signatures, return type information, unavailable
sandbox helpers, limited OCR result shape and invalid-call diagnostics. Package/source checks
and isolated negative fixtures also passed; results are in validation.json.

The source verifier compares registration catalog names and hashes of source-evidence files.
Hashes conservatively catch comments and other non-API changes too; refreshing evidence
requires review, not merely replacing hashes. This is not a compiler or behavior test.

No CI/build/deployment hook was added to the application. Source or native-backend changes
must be reviewed before widening a compatibility label. See MAINTAINING.md for reproduction.

## Primary external references

- [LuaLS definition files](https://luals.github.io/wiki/definition-files/)
- [LuaLS annotations](https://luals.github.io/wiki/annotations/)
- [LuaLS settings](https://luals.github.io/wiki/settings/)
- [LuaLS diagnostic reports](https://luals.github.io/wiki/diagnosis-report/)
- [LuaJ 3.0.1 BaseLib](https://github.com/luaj/luaj/blob/v3.0.1/src/core/org/luaj/vm2/lib/BaseLib.java)
- [LuaJ 3.0.1 StringLib](https://github.com/luaj/luaj/blob/v3.0.1/src/core/org/luaj/vm2/lib/StringLib.java)
- [LuaJ 3.0.1 TableLib](https://github.com/luaj/luaj/blob/v3.0.1/src/core/org/luaj/vm2/lib/TableLib.java)
- [LuaJ 3.0.1 OsLib](https://github.com/luaj/luaj/blob/v3.0.1/src/core/org/luaj/vm2/lib/OsLib.java)
- [LuaJ 3.0.1 CoroutineLib](https://github.com/luaj/luaj/blob/v3.0.1/src/core/org/luaj/vm2/lib/CoroutineLib.java)
