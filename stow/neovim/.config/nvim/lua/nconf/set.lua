-- (./lua/nconf/set.lua)

-- ============================================================
-- Tabs & Indentation
-- ============================================================

vim.opt.tabstop = 2        -- A literal tab character displays as 2 columns wide
vim.opt.softtabstop = 2    -- Tab/Backspace in insert mode feel like moving 2 spaces
vim.opt.shiftwidth = 2     -- Indent operations (>>, <<, auto-indent) shift by 2 spaces
vim.opt.expandtab = true   -- Pressing Tab inserts spaces instead of a real tab character
vim.opt.autoindent = true  -- New lines copy the indentation of the previous line
vim.opt.smartindent = true -- Smarter C-like indenting (e.g. indent after '{')
vim.opt.smarttab = true    -- Tab at start of line indents by 'shiftwidth' instead of 'tabstop'

-- ============================================================
-- Whitespace visibility
-- ============================================================

vim.opt.list = true -- Show invisible characters (as defined in 'listchars' below)
-- eol:.      end-of-line shown as '.'
-- tab:>-     tabs shown as '>-'
-- trail:~    trailing whitespace shown as '~'
-- extends:>  '>' when a long line continues off-screen to the right
-- precedes:< '<' when a long line continues off-screen to the left
vim.opt.listchars = "eol:.,tab:>-,trail:~,extends:>,precedes:<"

-- ============================================================
-- UI
-- ============================================================

vim.opt.number = true         -- Show line numbers
vim.opt.relativenumber = true -- Line numbers relative to cursor (current line stays absolute)
vim.opt.cursorline = true     -- Highlight the line the cursor is on
vim.opt.signcolumn = "yes:1"  -- Always reserve a 1-char sign column (LSP/git signs) so text doesn't shift
vim.opt.scrolloff = 8         -- Keep at least 8 lines visible above/below the cursor
vim.opt.showcmd = true        -- Show partially-typed commands in the bottom right

-- ============================================================
-- Files & persistence
-- ============================================================

vim.opt.swapfile = false -- No .swp swap files
vim.opt.backup = false   -- No backup files
vim.opt.undodir = os.getenv("HOME") .. "/.config/nvim/undodir" -- Where persistent undo history is stored
vim.opt.undofile = true  -- Keep undo history across sessions (undo after closing/reopening a file)
vim.opt.clipboard = "unnamed" -- Yank/delete/paste use the system clipboard ('*' register)
                              -- On Linux, prefer "unnamedplus" for the real system clipboard ('+')

-- ============================================================
-- Searching
-- ============================================================

vim.opt.hlsearch = true   -- Highlight all matches of the last search
vim.opt.incsearch = true  -- Highlight matches live while typing the search
vim.opt.ignorecase = true -- Case-insensitive searching...
vim.opt.smartcase = true  -- ...unless the query contains an uppercase letter

-- ============================================================
-- Misc
-- ============================================================

vim.opt.termguicolors = true -- Enable 24-bit RGB colors (needed by most modern colorschemes)
vim.opt.showmode = false     -- Hide '-- INSERT --' etc. (statusline plugins show the mode already)

-- No automatic comment insertion:
-- remove 'r' (continue comment on <Enter>) and 'o' (continue comment on o/O)
-- Done as a FileType autocmd because ftplugins reset 'formatoptions' per filetype
vim.cmd([[autocmd FileType * set formatoptions-=ro]])

