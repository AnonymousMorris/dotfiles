return {
  {
    'EdenEast/nightfox.nvim',
    lazy = true,
    name = "nightfox",
  },
  {
    'sainnhe/sonokai',
    lazy = true,
  },
  {
    'shaunsingh/solarized.nvim',
    lazy = true,
  },
  {
    "zaldih/themery.nvim",
    lazy = false,
    config = function()
      local function set_theme_cursor()
        local normal = vim.api.nvim_get_hl(0, { name = "Normal", link = false })
        if not normal.fg or not normal.bg then
          return
        end

        vim.api.nvim_set_hl(0, "Cursor", { fg = normal.bg, bg = normal.fg })
        vim.api.nvim_set_hl(0, "lCursor", { fg = normal.bg, bg = normal.fg })
        vim.api.nvim_set_hl(0, "CursorIM", { fg = normal.bg, bg = normal.fg })
        vim.api.nvim_set_hl(0, "TermCursor", { fg = normal.bg, bg = normal.fg })
      end

      vim.api.nvim_create_autocmd("ColorScheme", {
        callback = set_theme_cursor,
      })

      require("themery").setup({
        themes = {
          "sonokai",
          "nightfox",
          "dayfox",
          "solarized",
        },
        livePreview = true,
      })

      set_theme_cursor()
    end,
    keys = {
      { '<leader>q', "<cmd>Themery<cr>", desc = "Switch Themes" },
    },
  },
}
