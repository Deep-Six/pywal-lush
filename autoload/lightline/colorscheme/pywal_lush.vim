let s:palette = v:lua.require('lightline.colorscheme.pywal_lush')
" Use lightlines helper functions to correct cterm holes in our theme.
" Note: These functions can be expensive to run, it is recommended you
"       leave them commented out until you wish to work on lightline,
"       or investigate the two-file approach in the other lightline example.
" define our theme for lightline to find
let g:lightline#colorscheme#lightline_one_file#palette = lightline#colorscheme#fill(s:palette)
