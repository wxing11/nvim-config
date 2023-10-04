return {
  "sbdchd/neoformat",
  config = function()
    vim.keymap.set('n', '<A-S-f>', ':Neoformat<CR>', {})
    vim.g.neoformat_enabled_typescript = {'prettier'}
    vim.g.neoformat_enabled_json = {'prettier'}
  end
}
