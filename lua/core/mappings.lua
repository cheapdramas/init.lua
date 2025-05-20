vim.g.mapleader = " "
-- Replace to dest, without loosing src 
vim.keymap.set("x", "A-p", "\"_dP")

--Repeat visual block after action
vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")



--Swap between windows in diff modes 
function _G.set_terminal_keymaps()
	local opts = { buffer = 0 }
	vim.keymap.set('t', '<C-h>', [[<C-\><C-n><C-w>h]], opts)
	vim.keymap.set('t', '<C-j>', [[<C-\><C-n><C-w>j]], opts)
	vim.keymap.set('t', '<C-k>', [[<C-\><C-n><C-w>k]], opts)
	vim.keymap.set('t', '<C-l>', [[<C-\><C-n><C-w>l]], opts)
end
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
-- in normal mode
vim.keymap.set('n', '<C-h>', [[<C-\><C-n><C-w>h]])
vim.keymap.set('n', '<C-j>', [[<C-\><C-n><C-w>j]])
vim.keymap.set('n', '<C-k>', [[<C-\><C-n><C-w>k]])
vim.keymap.set('n', '<C-l>', [[<C-\><C-n><C-w>l]])
-- in insert mode
vim.keymap.set('i', '<C-h>', [[<C-\><C-n><C-w>h]])
vim.keymap.set('i', '<C-j>', [[<C-\><C-n><C-w>j]])
vim.keymap.set('i', '<C-k>', [[<C-\><C-n><C-w>k]])
vim.keymap.set('i', '<C-l>', [[<C-\><C-n><C-w>l]])


-- Navigation in insert mode
vim.cmd("inoremap <A-h>  <Left>")
vim.cmd("inoremap <A-j>  <Down>")
vim.cmd("inoremap <A-k>  <Up>")
vim.cmd("inoremap <A-l>  <Right>")
