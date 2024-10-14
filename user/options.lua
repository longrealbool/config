local options = {
  backup = false,                          -- creates a backup file
  clipboard = "unnamedplus",               -- allows neovim to access the system clipboard
  cmdheight = 1,                           -- more space in the neovim command line for displaying messages
  completeopt = { "menuone", "noselect", "noinsert" }, -- mostly just for cmp
  conceallevel = 0,                        -- so that `` is visible in markdown files
  fileencoding = "utf-8",                  -- the encoding written to a file
  hlsearch = true,                         -- highlight all matches on previous search pattern
  ignorecase = true,                       -- ignore case in search patterns
  mouse = "a",                             -- allow the mouse to be used in neovim
  pumheight = 10,                          -- pop up menu height
  showmode = false,                        -- we don't need to see things like -- INSERT -- anymore
  showtabline = 1,                         -- always show tabs
  smartcase = true,                        -- smart case
  --smartindent = true,                      -- make indenting smarter again
  splitbelow = true,                       -- force all horizontal splits to go below current window
  splitright = true,                       -- force all vertical splits to go to the right of current window
  swapfile = false,                        -- creates a swapfile
  --termguicolors = true,                    -- set term gui colors (most terminals support this)
  timeoutlen = 300,                        -- time to wait for a mapped sequence to complete (in milliseconds)
  undofile = true,                         -- enable persistent undo
  updatetime = 300,                        -- faster completion (4000ms default)
  writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  expandtab = true,                        -- convert tabs to spaces
  shiftwidth = 4,                          -- the number of spaces inserted for each indentation
  tabstop = 4,                             -- insert 2 spaces for a tab
  cursorline = true,                       -- highlight the current line
  number = false,                           -- set numbered lines
  relativenumber = false,                  -- set relative numbered lines
  numberwidth = 1,                         -- set number column width to 2 {default 4}

  signcolumn = "no",                      -- always show the sign column, otherwise it would shift the text each time
  wrap = false,                             -- display lines as one long line
  linebreak = true,                        -- companion to wrap, don't split words
  scrolloff = 8,                           -- minimal number of screen lines to keep above and below the cursor
  sidescrolloff = 8,                       -- minimal number of screen columns either side of cursor if wrap is `false`
  guifont = "monospace:h17",               -- the font used in graphical neovim applications
  whichwrap = "bs<>[]hl",                  -- which "horizontal" keys are allowed to travel to prev/next line
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd[[highlight ScratchBlock ctermbg=yellow guibg=red guifg=white]]
vim.cmd[[au BufRead,BufNewFile * call matchadd('ScratchBlock', '.*scratch block write.*')]]


vim.cmd[[highlight ScratchBlockRead ctermbg=yellow guibg=yellow guifg=black]]
vim.cmd[[au BufRead,BufNewFile * call matchadd('ScratchBlockRead', '.*scratch block read.*')]]

---- Set sane Neovim defaults
--local set = vim.opt
--
---- Line numbers
--set.number = true              -- Show line numbers
--set.relativenumber = true      -- Relative line numbers
--
---- Tabs and indentation
--set.expandtab = true           -- Use spaces instead of tabs
--set.shiftwidth = 2             -- Number of spaces to use for each step of (auto)indent
--set.tabstop = 2                -- Number of spaces that a <Tab> in the file counts for
--set.softtabstop = 2            -- Insert 2 spaces for a tab press
--set.smartindent = true         -- Auto-indent new lines smartly
--
---- Search
--set.ignorecase = true          -- Ignore case when searching
--set.smartcase = true           -- Case-sensitive if upper case is used in search
--set.incsearch = true           -- Show matches as you type
--
---- Appearance
--set.termguicolors = true       -- Enable 24-bit RGB colors
--set.cursorline = true          -- Highlight the current line
--set.wrap = false               -- Disable line wrapping
--set.scrolloff = 8              -- Keep at least 8 lines visible when scrolling
--set.signcolumn = 'yes'         -- Always show the sign column
--
---- Misc
--set.backup = false             -- Disable backup files
--set.writebackup = false        -- Disable write backups
--set.undofile = true            -- Enable persistent undo
--set.swapfile = false           -- Disable swap files
--set.updatetime = 300           -- Faster completion (300ms timeout)
--set.timeoutlen = 500           -- Time to wait for mapped sequence to complete
--
---- Splits
--set.splitright = true          -- Vertical splits will automatically be to the right
--set.splitbelow = true          -- Horizontal splits will automatically be below
--
--
---- Enable global smart indent for general behavior
--vim.opt.smartindent = true
--
---- C++ specific indentation settings using 'cindent'
--vim.api.nvim_create_autocmd("FileType", {
--  pattern = { "cpp", "c", "h" }, -- Apply to C++ (.cpp), C (.c), and header files (.h)
--  callback = function()
--    local set = vim.opt_local
--    set.shiftwidth = 2      -- Number of spaces used for each indentation step
--    set.tabstop = 2         -- Number of spaces that a <Tab> in the file counts for
--    set.softtabstop = 2     -- Use 2 spaces when pressing <Tab>
--    set.expandtab = true    -- Convert tabs to spaces
--    set.cindent = true      -- Enable C-style indentation
--    set.autoindent = true   -- Maintain indentation from the previous line
--  end,
--})
