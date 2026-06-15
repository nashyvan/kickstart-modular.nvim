# Divergence from upstream

Three files differ from `dam9000/kickstart-modular.nvim`:

| File | Change |
|------|--------|
| `init.lua` | `require 'custom'` added before `require 'pack'` (must run before plugins so `vim.g.have_nerd_font` is set in time for mini.lua) |
| `lua/plugins.lua` | `require 'custom.plugins'` uncommented at the bottom |
| `lua/custom/plugins/init.lua` | Explicit ordered require list instead of upstream's flat-dir auto-loader (our plugins live in `ui/`, `ai/`, `colorscheme/` subdirs) |

When merging upstream:
- Keep the `require 'custom'` line in `init.lua` (before `require 'pack'`)
- Keep `require 'custom.plugins'` uncommented in `lua/plugins.lua`
- Revert `lua/custom/plugins/init.lua` if upstream overwrites it (or re-add the explicit requires)

---

`lua/custom/` is entirely yours — upstream promises never to touch it.
