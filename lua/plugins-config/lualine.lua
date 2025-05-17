require('lualine').setup {

  options = {
    icons_enabled = true,
    theme = {
				-- normal   = { c = { fg = '#b2b2b2', bg = '#1c1c1c' } },
				-- insert   = { c = { fg = '#b2b2b2', bg = '#1c1c1c' } },
				-- visual   = { c = { fg = '#b2b2b2', bg = '#1c1c1c' } },
				-- replace  = { c = { fg = '#b2b2b2', bg = '#3a3a3a' } },
				-- command  = { c = { fg = '#b2b2b2', bg = '#1c1c1c' } },
				--


				normal   = { b = { fg = '#FFFFFF', bg = '#01232e' },c = {fg= "#b2b2b2",bg = "#1c1c1c"} },
				insert   = { c = { fg = '#FFFFFF', bg = '#1c1c1c' } },
				visual   = { c = { fg = '#FFFFFF', bg = '#1c1c1c' } },
				replace  = { c = { fg = '#FFFFFF', bg = '#3a3a3a' } },
				command  = { c = { fg = '#FFFFFF', bg = '#1c1c1c' } },
    },
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
		globalstatus=true,
  },
  sections = {
    lualine_a = {},
    lualine_b = {'filename'},
    lualine_c = {},
    lualine_x = {'filetype'},
    lualine_y = {},
    lualine_z = {function() return os.date('%H:%M:%S') end}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {}
  },
	winbar = {
	  lualine_a = {{
	    'filename',
			--Ignore nvimtree, do not put filename on the top 
			cond = function()
				return vim.bo.filetype ~= 'NvimTree'
			end,
	    path = 1,
	  }},
	},
	inactive_winbar = {
	  lualine_a = {{
	    'filename',
	    path = 1,
	  }},
	}
}
