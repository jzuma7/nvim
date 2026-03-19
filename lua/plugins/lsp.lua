return {
  'mason-org/mason-lspconfig.nvim',
  opts = {
    ensure_installed = { 'lua_ls', 'clangd', 'ts_ls', 'intelephense', 'html', 'cssls', 'angularls' },
  },
  dependencies = {
    { 'mason-org/mason.nvim', opts = {} },
    'neovim/nvim-lspconfig',
    {
      'folke/lazydev.nvim',
      ft = 'lua', -- only load on lua files
      opts = {
        library = {
          -- See the configuration section for more details
          -- Load luvit types when the `vim.uv` word is found
          { path = '${3rd}/luv/library', words = { 'vim%.uv' } },
        },
      },
    },
  },
  config = function(_, opts)
    require('mason-lspconfig').setup(opts)
    vim.api.nvim_create_autocmd('LspAttach', {
      callback = function(ev)
        local map_opts = { buffer = ev.buf }
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, map_opts)
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, map_opts)
        vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, map_opts)
      end,
    })
  end,
}
