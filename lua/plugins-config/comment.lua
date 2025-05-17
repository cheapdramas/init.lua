require('Comment').setup({
	--Select block again after commenting
	post_hook = function()
		vim.cmd('normal! gv')
	end
})
