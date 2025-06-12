return {
  { "mason-org/mason.nvim", opts = {} },

  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "bashls",        -- bash
        "cssls",         -- css
        "dockerls",      -- dockerfile
        "gopls",         -- go
        "html",          -- html
        "jdtls",         -- java
        "jsonls",        -- json
        "lua_ls",        -- lua
        "marksman",      -- markdown
        "pyright",       -- python
        "rust_analyzer", -- rust
        "ts_ls",         -- typescript / javascript
        "yamlls",        -- yaml
      },
    },
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
  },

  { "neovim/nvim-lspconfig", lazy = false },

  {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    opts = function()
      local cmp = require("cmp")
      local luasnip = require("luasnip")

      return {
        view = {
          docs = { auto_open = false },
        },
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
            ["<C-j>"] = cmp.mapping.select_next_item(),
            ["<C-k>"] = cmp.mapping.select_prev_item(),
            ["<up>"] = cmp.mapping.scroll_docs(4),
            ["<down>"] = cmp.mapping.scroll_docs(-4),
            ["<CR>"] = cmp.mapping.confirm({ select = true }),
          }),
        sources = cmp.config.sources({
            { name = "nvim_lsp" },
            { name = "luasnip" },
            { name = "buffer" },
          }),
      }
    end,
    dependencies = {
      'L3MON4D3/LuaSnip',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'saadparwaiz1/cmp_luasnip',
    },
  },

  {
    "folke/trouble.nvim",
    opts = {},
    cmd = "Trouble",
    keys = {
      {
        "<leader>xx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)",
      },
      {
        "<leader>xX",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer Diagnostics (Trouble)",
      },
      {
        "<leader>cs",
        "<cmd>Trouble symbols toggle focus=false<cr>",
        desc = "Symbols (Trouble)",
      },
      {
        "<leader>cl",
        "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
        desc = "LSP Definitions / references / ... (Trouble)",
      },
      {
        "<leader>xL",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "Location List (Trouble)",
      },
      {
        "<leader>xQ",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Quickfix List (Trouble)",
      },
    },
  },

}
