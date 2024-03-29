-- import null-ls plugin safely
local setup, null_ls = pcall(require, "null-ls")
if not setup then
  return
end

-- for conciseness
local formatting = null_ls.builtins.formatting -- to setup formatters
local diagnostics = null_ls.builtins.diagnostics -- to setup linters

-- to setup format on save
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

-- configure null_ls
null_ls.setup({
  -- setup formatters & linters
  sources = {
    --  to disable file types use
    -- =================JS, TS, HTML, CSS=================
    --  "formatting.prettier.with({disabled_filetypes: {}})" (see null-ls docs)
    -- Formatter
    formatting.prettier,

    -- Linter
    diagnostics.eslint_d.with({
      -- only enable eslint if root has .eslintrc.js (not in youtube nvim video)
      condition = function(utils)
        return utils.root_has_file(".eslintrc.js") -- change file extension if you use something else
      end,
    }),

    -- =================Python=================
    -- Formatter
    formatting.black,
    formatting.isort.with({ extra_args = { "--profile", "black" } }),

    -- Linter
    diagnostics.flake8.with({
      extra_args = {
        "--max-line-length",
        "88",
        "--select",
        "C,E,F,W,B,B950",
        "--extend-ignore",
        "E203,E501,W503",
      },
    }),

    -- =================Lua=================
    -- Formatter
    formatting.stylua,
  },
  -- configure format on save
  on_attach = function(current_client, bufnr)
    if current_client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({
            filter = function(client)
              --  only use null-ls for formatting instead of lsp server
              return client.name == "null-ls"
            end,
            bufnr = bufnr,
          })
        end,
      })
    end
  end,
})
