# Neovim

## Tutorial
📹 Youtube Step-by-Step Guide: [How I Setup Neovim On My Mac To Make It Amazing](https://youtu.be/vdn_pKJUda8)

## Setup Requires
- True Color Terminal Like: [iTerm2](https://iterm2.com/)
- [Neovim](https://neovim.io/) (Version 0.8 or Later)
- [Nerd Font](https://www.nerdfonts.com/) - I use Meslo Nerd Font
- [Ripgrep](https://github.com/BurntSushi/ripgrep) - For Telescope Fuzzy Finder
- [Nodejs](https://nodejs.org/en/) - For typescript/javascript and the typescript language server

Installation:
```bash
brew install --cask iterm2
```
```bash
brew install neovim
```
```bash
brew install ripgrep
```
```bash
brew install node
```

## Plugins
#### Plugin Manager: automatically install, update and remove packages
- [wbthomason/packer](https://github.com/wbthomason/packer.nvim) - Popular plugin manager

#### Dependency For Other Plugins
- [nvim-lua/plenary](https://github.com/nvim-lua/plenary.nvim) - Useful lua functions other plugins use

#### Preferred Colorscheme
- [EdenEast/nightfox.nvim](https://github.com/EdenEast/nightfox.nvim)

#### Navigating Between Neovim Windows and Tmux
- [christoomey/vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)

#### Essentials
- [tpope/vim-surround](https://github.com/tpope/vim-surround) - manipulate surroundings with "ys", "ds", and "cs"
- [vim-scripts/ReplaceWithRegister](https://github.com/vim-scripts/ReplaceWithRegister) - replace things with register with "gr"

#### Comments
- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim) - toggle comments with "gc"
- [folke/todo-comments.nvim](https://github.com/folke/todo-comments.nvim) - Todo comment

#### File Explorer
- [nvim-tree/nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)

#### VS Code Like Icons
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)

#### Status Line
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)

#### Fuzzy Finder
- [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim) - Dependency for better performance
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - Fuzzy Finder

#### Autocompletion
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp) - Completion plugin
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer) - Completion source for text in current buffer
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path) - Completion source for file system paths

#### Snippets
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip) - Snippet engine
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets) - Useful snippets for different languages
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip) - Completion source for snippet autocomplete

#### Managing & Installing Language Servers, Linters & Formatters
- [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)

#### LSP Configuration
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim) - Bridges gap b/w mason & lspconfig
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) - Easy way to configure lsp servers
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp) - Smart code autocompletion with lsp
- [glepnir/lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim) - Enhanced uis for lsp
- [jose-elias-alvarez/typescript.nvim](https://github.com/jose-elias-alvarez/typescript.nvim) - Additional functionality for typescript server
- [onsails/lspkind.nvim](https://github.com/onsails/lspkind.nvim) - Vs Code Like Icons for autocompletion

#### Formatting & Linting
- [jose-elias-alvarez/null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim) - Easy way to configure formatters & linters
- [jayp0521/mason-null-ls.nvim](https://github.com/jayp0521/mason-null-ls.nvim) - Bridges gap b/w mason & null-ls

#### Syntax Highlighting & Autoclosing Things
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - Treesitter configuration
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs) - Autoclose brackets, parens, quotes, etc...
- [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag) - Autoclose tags
- [p00f/nvim-ts-rainbow](https://github.com/p00f/nvim-ts-rainbow) - Rainbow parentheses

#### Git
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) - Show line modifications on left hand side
