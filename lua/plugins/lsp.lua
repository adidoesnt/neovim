return {
				{
								"williamboman/mason.nvim",
								config = function()
												require("mason").setup({})
								end
				},
				{
								"williamboman/mason-lspconfig.nvim",
								config = function()
												require("mason-lspconfig").setup({
																ensure_installed = {
																				"tsserver",
																				"lua_ls", 
																				"rust_analyzer",
																				"dockerls",
																				"jsonls",
																				"yamlls",
																				"html",
																				"cssls",
																				"bashls",
																				"vimls",
																				"pyright",
																				"svelte",
																				"tailwindcss",
																				"sqlls",
																				"prismals",
																				"graphql",
																				"gleam",
																				"cypher_ls",
																				"clangd",
																				"astro",
																}
												})
								end

				},
				{
								"neovim/nvim-lspconfig",
								config = function()
												local nvim_lsp = require("lspconfig")
												nvim_lsp.tsserver.setup({})
												nvim_lsp.lua_ls.setup({})
												nvim_lsp.rust_analyzer.setup({})
												nvim_lsp.dockerls.setup({})
												nvim_lsp.jsonls.setup({})
												nvim_lsp.yamlls.setup({})
												nvim_lsp.html.setup({})
												nvim_lsp.cssls.setup({})
												nvim_lsp.bashls.setup({})
												nvim_lsp.vimls.setup({})
												nvim_lsp.pyright.setup({})
												nvim_lsp.svelte.setup({})
												nvim_lsp.tailwindcss.setup({})
												nvim_lsp.sqlls.setup({})
												nvim_lsp.prismals.setup({})
												nvim_lsp.graphql.setup({})
												nvim_lsp.gleam.setup({})
												nvim_lsp.cypher_ls.setup({})
												nvim_lsp.clangd.setup({})
												nvim_lsp.astro.setup({})
								end
				}
}
