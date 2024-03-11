vim.cmd("set termguicolors")
vim.cmd("set tabstop=2")
vim.g.mapleader = ' '

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

local plugins = {
				{ "bluz71/vim-nightfly-colors", name = "nightfly", lazy = false, priority = 1000 },
				{
								'nvim-telescope/telescope.nvim', tag = '0.1.5',
								dependencies = {'nvim-lua/plenary.nvim'}
				},
				{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
				{
								"kdheepak/lazygit.nvim",
								cmd = {
												"LazyGit",
												"LazyGitConfig",
												"LazyGitCurrentFile",
												"LazyGitFilter",
												"LazyGitFilterCurrentFile",
								},
								dependencies = {
												"nvim-lua/plenary.nvim",
								}
				},
				{
								"zbirenbaum/copilot.lua",
								cmd = "Copilot",
								event = "InsertEnter",
				}
}

local opts = {}

require("lazy").setup(plugins, opts)

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

local builtin = require("telescope.builtin")
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<C-S-f>', builtin.live_grep, {}) -- install ripgrep for this to work

local config = require("nvim-treesitter.configs")
config.setup({
				ensure_installed = {"lua", "javascript", "rust"},
				highlight = { enable = true },
				indent = { enable = true }
})

vim.keymap.set('n', '<Leader>lg', ':LazyGit<CR>', { noremap = true })

vim.o.background = "dark"
vim.cmd([[colorscheme nightfly]])
