-- [[ Setting options ]]
-- See `:help vim.opt`
-- For more options, you can see `:help option-list`

vim.opt.number = true
vim.opt.relativenumber = true
-- vim.opt.statuscolumn = '%s %l %r ' -- absolute and relative combined (disabled to allow default hybrid numbering)
vim.opt.signcolumn = 'yes' -- Keep signcolumn on by default
vim.opt.mouse = 'a' -- Always enable the mouse
vim.opt.clipboard = 'unnamedplus' -- Sync clipboard between OS and Neovim.
vim.opt.breakindent = true -- Enable break indent
vim.opt.undofile = true -- Save undo history
vim.opt.ignorecase = true -- Case-insensitive searching
vim.opt.smartcase = true -- UNLESS \C or one or more capital letters in the search term
vim.opt.backspace = 'indent,eol,start' -- allow backspace on indent, end of line or insert mode start position
vim.opt.updatetime = 250 -- Decrease update time faster completion (default 4000ms)
vim.opt.timeoutlen = 250 -- Displays which-key popup sooner -> decrease mapped sequence wait time
vim.opt.splitright = true -- Configure how new splits should be opened
vim.opt.splitbelow = true -- Configure how new splits should be opened
vim.opt.list = true -- Sets how neovim will display certain whitespace characters in the editor.
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.opt.inccommand = 'split' -- Preview substitutions live, as you type!
vim.opt.cursorline = true -- Show which line your cursor is on
vim.opt.termguicolors = true
vim.opt.spell = true -- Set spelling on
vim.opt.wildmode = 'longest:full' -- Tab completion behavior set to tcsh mode
vim.opt.wrap = false
vim.opt.scrolloff = 10 -- Minimal number of screen lines to keep above and below the cursor.
vim.opt.sidescrolloff = 10 -- Minimal number of screen lines to keep right and left the cursor.
vim.opt.tabstop = 4 -- A TAB character looks like 4 spaces
vim.opt.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.opt.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
vim.opt.shiftwidth = 4 -- Number of spaces inserted when indenting
vim.opt.showmode = false -- Don't show the mode, since it's already in the status line
vim.opt.hlsearch = true -- Set highlight on search
vim.opt.incsearch = true -- Highlight search while typing

-- Legacy vim commands for special features
vim.cmd [[ set iskeyword+=- ]] -- add dash to make word reference word-with-dashes
vim.cmd [[let &t_Cs = "\e[4:3m"]] -- Undercurl
vim.cmd [[let &t_Ce = "\e[4:0m"]] -- Undercurl
