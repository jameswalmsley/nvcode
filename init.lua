-- General mappings
require('plugins')
require('nv-globals')
require('nv-utils')
vim.cmd('luafile ~/.config/nvim/nv-settings.lua')
require('nv-autocommands')
-- require('config')
require('settings')
require('keymappings')
require('colorscheme')
require('nv-galaxyline')

-- Plugins
require('nv-compe')
require('nv-colorizer')
require('nv-nvimtree')
require('nv-treesitter')
require('nv-barbar')
require('nv-emmet')
require('nv-quickscope')
require('nv-gitsigns')
require('nv-autopairs')
require('nv-neogit')
require('nv-comment')
require('nv-rnvimr')
require('nv-telescope')
require('nv-floaterm')
require('nv-vim-rooter')
require('nv-matchup')
require('nv-lspkind')
require('nv-hop')
require('nv-gitblame')
require('nv-nvim-peekup')
require('nv-dashboard')
require('nv-dial')
require('nv-nvim-dap')
require('nv-lightbulb')
require('nv-indentline')
require('nv-bookmark')
-- require('nv-lspinstall')

-- Which Key (Hope to replace with Lua plugin someday)
vim.cmd('source ~/.config/nvim/vimscript/nv-whichkey/init.vim')
vim.cmd('source ~/.config/nvim/vimscript/functions.vim')

-- LSP
require('lsp')
require('lsp.clangd')
require('lsp.lua-ls')
require('lsp.bash-ls')
require('lsp.js-ts-ls')
require('lsp.python-ls')
require('lsp.rust-ls')
require('lsp.json-ls')
require('lsp.yaml-ls')
require('lsp.vim-ls')
require('lsp.graphql-ls')
require('lsp.css-ls')
require('lsp.docker-ls')
require('lsp.html-ls')
require('lsp.efm-general-ls')
require('lsp.virtual_text')

-- vim.lsp.callbacks["textDocument/publishDiagnostics"] = function() end
-- vim.lsp.handlers["textDocument/publishDiagnostics"] = nil
