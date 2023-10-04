vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dP")

-- Switching buffers
vim.keymap.set('n', '<leader>[', ':bprevious<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>]', ':bnext<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader><Tab>', ':buffer #<CR>', { noremap = true, silent = true })

-- focus new pane on creation
vim.keymap.set('n', '<C-W>v', '<C-W>v<C-W>w', {})
vim.keymap.set('n', '<C-W>s', '<C-W>s<C-W>w', {})

-- close current buffer
vim.keymap.set('n', '<leader>q', ':bp|bd#<CR>', {})

-- yank to system clipboard
vim.keymap.set('v', '<Leader>y', '"+y', {})
vim.keymap.set('n', '<Leader>y', '"+y', {})

