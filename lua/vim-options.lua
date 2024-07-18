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
vim.keymap.set('v', 'Y', '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Space>y', 'yyP', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Space>y', 'yP', { noremap = true, silent = true })

-- Definition
vim.api.nvim_set_keymap('n', '<Space>j', '<cmd>lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })

-- Shortcut Command
vim.api.nvim_set_keymap('n', '<leader>m', ':Mason<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'L', ':LazyGitCurrentFile<CR>', { noremap = true, silent = true })


-- Move line
vim.api.nvim_set_keymap('n', '<C-Up>', ':m .-2<CR>==', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-Down>', ':m .+1<CR>==', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'K', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'J', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<C-Up>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<C-Down>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })




vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.wo.number = true


