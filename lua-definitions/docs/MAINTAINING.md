# Maintaining the definitions

This package is independent of Android build and production deployment. No build hook is required.

## Read-only checks

From a workspace containing `lua-definitions/`:

```powershell
python lua-definitions/tools/verify-lua-definitions.py --repo "D:/path/to/macrohandler"
lua-language-server --check=lua-definitions --checklevel=Warning --logpath="D:/temp/macrohandler-luals-cli"
python lua-definitions/tools/check-luals.py --server "C:/path/to/lua-language-server.exe" --report "D:/temp/macrohandler-luals-lsp.json"
```

Use Python 3.9+ and the validated LuaLS version recorded in `metadata.json`. Supply the actual
executable path. The LSP checker creates virtual editor buffers and temporary server logs; it
never runs Lua scripts or Android. No extension or package is installed by these scripts.

The source verifier returns 0 on success, 1 on drift, 2 on an unreadable/invalid package.
Without `--repo`, only package integrity, inventory and declarations are checked.
It compares names in ScriptApiCatalog plus strict SHA-256 hashes of the source files used
for interfaces, installation order, defaults, wrapping, sandbox and runtime selection.
This is a drift gate, not a compiler, behavioral test or security signature. A SHA manifest
detects unintended file changes relative to that manifest; it is not an authenticity certificate.
Unexpected package files also fail. Keep logs, user macros and generated reports outside it.

## Updating after an API change

1. Inspect the catalog and actual registrations. Identify namespace, callable factory,
   returned-object allowlist and final polyfill/sandbox behavior separately.
2. Trace every changed parameter, default, unit, overload, callback and return producer.
   Keep `any`, unions and explicit TODOs where evidence is incomplete.
3. Update declarations, inventory entries and source evidence together. Do not add names
   merely because a public Kotlin method or web documentation mentions them.
4. Update metadata/source fingerprint only after review. Hashing a changed file without
   checking its API is not a valid refresh.
5. Run LuaLS CLI, LSP positive/negative checks, source verification and clean ZIP extraction.
6. Rebuild `package-manifest.json` from the complete distribution file set, excluding the
   manifest itself. Update the definition version and audit. Re-run package verification.
7. Create a ZIP containing only the `lua-definitions/` directory. Recheck file hashes after
   extraction. Publish under the source compatibility label; do not silently claim older APK
   or experimental native-backend compatibility.

There is deliberately no production migration, deployment, Git operation or generated runtime
implementation in this package. The full machine inventory supplies evidence and TODOs for
future maintainers; it does not permit automated guessing of new API contracts.
