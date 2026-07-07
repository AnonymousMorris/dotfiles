return {
  {
    'https://github.com/nvim-mini/mini.files',
    opts = {},
    keys = {
      { '<leader>f', function() require('mini.files').open() end, desc = 'Open file' },
    },
  },
  {
    'folke/snacks.nvim',
    priority = 1000,
    lazy = false,
    opts = {
      picker = { enabled = true },
      notifier = { enabled = true },
      input = { enabled = true },
    },
    keys = {
      { '<leader>sf', function() Snacks.picker.files() end, desc = 'Find Files' },
      { '<leader>ss', function() Snacks.picker.grep() end,  desc = 'Search Text' },
      { '<leader>sb', function() Snacks.picker.buffers() end, desc = 'Buffers' },
    },
  },
}
