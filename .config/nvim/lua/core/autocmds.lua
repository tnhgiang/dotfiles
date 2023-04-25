local api = vim.api

-- don't auto comment new line
api.nvim_create_autocmd("BufEnter", { desc = "No auto-comment on new line", command = [[set formatoptions-=cro]] })

-- Highlight on yank
api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight the yanked text for a specified time.",
  callback = function()
    vim.highlight.on_yank({ timeout = 250 })
  end,
})
