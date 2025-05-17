return {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",      -- LSP source for completion
      "L3MON4D3/LuaSnip",          -- Snippet engine
      "saadparwaiz1/cmp_luasnip",  -- Snippet completion
      "hrsh7th/cmp-buffer",        -- Buffer words completion
      "hrsh7th/cmp-path",          -- Path completion
    },
    -- config = function()
    --   local cmp = require("cmp")
    --
    --   cmp.setup({
    --     mapping = cmp.mapping.preset.insert({
    --       ["<C-Space>"] = cmp.mapping.complete(),
    --       ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Confirm selection
    --     }),
    --     sources = cmp.config.sources({
    --       { name = "nvim_lsp" },
    --       { name = "luasnip" },
    --       { name = "buffer" },
    --       { name = "path" },
    --     }),
    --   })
    -- end,
}
