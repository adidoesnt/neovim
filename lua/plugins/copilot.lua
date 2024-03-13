return	{
				"zbirenbaum/copilot.lua",
				cmd = "Copilot",
				event = "InsertEnter",
				config = {
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
				}
}
