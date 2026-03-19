return {
  'nvim-telescope/telescope.nvim', version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  },
  keys = {
    { '<leader>ff', '<cmd>Telescope find_files<cr>' },
    { '<leader>fb', '<cmd>Telescope buffers<cr>' },
    { '<leader>fg', '<cmd>Telescope git_files<cr>' },
    { '<leader>fs', '<cmd>Telescope live_grep<cr>' },
    { '<leader>fw', '<cmd>Telescope grep_string<cr>' },
  },
}
