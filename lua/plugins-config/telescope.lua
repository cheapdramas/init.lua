local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

--Find functions
vim.keymap.set('n', '<A-f>', function()
  require('telescope.builtin').lsp_document_symbols({
    symbols = { 'Function', 'Method' },
		prompt_title = 'Functions'  -- 👈 Custom title
  })
end, { desc = 'List Functions and Methods' })
