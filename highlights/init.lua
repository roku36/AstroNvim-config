return { -- this table overrides highlights in all themes
  Normal = { fg = "none", bg = "none" },
  -- NormalFloat = { fg = "Red", bg = "Black" },
  NeoTreeIndentMarker = { bg = "Green" },
  NeoTreeExpander = { bg = "Blue" },
  NeoTreeFileName = { bg = "Blue" },
  -- CursorLine = { fg = "Black", bg = "Blue" },
  -- Normal = { fg = "#006600", bg = "none" },
  -- EndOfBuffer = { fg = "none", bg = "none" },
  -- NonText = { ctermfg = "DarkRed", ctermbg = "DarkCyan", cterm = none},

  -- vim.cmd [[highlight MyHighlight guibg=#222200]],
  -- vim.cmd [[match MyHighlight /./]],
}
-- return function()
--   -- vim.cmd [[highlight MyHighlight ctermbg=DarkRed guibg=DarkRed]]
--   vim.cmd [[highlight Normal guibg=None ]]
--   vim.cmd [[highlight NormalFloat guibg=Black ]]
--   vim.cmd [[highlight MyHighlight guibg=#220000]]
--   vim.cmd [[match MyHighlight /./]]
-- end
