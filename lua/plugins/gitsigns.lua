return {
  'lewis6991/gitsigns.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  opts = {
    signs = {
      add          = { text = '│' },
      change       = { text = '│' },
      delete       = { text = '_' },
      topdelete    = { text = '‾' },
      changedelete = { text = '~' },
      untracked    = { text = '┆' },
    },
    current_line_blame = true,
  },
  keys = {
    { '<leader>nh', '<cmd>Gitsigns next_hunk<cr>', desc = 'Próximo Hunk' },
    { '<leader>Nh', '<cmd>Gitsigns prev_hunk<cr>', desc = 'Hunk Anterior' },
    { '<leader>gp', '<cmd>Gitsigns preview_hunk<cr>', desc = 'Ver Diferença (Preview)' },
    { '<leader>gr', '<cmd>Gitsigns reset_hunk<cr>', desc = 'Reverter Alteração' },
  },
}
