local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", --
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	require('plugins-installation.nvim-tree'),
	require('plugins-installation.telescope'),
	require('plugins-installation.farout-colorscheme'),
	require('plugins-installation.gruvbox-colorscheme'),
	require('plugins-installation.catppuccin'),
	require('plugins-installation.lsp'),
	require('plugins-installation.nvim-cmp'),
	require('plugins-installation.presence'),
	require('plugins-installation.nvim-web-devicons'),
	require('plugins-installation.lualine'),
	require('plugins-installation.comment'),
	require('plugins-installation.indent-blackline'),
})
