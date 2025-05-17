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
	{'phaazon/hop.nvim'},
	-- NvimTree
	{
		"nvim-tree/nvim-tree.lua"
	},
	-- Telescope
	{
		"nvim-telescope/telescope.nvim",
		dependencies={
			"nvim-lua/plenary.nvim",
			"BurntSushi/ripgrep"
		}
	},
	
	
	-- COLORSCHEMES
	require('plugins-installation.farout-colorscheme'),
	require('plugins-installation.gruvbox-colorscheme'),
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
  },



	-- LSP
	require('plugins-installation.lsp'),

	-- Autocomplete
	require('plugins-installation.nvim-cmp'),

	-- Discord Rich Presence
	require('plugins-installation.presence'),
	-- Nvim web devicons
	{ "nvim-tree/nvim-web-devicons", opts = {} },
	-- Lualine
	require('plugins-installation.lualine'),
	-- Mini statusline
	-- require('plugins-installation.mini-statusline'),
	{
    'numToStr/Comment.nvim',
	},
	--
 --  {
 --    "akinsho/toggleterm.nvim",
	--
 --    cmd = {
 --      "ToggleTerm",
 --      "TermExec",
 --      "ToggleTermToggleAll",
 --      "ToggleTermSendCurrentLine",
 --      "ToggleTermSendVisualLines",
 --      "ToggleTermSendVisualSelection",
	-- 	},
	-- },

	{
		'nvimdev/dashboard-nvim',
		event = 'VimEnter',
 	 }

})


