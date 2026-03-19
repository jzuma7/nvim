return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'MunifTanjim/nui.nvim',
    'nvim-tree/nvim-web-devicons',
  },
  lazy = false,
  keys = {
    { '<leader>e', '<cmd>Neotree toggle<cr>' },
  },
  opts = {
    use_popups_for_input = false,
    close_if_last_window = true,
    event_handlers = {
      {
        event = 'file_added',
        handler = function(filepath)
          vim.schedule(function()
            vim.cmd('edit ' .. vim.fn.fnameescape(filepath))
          end)
        end,
      },
    },
  },
}
