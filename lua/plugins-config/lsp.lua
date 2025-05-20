local function common_on_attach(client, bufnr)
	local opts = { noremap = true, silent = true, buffer = bufnr }
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
	vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
	vim.keymap.set("n", "<leader>lrn", vim.lsp.buf.rename, opts)
	vim.keymap.set("n", "<leader>lca", vim.lsp.buf.code_action, opts)
	vim.keymap.set("n", "<leader>lf", function()
		vim.lsp.buf.format({ async = true })
	end, opts)
end



require("lspconfig").lua_ls.setup({
	on_attach = common_on_attach,
	settings = {
		Lua = { diagnostics = { globals = { 'vim' }, undefined_global = false, missing_parameters = false } }
	}
})

require("lspconfig").clangd.setup({
	cmd = { 'clangd', '--background-index', '--log=verbose' },
	on_attach = common_on_attach
})

require("lspconfig").ruby_lsp.setup({
	cmd = { 'ruby-lsp' },
	on_attach = common_on_attach
})
