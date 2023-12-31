return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  "andweeb/presence.nvim",
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").setup() end,
  },
  "nvim-lua/plenary.nvim",
  --
  -- -- Optional, for completion.
  "hrsh7th/nvim-cmp",
  --
  -- -- Optional, for search and quick-switch functionality.
  "nvim-telescope/telescope.nvim",
  --
  -- -- Optional, alternative to nvim-treesitter for syntax highlighting.
  "godlygeek/tabular",
  "preservim/vim-markdown",
}
