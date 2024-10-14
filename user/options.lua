-- Set sane Neovim defaults
local set = vim.opt

-- Line numbers
set.number = true              -- Show line numbers
set.relativenumber = true      -- Relative line numbers

-- Tabs and indentation
set.expandtab = true           -- Use spaces instead of tabs
set.shiftwidth = 2             -- Number of spaces to use for each step of (auto)indent
set.tabstop = 2                -- Number of spaces that a <Tab> in the file counts for
set.softtabstop = 2            -- Insert 2 spaces for a tab press
set.smartindent = true         -- Auto-indent new lines smartly

-- Search
set.ignorecase = true          -- Ignore case when searching
set.smartcase = true           -- Case-sensitive if upper case is used in search
set.incsearch = true           -- Show matches as you type

-- Appearance
set.termguicolors = true       -- Enable 24-bit RGB colors
set.cursorline = true          -- Highlight the current line
set.wrap = false               -- Disable line wrapping
set.scrolloff = 8              -- Keep at least 8 lines visible when scrolling
set.signcolumn = 'yes'         -- Always show the sign column

-- Misc
set.backup = false             -- Disable backup files
set.writebackup = false        -- Disable write backups
set.undofile = true            -- Enable persistent undo
set.swapfile = false           -- Disable swap files
set.updatetime = 300           -- Faster completion (300ms timeout)
set.timeoutlen = 500           -- Time to wait for mapped sequence to complete

-- Splits
set.splitright = true          -- Vertical splits will automatically be to the right
set.splitbelow = true          -- Horizontal splits will automatically be below


-- Enable global smart indent for general behavior
vim.opt.smartindent = true

-- C++ specific indentation settings using 'cindent'
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "cpp", "c", "h" }, -- Apply to C++ (.cpp), C (.c), and header files (.h)
  callback = function()
    local set = vim.opt_local
    set.shiftwidth = 2      -- Number of spaces used for each indentation step
    set.tabstop = 2         -- Number of spaces that a <Tab> in the file counts for
    set.softtabstop = 2     -- Use 2 spaces when pressing <Tab>
    set.expandtab = true    -- Convert tabs to spaces
    set.cindent = true      -- Enable C-style indentation
    set.autoindent = true   -- Maintain indentation from the previous line
  end,
})
