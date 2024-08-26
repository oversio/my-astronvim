-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

local bg = "NONE"
---@type LazySpec
return {
  "AstroNvim/astroui",
  ---@type AstroUIOpts
  opts = {
    -- change colorscheme
    colorscheme = "onedark",
    -- AstroUI allows you to easily modify highlight groups easily for any and all colorschemes
    guifont = "Geist Mono",
    highlights = {
      init = { -- this table overrides highlights in all themes
        Normal = { bg = bg },
        NormalNC = { bg = bg },
        NormalFloat = { bg = bg },
        SignColumn = { bg = bg },
        -- LineNr = { bg = bg },
        -- IndentBlanklineChar = { fg = "#2c323c" }, -- Adjust the color to fit your theme
        -- IndentBlanklineContextChar = { fg = "#3e4451" }, -- Context indentation lines
        CursorLine = { bg = bg },
        StatusLine = { bg = bg },
        StatusLineNC = { bg = bg },
        Pmenu = { bg = bg },
        PmenuSel = { bg = bg },
        PmenuSbar = { bg = bg },
        PmenuThumb = { bg = bg },
        TabLine = { bg = bg },
        TabLineFill = { bg = bg },
        NeotreeNormal = { bg = bg },
        NeoTreeNormal = { bg = bg },
        FloatTitle = { bg = bg },
      },
      astrodark = { -- a table of overrides/changes when applying the astrotheme theme
        -- Normal = { bg = "#000000" },
      },
    },
    -- Icons can be configured throughout the interface
    icons = {
      -- configure the loading of the lsp in the status line
      LSPLoading1 = "⠋",
      LSPLoading2 = "⠙",
      LSPLoading3 = "⠹",
      LSPLoading4 = "⠸",
      LSPLoading5 = "⠼",
      LSPLoading6 = "⠴",
      LSPLoading7 = "⠦",
      LSPLoading8 = "⠧",
      LSPLoading9 = "⠇",
      LSPLoading10 = "⠏",
    },
  },
}
