-- import lualine plugin safely
local status, lualine = pcall(require, "lualine")
if not status then
  return
end

-- get lualine theme (it must be consistent with colorsheme)
local lualine_theme = require("nightfox.util.lualine")("nordfox")

-- configure lualine with modified theme
lualine.setup({
  options = {
    theme = lualine_theme,
  },
})
