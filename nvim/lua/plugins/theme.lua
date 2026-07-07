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
    'maxmx03/solarized.nvim',
    lazy = true,
    config = function()
      vim.o.termguicolors = true
      vim.o.background = 'light'
      require('solarized').setup({})
    end,
  },
  {
    "zaldih/themery.nvim",
    lazy = false,
    config = function()
      local function set_light_theme_cursor()
        if vim.o.background ~= "light" then
          return
        end

        vim.api.nvim_set_hl(0, "Cursor", { fg = "#fdf6e3", bg = "#073642" })
        vim.api.nvim_set_hl(0, "CursorIM", { fg = "#fdf6e3", bg = "#073642" })
        vim.api.nvim_set_hl(0, "TermCursor", { fg = "#fdf6e3", bg = "#073642" })
      end

      vim.api.nvim_create_autocmd("ColorScheme", {
        callback = set_light_theme_cursor,
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
      set_light_theme_cursor()
    end,
    keys = {
      { '<leader>q', "<cmd>Themery<cr>", desc = "Switch Themes" },
    },
  },
}
