vim.cmd("set tabstop=2")
vim.cmd("set shiftwidth=2")

require("ibl").setup {
	indent = { char = "│" },
	scope = { enabled = false },
	exclude = {
		filetypes = { "dashboard", "alpha", "starter", "neo-tree", "TelescopePrompt" },
    buftypes = { "terminal", "nofile" },
	},
}
