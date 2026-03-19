return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  event = { 'BufReadPre', 'BufNewFile' },
  main = 'nvim-treesitter.config',
  opts = {
    ensure_installed = {
      'lua', 'vim', 'vimdoc', 'query',
      'c', 'cpp',
      'javascript', 'typescript', 'tsx',
      'html', 'css', 'json',
      'php', 'sql',
      'bash',
      'markdown', 'markdown_inline',
    },
    auto_install = true,
    sync_install = false,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
    indent = {
      enable = true,
    },
  }
}
