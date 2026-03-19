vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.softtabstop = 2
vim.o.breakindent = true

vim.opt.cursorline = true

vim.g.have_nerd_font = true

vim.o.termguicolors = true

vim.o.number = true
vim.o.relativenumber = true

vim.o.scrolloff = 10

vim.o.ignorecase = true
vim.o.smartcase = true

vim.opt.undofile = true

vim.opt.signcolumn = 'yes'

vim.opt.updatetime = 250

vim.o.mouse = 'a'

vim.o.showmode = false
vim.opt.cmdheight = 1
vim.opt.laststatus = 3

vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.o.inccommand = 'split'

vim.schedule(function() vim.o.clipboard = 'unnamedplus' end)

vim.diagnostic.config({
  virtual_text = true,
})
