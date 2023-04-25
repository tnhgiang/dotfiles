-- import indent-blankline plugin safely
local status, indent_blankline = pcall(require, "indent_blankline")
if not status then
  return
end

vim.opt.list = true
vim.opt.listchars:append("space:⋅")

indent_blankline.setup({
  space_char_blankline = " ",
  show_current_context = true,
})
