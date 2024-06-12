local hsl = require('lush').hsl

local M = {}

M.getColors = function ()
  local colorTable = {}
  local home = os.getenv("HOME")
  local pywal_colors  = home .. "/.cache/wal/colors"
  local file = io.open(pywal_colors, "r")
  for line in file:lines() do
    table.insert(colorTable, line)
  end
  return colorTable
end

local colors = M.getColors()

-- offer the colors so users can easily modify the theme.
M.color1 = hsl(colors[1])
M.color2 = hsl(colors[2])
M.color3 = hsl(colors[3])
M.color4 = hsl(colors[4])
M.color5 = hsl(colors[5])
M.color6 = hsl(colors[6])
M.color7 = hsl(colors[7])
M.color8 = hsl(colors[8])
M.color9 = hsl(colors[9])
M.color10 = hsl(colors[10])
M.color11 = hsl(colors[11])
M.color12 = hsl(colors[12])
M.color13 = hsl(colors[13])
M.color14 = hsl(colors[14])
M.color15 = hsl(colors[15])
M.color16 = hsl(colors[16])

return M
