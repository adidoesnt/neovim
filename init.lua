vim.cmd("set termguicolors")
vim.cmd("set tabstop=2")
vim.g.mapleader = ' '
vim.wo.number = true

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
				vim.fn.system({
								"git",
								"clone",
								"--filter=blob:none",
								"https://github.com/folke/lazy.nvim.git",
								"--branch=stable", -- latest stable release
								lazypath,
				})
end
vim.opt.rtp:prepend(lazypath)

local opts = {}

require("lazy").setup("plugins")

require("copilot").setup({
				suggestion = {
								enabled = true,
								auto_trigger = true,
								keymap = {
												accept = "<C-a>",
												replace = "<C-r>",
												next = "<C-n>",
												prev = "<C-p>",
												ignore = "<C-i>",
												cancel = "<C-c>",	
								}
				}
})


local config = require("nvim-treesitter.configs")
config.setup({
				ensure_installed = {"lua", "javascript", "rust"},
				highlight = { enable = true },
				indent = { enable = true }
})

vim.keymap.set('n', '<Leader>lg', ':LazyGit<CR>', { noremap = true }) -- install lazygit via homebrew for this to work

vim.keymap.set('n', '<C-b>', ':Neotree filesystem toggle<CR>', { noremap = true })

