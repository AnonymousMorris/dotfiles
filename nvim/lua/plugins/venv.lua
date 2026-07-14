return {
  {
    'linux-cultist/venv-selector.nvim',
    branch = 'main',
    ft = 'python',
    keys = {
      { '<leader>v', '<cmd>VenvSelect<cr>', desc = 'Select Python venv' },
    },
    opts = {
      options = {
        picker = 'snacks',
      },
    },
  },
}
