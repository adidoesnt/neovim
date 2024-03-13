return {
				"nvim-neo-tree/neo-tree.nvim",
				branch = "v3.x",
				dependencies = {
								"nvim-lua/plenary.nvim",
								"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
								"MunifTanjim/nui.nvim",
				},
				config = function()
								vim.keymap.set('n', '<C-S-b>', ':Neotree focus<CR>', { noremap = true })
								vim.keymap.set('n', '<C-b>', ':Neotree filesystem toggle<CR>', { noremap = true })
				end
}
