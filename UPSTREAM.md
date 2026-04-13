# Divergence from upstream

Two files differ from `dam9000/kickstart-modular.nvim`:

| File | Change |
|------|--------|
| `init.lua` | `require 'custom'` appended at the end |
| `lua/lazy-plugins.lua` | `{ import = 'custom.plugins' }` uncommented |

When merging upstream, keep these two lines — everything else can be accepted from upstream as-is.

---

`lua/custom/plugins/init.lua` is also edited, but upstream [promises](https://github.com/dam9000/kickstart-modular.nvim) to never touch the `lua/custom/` directory — so no conflicts there, ever.
