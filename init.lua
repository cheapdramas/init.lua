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
require('plugins-config.dashboard')
-- require('plugins-config.toggleterm')
--
--
--
--Line counter
vim.cmd("set relativenumber")

--Color scheme
vim.cmd.colorscheme "catppuccin"
vim.o.background = "dark"


--Identation
vim.cmd("set tabstop=2")
vim.cmd("set shiftwidth=2")

-- Navigation in insert mode
vim.cmd("inoremap <A-h>  <Left>")
vim.cmd("inoremap <A-j>  <Down>")
vim.cmd("inoremap <A-k>  <Up>")
vim.cmd("inoremap <A-l>  <Right>")

--Line counter
vim.cmd("set relativenumber")


--Identation
vim.cmd("set tabstop=2")
vim.cmd("set shiftwidth=2")

-- Navigation in insert mode
vim.cmd("inoremap <A-h>  <Left>")
vim.cmd("inoremap <A-j>  <Down>")
vim.cmd("inoremap <A-k>  <Up>")
vim.cmd("inoremap <A-l>  <Right>")




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

--COPY INTO BUFFER
vim.cmd("set clipboard+=unnamedplus")

-- DO NOT ECHO KEYPRESSES
vim.cmd("set noshowcmd")

--Repeat visual block after action
vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")



--shit
vim.api.nvim_set_hl(0, 'WinBar', { bg = 'none' })
vim.api.nvim_set_hl(0, 'WinBarNC', { bg = 'none' })

--terminal
function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<C-h>', [[<C-\><C-n><C-w>h]], opts)
  vim.keymap.set('t', '<C-j>', [[<C-\><C-n><C-w>j]], opts)
  vim.keymap.set('t', '<C-k>', [[<C-\><C-n><C-w>k]], opts)
  vim.keymap.set('t', '<C-l>', [[<C-\><C-n><C-w>l]], opts)
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
