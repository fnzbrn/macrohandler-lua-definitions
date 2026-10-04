# Macro Handler — LuaLS Definitions

Official editor definitions for writing **Macro Handler Android macros** in VS Code with
**Lua Language Server (LuaLS)**.

**[Download LuaLS Definitions](https://github.com/fnzbrn/macrohandler-lua-definitions/releases/latest/download/macrohandler-lua-definitions.zip)** ·
**[Website](https://macrohandler.com)** ·
**[Get Macro Handler on Google Play](https://play.google.com/store/apps/details?id=com.macrohandler.app)** ·
**[Lua API Reference](https://macrohandler.com/docs)** ·
**[Lua Scripting Guide](https://macrohandler.com/docs/code-guide)**

## About Macro Handler

[Macro Handler](https://macrohandler.com) is an Android automation platform for creating user-defined
macros with no-code blocks, a visual Logic workspace, or Lua scripts. Workflows can combine
screen regions, image matching, OCR text recognition, color checks, taps and gestures,
variables, conditions, loops, timing and reusable logic.

This repository provides **editor support for the Lua API**. It contains interface declarations,
examples, configuration and verification tools. Macro execution happens inside the Android app.

## What you get

- Global-function and namespace autocomplete.
- Parameter hints, function signatures and documented return types.
- Hover documentation with source references.
- Methods on returned Point, Region, search-result, dialog, network and other objects.
- Completion for verified payload fields and finite option values.
- Type checking and diagnostics for incorrect calls.
- Sandbox-aware standard-library definitions that avoid suggesting removed desktop Lua APIs.
- A self-contained ZIP for installation without Git or cloning the repository.

## Download and install

1. Install [VS Code](https://code.visualstudio.com/).
2. Install [Lua by sumneko](https://marketplace.visualstudio.com/items?itemName=sumneko.lua).
3. Download **[macrohandler-lua-definitions.zip](https://github.com/fnzbrn/macrohandler-lua-definitions/releases/latest/download/macrohandler-lua-definitions.zip)** from the release assets.
4. Extract the ZIP into the folder where you keep your macro scripts. It creates `lua-definitions/`.
5. Copy `lua-definitions/config/workspace.luarc.json` to the workspace root as `.luarc.json`.
   If a configuration already exists, merge the settings instead of discarding your own settings.
6. Open that folder in VS Code, then open or create a `.lua` file.

```text
my-macros/
├── .luarc.json
├── my-macro.lua
└── lua-definitions/
    ├── library/
    ├── examples/
    └── ...
```

Type `System.` and press **Ctrl+Space** to see namespace functions. Inside an `if point then`
guard, type `point:` for Point methods. Hover over `wait` for units and documentation;
**Ctrl+Shift+Space** requests parameter hints. Incorrect calls appear in the Problems panel.

The extracted `lua-definitions/` directory can also be opened directly as a VS Code workspace.
Its own `.luarc.json` points to `./library`. The root configuration in this repository supports
working from a clone. Use the complete supplied configuration, including `runtime.builtin`:
only adding a library path can reintroduce suggestions for APIs removed by Macro Handler's sandbox.
In `.luarc.json`, setting names have no `Lua.` prefix. See [LuaLS settings](https://luals.github.io/wiki/settings/).

## A small example

```lua
local point = Point(100, 200)
if point then
    print(point:getX(), point:getY())
end

local region = Region(0, 0, 300, 200)
local options = FindParam.timeout(1500):mScore(0.9)
-- Replace this placeholder with an image asset saved in your own macro.
local result = region:find(Asset.image("example-icon"):build(), options)
if result then
    print(result:getScore(), result:getPoint():getX())
    -- click(result) -- enable only when you intend to perform the device action
end

wait(100) -- milliseconds
sleep(0.1) -- seconds
```

The complete editor example is [vscode-example.lua](lua-definitions/examples/vscode-example.lua).
These examples were checked by LuaLS; they were not run on an Android device. Image assets,
permissions and runtime prerequisites must be configured in the app.

## Using the scripts in Macro Handler

Write your own standard Lua macro files in VS Code, then use them in Macro Handler through
the app's existing Lua editing/import workflow. **Do not run or import these definition files
as macros**, and do not `require` or `dofile` the library. They contain empty declarations
for the language server. `MacroHandler.*` names are annotation types, not a new runtime module.

Use standard Lua syntax such as `local` and `..`. The app's editor preprocessing DSL is not
part of LuaLS's parser. Desktop VS Code does not provide the Android automation runtime.

## Version and compatibility

| Item | This release |
|---|---|
| Definition package | **0.1.0** |
| Application source profile | **1.0.51 / versionCode 65** |
| Default runtime | **LuaJ 3.0.1 / Lua 5.2** |
| Validated language server | **LuaLS 3.19.1** |
| Source evidence | SHA-256 fingerprint in `metadata.json` |

The definitions describe a reviewed **working-tree source snapshot**, not an attestation of
an APK currently installed from Google Play. Some source-profile APIs may arrive in a later
app release. Verify availability against your installed app and the [official documentation](https://macrohandler.com/docs).
There is no independently versioned public API number in the reviewed source, so the package
records the application source version and API fingerprint explicitly.

The experimental **Lua 5.4.8 native backend** has separate host-support boundaries. This
default LuaJ package does not certify native parity. Changing `runtime.version` alone does
not make every host API available on that backend.

Dynamic payloads and flexible coercion inputs remain `any` or conservative unions where
the implementation does not provide a verified narrower contract. Explicit TODOs are kept
in the declarations and audit. This is not a promise that every dynamic value is fully type-checked.

## API coverage

| Scope | Count |
|---|---:|
| Catalog-registered Macro Handler global functions | 29 |
| Additional public polyfill global helpers | 19 |
| Macro Handler global tables/namespaces | 60 |
| Callable global factory tables | 12 |
| Catalog method names represented on real namespace/instance surfaces | 814 |
| Annotation classes, including namespace and sandbox helper classes | 130 |
| Finite-value aliases | 9 |
| Coordinate-edge constants | 4 |
| Callable declaration sites, including namespace/instance variants and stdlib | 1,189 |

The declaration-site count is **not** the number of distinct Macro Handler runtime functions.
Sources, overloads, confidence labels and remaining TODOs are in
[api-inventory.json](lua-definitions/api-inventory.json) and the
[API definition audit](lua-definitions/docs/LUA_API_DEFINITION_AUDIT.md).

## Important API details

- `wait` uses milliseconds; `sleep` uses seconds.
- Global `click` accepts a target. A fabricated `click(x, y)` overload is not provided.
- `Point()` results have `getX()` / `getY()` methods, not numeric `x` / `y` fields.
- `Region:find` returns a match or `nil`; `Region:findAll` returns an array, possibly empty.
- OCR rows from `Region:read` have a narrower object surface than image matches.
- HTTP responses expose `getData()` and `getResponseCode()`, not `getBody()`.
- Constructor namespaces and returned instances have different methods and are modeled separately.
- Sandbox-removed functions, including `load`, `require`, `getmetatable` and `setmetatable`, are typed as `nil`.

## Validation

The package passed:

- LuaLS CLI diagnostics with **0 problems** at Warning level.
- **17/17** real language-server checks covering completion, field/enum suggestions,
  hover, signatures, return types, sandbox restrictions and negative diagnostics.
- Name coverage and SHA-256 comparison for **70** source-evidence files at preparation time.
- Negative fixtures for missing/invented declarations, package corruption, changed binding
  sources and a new runtime global.
- ZIP integrity, clean extraction and an independent consumer-workspace configuration check.

Actual VS Code GUI and Android runtime execution are outside these checks. Reproduction
commands and evidence are in [validation.json](lua-definitions/validation.json) and
[MAINTAINING.md](lua-definitions/docs/MAINTAINING.md).

Python 3.9+ is sufficient for the included standalone checks:

```powershell
python lua-definitions/tools/verify-lua-definitions.py
python lua-definitions/tools/check-luals.py --server "C:/path/to/lua-language-server.exe"
```

The first command checks the distribution, not the app runtime. Maintainers with the real
source checkout can add `--repo PATH` for registration/source drift checks. No Android build,
macro execution, software installation or production deployment is performed by these tools.

## Repository layout

```text
lua-definitions/
├── README.md
├── .luarc.json
├── config/workspace.luarc.json
├── library/                 # LuaLS .d.lua definitions
├── examples/                # standard Lua editor example
├── docs/                    # English audit and maintenance notes
├── tools/                   # read-only package/LuaLS checks
├── api-inventory.json
├── metadata.json
├── package-manifest.json
├── validation.json
└── NOTICE.md
```

The website integration guide is [WEBSITE_DOWNLOAD.md](docs/WEBSITE_DOWNLOAD.md).
Release assets include the self-contained ZIP and a SHA-256 checksum file. Use the named
ZIP asset for the installation layout above; GitHub's automatic source archives contain
the entire repository layout.

## Support and reporting

- [Product website](https://macrohandler.com)
- [Android app on Google Play](https://play.google.com/store/apps/details?id=com.macrohandler.app)
- [API documentation](https://macrohandler.com/docs)
- [Lua scripting guide](https://macrohandler.com/docs/code-guide)
- [Product support](https://macrohandler.com/support)
- [Report a definition problem](https://github.com/fnzbrn/macrohandler-lua-definitions/issues)

Use repository issues for missing or incorrect IDE declarations, configuration problems or
documentation drift. Include the app version, definition version, affected API symbol and
a minimal example. Runtime, billing or account questions belong with product support.
Do not include access tokens or private account data in public reports.

## Distribution scope

This public repository contains the editor package. Publishing it does not publish or license
the Android runtime, backend, application assets or other product components. No application
source history, APK, credential file or third-party runtime executable is included.
See [NOTICE.md](NOTICE.md) for scope and provenance notes.
