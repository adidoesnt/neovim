return	{
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
				},
				config = function()
								vim.keymap.set('n', '<Leader>lg', ':LazyGit<CR>', { noremap = true }) -- install lazygit via homebrew for this to work
				end
}