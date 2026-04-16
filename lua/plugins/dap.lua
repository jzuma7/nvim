return {
  'mfussenegger/nvim-dap',
  dependencies = {
    'rcarriga/nvim-dap-ui',
    'nvim-neotest/nvim-nio',
    'jay-babu/mason-nvim-dap.nvim',
    'mason-org/mason.nvim'
  },
  config = function()
    local dap = require('dap')
    local dapui = require('dapui')

    dapui.setup()

    dap.listeners.after.event_initialized['dapui_config'] = function() dapui.open() end
    dap.listeners.before.event_terminated['dapui_config'] = function() dapui.close() end
    dap.listeners.before.event_exited['dapui_config'] = function() dapui.close() end

    require('mason-nvim-dap').setup({
      automatic_installation = true,
      ensure_installed = { 'php' },
      handlers = {
        function(config)
          require('mason-nvim-dap').default_setup(config)
        end,
        php = function(config)
          config.configurations = {
            {
              type = 'php',
              request = 'launch',
              name = 'Listen for Xdebug',
              port = 9000,
              -- pathMappings = {
                --   ['/var/www/html'] = '${workspaceFolder}'
                -- }
              }
            }
            require('mason-nvim-dap').default_setup(config)
          end,
        },
      })

      vim.keymap.set('n', '<F5>', function() dap.continue() end, { desc = 'Debug: Iniciar/Continuar' })
      vim.keymap.set('n', '<F10>', function() dap.step_over() end, { desc = 'Debug: Step Over (Pular)' })
      vim.keymap.set('n', '<F11>', function() dap.step_into() end, { desc = 'Debug: Step Into (Entrar)' })
      vim.keymap.set('n', '<F12>', function() dap.step_out() end, { desc = 'Debug: Step Out (Sair)' })
      vim.keymap.set('n', '<leader>b', function() dap.toggle_breakpoint() end, { desc = 'Debug: Toggle Breakpoint' })
      vim.keymap.set('n', '<F6>', function() dap.terminate() end, { desc = 'Debug: Parar/Encerrar (Terminate)' })
    end,
  }
