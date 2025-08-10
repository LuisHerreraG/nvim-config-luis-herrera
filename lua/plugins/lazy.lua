return {
  -- catpuccin
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  -- telescope
  { 'nvim-telescope/telescope.nvim', tag = '0.1.8', dependencies = { 'nvim-lua/plenary.nvim' } },
  -- tree
  {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	requires = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
	  require("nvim-tree").setup {}
	end,
  },
  -- bufferline
  {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},
  -- markdown preview
  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
    opts = {},
  },
  -- comment
  {
    'numToStr/Comment.nvim',
    opts = {
        -- add any options here
    }
  },
  -- blink.cmp
  {
  "saghen/blink.cmp",
  version = "1.*",
  dependencies = { "rafamadriz/friendly-snippets" },
  opts = {
    keymap = {
      preset = "enter",
      ["<Tab>"] = { "select_and_accept", "fallback" },
      ["<S‑Tab>"] = { "select_prev", "snippet_backward", "fallback" },
      ["<CR>"] = { "select_and_accept", "fallback" },
    },
    appearance = {
      nerd_font_variant = "mono",
    },
    completion = {
      documentation = { auto_show = false },
      list = {
        selection = {
          auto_insert = true,
          preselect = false,  -- disable auto-select of first item to avoid unwanted accepts
        },
      },
    },
    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },
    fuzzy = { implementation = "prefer_rust_with_warning" },
  },
  opts_extend = { "sources.default" },
  },
  -- mason
  {
    "mason-org/mason.nvim",
    opts = {}
  },
  -- lsp-config
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
    },
}
}

