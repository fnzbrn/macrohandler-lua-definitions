# Website download integration

This repository hosts the LuaLS definition package. The product website can link to the
GitHub release asset; the ZIP transfer is served by GitHub rather than Macro Handler's
Firebase download/backend path.

## Recommended download button

Label: **Download LuaLS Definitions**

Stable latest-release asset URL:

```text
https://github.com/fnzbrn/macrohandler-lua-definitions/releases/latest/download/macrohandler-lua-definitions.zip
```

```html
<a href="https://github.com/fnzbrn/macrohandler-lua-definitions/releases/latest/download/macrohandler-lua-definitions.zip">
  Download LuaLS Definitions
</a>
```

Use the website's existing button styling. No client-side fetch, Firebase Function,
Firestore read or server-side proxy is needed to transfer this public package.
Do not prefetch the ZIP on every page load. GitHub sets the release asset download response.
The browser `download` attribute is not needed for this external link.

## Fixed-version link

```text
https://github.com/fnzbrn/macrohandler-lua-definitions/releases/download/v0.1.0/macrohandler-lua-definitions.zip
```

Use the fixed version if the documentation or app requires that exact definition profile.
The latest URL will select newer stable releases later, so future releases must keep the
same asset filename. Review compatibility labels when changing releases.

Suggested supporting copy:

> Add Macro Handler autocomplete, parameter hints and API documentation to VS Code.
> LuaLS editor definitions only. Review the supported application source profile before use.

Repository: [https://github.com/fnzbrn/macrohandler-lua-definitions](https://github.com/fnzbrn/macrohandler-lua-definitions)
Application: [Macro Handler on Google Play](https://play.google.com/store/apps/details?id=com.macrohandler.app)
Website: [https://macrohandler.com](https://macrohandler.com)

The website button itself has not been added or deployed by this repository preparation.
The separate website maintainer can apply this link to the current web branch.

Reference: [GitHub linking to release assets](https://docs.github.com/en/repositories/releasing-projects-on-github/linking-to-releases).
