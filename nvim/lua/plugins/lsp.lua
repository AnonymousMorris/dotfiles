return {
  {
    'mason-org/mason.nvim',
    opts = {},
  },
  {
    'mason-org/mason-lspconfig.nvim',
    dependencies = {
      'mason-org/mason.nvim',
      'neovim/nvim-lspconfig',
    },
    opts = {
      ensure_installed = {
        'svelte',
        'lua_ls',
        'rust_analyzer',
        'pyright',
        'ts_ls',
        'zls',
        'clangd',
      },
      automatic_enable = true,
    },
  },
  {
    'neovim/nvim-lspconfig',
    dependencies = { 'saghen/blink.cmp' },
    config = function()
      vim.lsp.config('*', {
        capabilities = require('blink.cmp').get_lsp_capabilities(),
      })

      vim.lsp.config('lua_ls', {
        settings = {
          Lua = {
            runtime = {
              version = 'LuaJIT',
            },
            diagnostics = {
              globals = { 'vim', 'Snacks' },
            },
            workspace = {
              checkThirdParty = false,
              library = {
                vim.env.VIMRUNTIME,
              },
            },
          },
        },
      })

      vim.api.nvim_create_autocmd('LspAttach', {
        callback = function(event)
          local map = function(lhs, rhs, desc)
            vim.keymap.set('n', lhs, rhs, { buffer = event.buf, desc = desc })
          end

          map('gd', function() Snacks.picker.lsp_definitions() end, 'Goto Definition' )
          map('gr', function() Snacks.picker.lsp_references() end, 'References')
          map('gi', function() Snacks.picker.lsp_implementations() end, 'Goto Implementation')
          map('K', vim.lsp.buf.hover, 'Hover')
          map('gD', vim.lsp.buf.declaration, 'Goto Declaration')
          map('<leader>rn', vim.lsp.buf.rename, 'Rename')
          map('<leader>ca', vim.lsp.buf.code_action, 'Code Action')
          map('<leader>d', vim.diagnostic.open_float, 'Line Diagnostics')
        end,
      })
    end,
  },
}
