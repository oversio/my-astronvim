--if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
      "lua",
      "vim",
      "javascript",
      "typescript",
      "tsx",
      "json",
      "css",
      "html",
      "bash",
      "markdown",
      "markdown_inline",
      -- add more arguments for adding more treesitter parsers
    })

    opts.context_commentstring = {
      enable = true, -- Enable context-aware comment strings
      enable_autocmd = false,
    }
    opts.rainbow = {
      enable = true, -- Enable rainbow parentheses
      extended_mode = true, -- Highlight also non-parentheses delimiters
    }
  end,
}
