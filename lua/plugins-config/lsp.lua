require("lspconfig").lua_ls.setup ({
	settings = {
		Lua = { 
			-- completion, runtime, workspace, etc.
			diagnostics = {
				globals = { 'vim' },
				undefined_global = false, -- remove this from diag!
				missing_parameters = false, -- missing fields :)
			}
		}
	}
})

require("lspconfig").clangd.setup({
	cmd = {'clangd', '--background-index', '--clang-tidy', '--log=verbose'},
	on_attach = function(client,bufnr)
		local opts = { noremap = true, silent = true, buffer = bufnr }
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
		vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
		vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
	end	
})

require("lspconfig").ruby_lsp.setup({
		cmd = {'ruby-lsp'}, -- Ensure it's in PATH
		on_attach = function(client, bufnr)
			-- Keymaps for LSP actions
			local opts = { noremap = true, silent = true, buffer = bufnr }
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
			vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
		end,
})



