vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set softtabstop=2")
vim.g.mapleader = " "
vim.g.background = "light"

vim.opt.swapfile = false

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

-- Copy code
vim.keymap.set('v', 'H', '"+y', { noremap = true, silent = true })
if vim.fn.maparg('B', 'n') ~= '' then
  vim.api.nvim_del_keymap('n', 'B')
end
vim.keymap.set('n', 'B', '"*p', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Space>y', 'yyP', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Space>y', 'yP', { noremap = true, silent = true })

-- Definition
vim.api.nvim_set_keymap('n', '<Space>j', '<cmd>lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })

-- Shortcut Command
vim.api.nvim_set_keymap('n', '<leader>m', ':Mason<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'G', ':LazyGitCurrentFile<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', 'L', ':LazyGitCurrentFile<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '?', ':Gitsigns blame_line<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'p', '"+p', { noremap = true, silent = true })


-- Save file
vim.api.nvim_set_keymap('n', '<C-s>', ':wa<CR>', { noremap = true, silent = true })

-- Move line
vim.api.nvim_set_keymap('n', '<C-Up>', ':m .-2<CR>==', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-Down>', ':m .+1<CR>==', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'K', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'J', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<C-Up>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<C-Down>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })

-- Short cut move cursor
vim.api.nvim_set_keymap('n', '<S-Right>', '6l', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-Left>', '6h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-Down>', '6j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-Up>', '6k', { noremap = true, silent = true })
if vim.fn.maparg('K', 'n') ~= '' then
  vim.keymap.del('n', 'K')
end
vim.api.nvim_set_keymap('n', 'K', '6k', { noremap = true, silent = true })
if vim.fn.maparg('J', 'n') ~= '' then
  vim.api.nvim_del_keymap('n', 'J')
end
vim.api.nvim_set_keymap('n', 'J', '6j', { noremap = true, silent = true })
if vim.fn.maparg('L', 'n') ~= '' then
  vim.api.nvim_del_keymap('n', 'L')
end
vim.api.nvim_set_keymap('n', 'L', '6l', { noremap = true, silent = true })
if vim.fn.maparg('H', 'n') ~= '' then
  vim.api.nvim_del_keymap('n', 'H')
end
vim.api.nvim_set_keymap('n', 'H', '6h', { noremap = true, silent = true })


-- For visual mode
vim.api.nvim_set_keymap('v', '<S-Right>', '6l', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<S-Left>', '6h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<S-Down>', '6j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<S-Up>', '6k', { noremap = true, silent = true })


vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.wo.number = true

