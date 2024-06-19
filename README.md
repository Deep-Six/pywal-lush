# A pywal based Lush Theme for Neovim.

===

## Introduction

This is my first cut at a Lush based theme that utilizes the pywal mechanism
for creating a palette based on a background. It builds a lua Table from the
~/.cache/wal/colors and then uses the awesome Lush based primitives to modify
the colours dynamically.

## Warning

This is also my first lua based anything, your mileage may vary!

## Install

VimPlug `Plug 'Deep-Six/pywal-lush',{'branch': 'main'}`

## Configuration

The `termguicolors` option must be set for this colorscheme.

```vim
" set the lightline theme.
let g:lightline = {
    \ 'colorscheme': 'pywal_lush'
    \ }

" set the colorscheme
colorscheme pywal_lush
```

or in lua:

```lua
vim.g.lightline = { colorscheme = "pywal_lush" }

vim.cmd.colorscheme("pywal_lush")
```

### Advanced

Currently, you may use `lush` to modify the colorscheme directly if you wish.
The colors are offered by the theme, so you can also use them directly:

```lua
-- you could save this snippet as a `colors.lua` and require() it, or simply
-- include it in an existing file.

local lush = require("lush")
local colors = require("lush_theme.colors")
local theme = require("lush_theme.pywal")

-- lush allows you to modify a theme built using lush before it gets applied.
-- `injected_functions` / `local sym` are only for modifying tree-sitter highlights;
-- feel free to remove them if you're not changing any of those.
local spec = lush.extends({ theme }).with(function (injected_functions)
  local sym = injected_functions.sym

  return {
    -- override the fg for the MatchParen highlight group using a hard-coded value.
    MatchParen { fg = "white" },

    -- modify NormalFloat's bg, by using the theme's NormalFloat original bg color.
    NormalFloat { bg = theme.NormalFloat.bg.darken(80) },

    -- use Comment colors, but don't italicize them (the default).
    Comment { gui = "NONE" },

    -- use theme.Comment.fg for a string, but adjusted (absolute, not relative) lighter.
    String { fg = theme.Comment.fg.abs_lighten(20) },

    -- use pywal-generated colors directly, but darkened/lightened as you wish.
    Search { bg = colors.color8.darken(70), fg = colors.color1.lighten(90) },

    -- change a tree-sitter highlight:
    sym"@string.documentation" { fg = theme.Comment.fg.lighten(20) },
  }
end)

lush(spec)
```

## Todo

Support lualine as well as lightline.

## More Information

See: http://git.io/lush.nvim for more information on Lush and a helper script
to setup your repo clone.
