-- Basic config
require('core.plugins')
require('core.mappings')
require('plugins-config.nvimtree')
require('plugins-config.telescope')
require('plugins-config.comment')
require('plugins-config.lsp')
require('plugins-config.farout-colorscheme')
require('plugins-config.gruvbox-colorscheme')
require('plugins-config.nvim-cmp')
require('plugins-config.lualine')
require('plugins-config.presence-config')
require('plugins-config.catppuccin')
require('plugins-config.indentation')
--
--Line counter
vim.cmd("set number")
vim.cmd("set relativenumber")

vim.opt.cursorline = false


--Color scheme
vim.cmd.colorscheme "gruvbox" vim.o.background = "dark"

--Identation
vim.cmd("set tabstop=2")
vim.cmd("set shiftwidth=2")



vim.api.nvim_create_autocmd("BufEnter", {
	callback = function()
		local file = io.open("/tmp/nvim_activity.txt", "w")
		if file then
			file:write(vim.fn.expand("%:t") or "No File")
			file:close()
		end
	end
})


vim.opt.signcolumn = "yes";

--Copy into system clipboard
vim.cmd("set clipboard+=unnamedplus")

-- DO NOT ECHO KEYPRESSES
vim.cmd("set noshowcmd")


--Winbar color idk why it`s here but ok
vim.api.nvim_set_hl(0, 'WinBar', { bg = '#22232E' })
vim.api.nvim_set_hl(0, 'WinBarNC', { bg = '#22232E' })
