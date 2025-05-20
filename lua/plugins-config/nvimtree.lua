local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end
  -- default mappings
  api.config.mappings.default_on_attach(bufnr)
  -- custom mappings
  vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent,        opts('Up'))
  vim.keymap.set('n', '?',     api.tree.toggle_help,                  opts('Help'))
	vim.keymap.set('n', 'v',api.node.open.vertical,opts("Open: Vertical Split"))
end



require("nvim-tree").setup({

	on_attach = my_on_attach,

	view = {
		side = "right",
		relativenumber=true
  },
	renderer = {
		root_folder_label = function(path)
      return vim.fn.fnamemodify(path, ":t") -- only the tail (last part)
    end,
	}
})
local api= require("nvim-tree.api")
--Toggle nvim-tree
vim.keymap.set('n', '<leader>b',api.tree.toggle);
--Reveal file in nvim-tree
vim.keymap.set(
	'n', '<leader>e',
	function()
  	api.tree.find_file({ open = true, focus = true })
	end,
	{ desc = "Reveal file in nvim-tree" }
)
