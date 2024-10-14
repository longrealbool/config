vim.keymap.set("n", "<C-f>", require('fzf-lua').files, { desc = "Fzf Files" })
vim.keymap.set("n", "<C-g>", require('fzf-lua').grep, { desc = "Fzf grep" })
vim.keymap.set("n", "<C-k>", require('fzf-lua').builtin, { desc = "Fzf builtin commands" })
vim.keymap.set("n", "<C-l>", require('fzf-lua').live_grep, { desc = "Fzf livegrep" })

-- Set key binding for LSP code action
vim.g.mapleader = ' '
vim.api.nvim_set_keymap('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definiton()<CR>', { noremap = true, silent = true })

