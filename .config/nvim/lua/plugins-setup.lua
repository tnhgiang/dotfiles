-- auto install packer if not installed
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
	return
end

-- add list of plugins to install
return packer.startup(function(use)
	-- packer can manage itself
	use("wbthomason/packer.nvim")

	-- dependency for other plugins
	use("nvim-lua/plenary.nvim")

	-- Colorscheme
	use("EdenEast/nightfox.nvim")

	-- tmux & split window navigation
	use("christoomey/vim-tmux-navigator")

	-- maximizes and restores current window
	use("szw/vim-maximizer")

	-- essential plugins
	-- add, delete, change surroundings (it's awesome)
	use("tpope/vim-surround")
	-- replace with register contents using motion (gr + motion)
	use("inkarkat/vim-ReplaceWithRegister")

	-- comments
	-- commenting with gc
	use("numToStr/Comment.nvim")
	-- todo comments
	use("folke/todo-comments.nvim")

	-- vs-code like icons
	use("nvim-tree/nvim-web-devicons")

	-- file explorer
	use("nvim-tree/nvim-tree.lua")

	-- statusline
	use("nvim-lualine/lualine.nvim")

	-- fuzzy finder
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		requires = {
			-- dependency for better sorting performance
			{ "nvim-telescope/telescope-fzf-native.nvim", run = "make" },
		},
	})

	-- autocompletion
	-- completion plugin
	use("hrsh7th/nvim-cmp")
	-- source for text in buffer
	use("hrsh7th/cmp-buffer")
	-- source for file system paths
	use("hrsh7th/cmp-path")

	-- snippets
	-- snippet engine
	use("L3MON4D3/LuaSnip")
	-- for autocompletion
	use("saadparwaiz1/cmp_luasnip")
	-- useful snippets
	use("rafamadriz/friendly-snippets")

	-- managing & installing lsp servers, linters & formatters
	-- in charge of managing lsp servers, linters & formatters
	use("williamboman/mason.nvim")
	-- bridges gap b/w mason & lspconfig
	use("williamboman/mason-lspconfig.nvim")

	-- configuring lsp servers
	-- easily configure language servers
	use("neovim/nvim-lspconfig")
	-- for autocompletion
	use("hrsh7th/cmp-nvim-lsp")
	-- enhanced lsp uis
	use({
		"glepnir/lspsaga.nvim",
		branch = "main",
		requires = {
		  { "nvim-tree/nvim-web-devicons" },
		  { "nvim-treesitter/nvim-treesitter" },
		},
	  })
	-- additional functionality for typescript server (e.g. rename file & update imports)
	use("jose-elias-alvarez/typescript.nvim")
	-- vs-code like icons for autocompletion
	use("onsails/lspkind.nvim")

	-- formatting & linting
	-- configure formatters & linters
	use("jose-elias-alvarez/null-ls.nvim")
	-- bridges gap b/w mason & null-ls
	use("jayp0521/mason-null-ls.nvim")

	-- treesitter configuration
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	})

	-- auto closing
	-- autoclose parens, brackets, quotes, etc...
	use("windwp/nvim-autopairs")
	-- autoclose tags
	use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" })
	-- rainbow parenttheses
	use({ "p00f/nvim-ts-rainbow", after = "nvim-treesitter" })

	-- git integration
	-- show line modifications on left hand side
	use("lewis6991/gitsigns.nvim")

	if packer_bootstrap then
		require("packer").sync()
	end
end)
