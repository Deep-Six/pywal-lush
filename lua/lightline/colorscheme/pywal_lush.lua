local theme = require("lush_theme.pywal")

-- Define your lightline theme using groups from our lush spec
--
-- This theme simply flips the background and foreground colours
-- for normal and insert mode.
--
-- Continue below to see how to enable real time updating,
-- then try editing this theme.
local pywal_lush = {
  normal = {
    left = {
      {theme.CursorLineNr.fg.hex, theme.CursorLineNr.bg.hex},
    },
    middle = {
      {theme.Normal.fg.hex, theme.Normal.bg.hex},
    },
    right = {
      {theme.StatusLine.fg.hex, theme.StatusLine.bg.hex},
    },
  },
  insert = {
    left = {
      {theme.PmenuSbar.bg.hex, theme.PmenuSbar.fg.hex},
    },
    middle = {
      {theme.Normal.bg.hex, theme.Normal.fg.hex},
    },
    right = {
      {theme.StatusLine.bg.hex, theme.StatusLine.fg.hex},
    },
  },
  replace = {
    left = {
      {theme.Pmenu.bg.hex, theme.Pmenu.fg.hex},
    },
    middle = {
      {theme.Normal.bg.hex, theme.Normal.fg.hex},
    },
    right = {
      {theme.StatusLine.bg.hex, theme.StatusLine.fg.hex},
    },
  },
  visual = {
    left = {
      {theme.WarningMsg.bg.hex, theme.WarningMsg.fg.hex},
    },
    middle = {
      {theme.Normal.bg.hex, theme.Normal.fg.hex},
    },
    right = {
      {theme.StatusLine.bg.hex, theme.StatusLine.fg.hex},
    },
  },
}

-- Technically, that's all you have to do for your lightline theme to
-- be applied but if you want real-time feedback while designing it, you must
-- include some extra code which forces lightline to notice the changes.
--
-- It's recommended you comment out the following code if you're not actively
-- editing your lightline theme.
--
-- You may find realtime performance unacceptable while changes are being
-- propagated back to and applied by vimscript, if this is a problem,
-- you can disable lush.ify() on the buffer (save then `:e!`), then when you
-- wish to preview your changes, save and run `:luafile %`.
--
-- Consider making a temporary mapping while working:
--
--   `:nmap <leader>llr :luafile %<CR>`
--
-- Lightline is a little temperamental about when you tell it to update it's
-- theme, so we push it to vim's scheduler.
--
-- vim.schedule(function()
--   -- lightline#colorscheme() has a side effect of not always
--   -- applying updates until after leaving insert mode.
--   vim.fn['lightline#colorscheme']()
--
--   -- this will apply more uniforming across all modes, but may have
--   -- unacceptable performance impacts.
--   -- vim.fn['lightline#disable']()
--   -- vim.fn['lightline#enable']()
-- end)

return pywal_lush
