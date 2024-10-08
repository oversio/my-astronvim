-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize None-ls sources

---@type LazySpec
return {
  "nvimtools/none-ls.nvim",
  opts = function(_, opts)
    -- opts variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"

    -- Check supported formatters and linters
    -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics

    -- Only insert new sources, do not replace the existing ones
    -- (If you wish to replace, use `opts.sources = {}` instead of the `list_insert_unique` function)
    opts.sources = require("astrocore").list_insert_unique(opts.sources, {
      -- Formatters
      null_ls.builtins.formatting.prettierd,
      null_ls.builtins.formatting.stylua,
      -- null_ls.builtins.formatting.eslint_d, -- Use eslint_d for formatting with ESLint

      -- Linters
      -- null_ls.builtins.diagnostics.eslint_d, -- Linter for JS/TS/React/Next.js
      null_ls.builtins.diagnostics.stylelint, -- Linter for CSS/SASS/SCSS (if needed)
      null_ls.builtins.diagnostics.dotenv_linter, -- Linter for CSS/SASS/SCSS (if needed)
      null_ls.builtins.diagnostics.markdownlint, -- Linter for CSS/SASS/SCSS (if needed)
      null_ls.builtins.diagnostics.yamllint, -- Linter for CSS/SASS/SCSS (if needed)

      -- Code Actions
      -- null_ls.builtins.code_actions.eslint_d, -- Quick fixes for linting issues
    })
  end,
}
