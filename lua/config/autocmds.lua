vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.api.nvim_create_autocmd({ 'UIEnter', 'ColorScheme' }, {
  callback = function()
    local normal = vim.api.nvim_get_hl(0, { name = 'Normal' })
    if not normal.bg then return end
    io.stdout:write(string.format('\27]11;#%06x\27\\', normal.bg))
  end,
})

vim.api.nvim_create_autocmd('UILeave', {
  callback = function()
    io.stdout:write('\27]111\27\\')
  end,
})

local cursorline_grp = vim.api.nvim_create_augroup('CursorLineControl', { clear = true })

vim.api.nvim_create_autocmd({ 'WinEnter', 'BufEnter' }, {
  group = cursorline_grp,
  callback = function() vim.wo.cursorline = true end,
})

vim.api.nvim_create_autocmd({ 'WinLeave' }, {
  group = cursorline_grp,
  callback = function() vim.wo.cursorline = false end,
})
