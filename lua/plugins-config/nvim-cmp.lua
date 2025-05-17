local cmp = require("cmp")  

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Подтверждение выбора
  }),
  sources = cmp.config.sources({
    { name = "nvim_lsp", max_item_count = 5 },
    { name = "buffer", max_item_count = 3 },
    { name = "luasnip" },
    { name = "path" },
  }),


	window = {
    completion = {
      winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
      col_offset = -3,
      side_padding = 0,
      border = "rounded",
    },
    documentation = {
      border = "rounded",
    },
  },
  formatting = {
    format = function(entry, vim_item)
      vim_item.abbr = string.sub(vim_item.abbr, 1, 20) -- Ограничение ширины
      return vim_item
    end,
  },
})
