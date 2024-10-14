vim.keymap.set("n", "<C-f>", require('fzf-lua').files, { desc = "Fzf Files" })
vim.keymap.set("n", "<C-g>", require('fzf-lua').grep, { desc = "Fzf grep" })
vim.keymap.set("n", "<C-k>", require('fzf-lua').builtin, { desc = "Fzf builtin commands" })
vim.keymap.set("n", "<C-l>", require('fzf-lua').live_grep, { desc = "Fzf livegrep" })

-- Set key binding for LSP code action
vim.g.mapleader = ' '
vim.api.nvim_set_keymap('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', { noremap = true, silent = true })


local opts = { noremap = true, silent = false }
local term_opts = { silent = true }
-- Shorten function name
local keymap = vim.keymap.set

keymap('n', '<M-k>', [[:lua select_word()<cr>]], opts)
keymap("n", "<M-b>", ":Buffers<CR>", opts)
keymap("n", "<M-f>", ":Rg <C-r><C-w><cr>", opts)
keymap("n", "<M-d>", ":lua toggle_diff()<CR>", opts)

_G.select_word = function()
    local word_under_cursor = vim.fn.expand("<cWORD>")
    local word_under_cursor_purged = string.gsub(word_under_cursor, "[,)(:]", "")
    print(word_under_cursor_purged)
    vim.fn.setreg("/", word_under_cursor_purged .. "\\>")
end


_G.toggle_diff = function()
    if vim.o.diff == false then
        vim.cmd("windo diffthis")
    else
        vim.cmd("windo diffoff")
    end
end
