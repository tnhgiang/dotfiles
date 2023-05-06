local opt = vim.opt
local g = vim.g
local api = vim.api

-- tabs & indentation
opt.tabstop = 4 -- 4 spaces for tabs
opt.shiftwidth = 4 -- 4 spaces for indent width
-- Black convention
g.pyindent_open_paren = "shiftwidth()"
g.pyindent_nested_paren = "shiftwidth()"
g.pyindent_continue = "shiftwidth()"
g.pyindent_close_paren = "-shiftwidth()"

-- Abbreviations
api.nvim_create_autocmd("BufEnter", {
	desc = "Abbreviations for python files only",
	command = [[iabbrev <buffer> db@ import ipdb; ipdb.set_trace() # fmt: skip]],
})
