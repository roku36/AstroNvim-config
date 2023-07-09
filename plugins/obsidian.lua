return {
  {
    "epwalsh/obsidian.nvim",
    -- event = { "BufReadPre ~/zk/**.md" },
    -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand':
    -- event = { "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md" },
    dependencies = {
      -- Required.
      "nvim-lua/plenary.nvim",
    },
    opts = {
      dir = "~/zk",  -- no need to call 'vim.fn.expand' here

      daily_notes = {
        -- Optional, if you keep daily notes in a separate directory.
        folder = "Daily",
        -- Optional, if you want to change the date format for daily notes.
        date_format = "%Y-%m-%d"
      },

      finder = "telescope.nvim",
    },
    config = function(_, opts)
      require("obsidian").setup(opts)

      -- Optional, override the 'gf' keymap to utilize Obsidian's search functionality.
      -- see also: 'follow_url_func' config option above.
      vim.keymap.set("n", "gf", function()
        if require("obsidian").util.cursor_on_markdown_link() then
          return "<cmd>ObsidianFollowLink<CR>"
        else
          return "gf"
        end
      end, { noremap = false, expr = true })
    end,
  }
}
