-- theme, transparency
vim.cmd.colorscheme("retrobox")
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })

-- Basic settings
vim.opt.number = true                              -- Line numbers
vim.opt.relativenumber = true                      -- Relative line numbers
vim.opt.cursorline = true                          -- Highlight current line
vim.opt.wrap = true                               -- Don't wrap lines
vim.opt.scrolloff = 10                             -- Keep 10 lines above/below cursor 
vim.opt.sidescrolloff = 8                          -- Keep 8 columns left/right of cursor

-- Indentation
vim.opt.tabstop = 2                                -- Tab width
vim.opt.shiftwidth = 2                             -- Indent width
vim.opt.softtabstop = 2                            -- Soft tab stop
vim.opt.expandtab = true                           -- Use spaces instead of tabs
vim.opt.smartindent = true                         -- Smart auto-indenting
vim.opt.autoindent = true                          -- Copy indent from current line

-- Search settings
vim.opt.ignorecase = true                          -- Case insensitive search
vim.opt.smartcase = true                           -- Case sensitive if uppercase in search
vim.opt.hlsearch = false                           -- Don't highlight search results 
vim.opt.incsearch = true                           -- Show matches as you type

-- Visual settings
vim.opt.termguicolors = true                       -- Enable 24-bit colors
vim.opt.signcolumn = "yes"                         -- Always show sign column
--vim.opt.colorcolumn = "100"                        -- Show column at 100 characters
vim.opt.showmatch = true                           -- Highlight matching brackets
vim.opt.matchtime = 2                              -- How long to show matching bracket
vim.opt.cmdheight = 1                              -- Command line height
vim.opt.completeopt = "fuzzy,menuone,noinsert,noselect,popup"  -- Completion options
vim.opt.showmode = false                           -- Don't show mode in command line 
vim.opt.pumheight = 10                             -- Popup menu height 
vim.opt.pumblend = 10                              -- Popup menu transparency 
vim.opt.winblend = 0                               -- Floating window transparency 
vim.opt.conceallevel = 0                           -- Don't hide markup 
vim.opt.concealcursor = ""                         -- Don't hide cursor line markup 
vim.opt.lazyredraw = true                          -- Don't redraw during macros
vim.opt.synmaxcol = 300                            -- Syntax highlighting limit 

-- File handling
vim.opt.backup = false                             -- Don't create backup files
vim.opt.writebackup = false                        -- Don't create backup before writing
vim.opt.swapfile = false                           -- Don't create swap files
vim.opt.undofile = true                            -- Persistent undo
vim.opt.undodir = vim.fn.expand("~/.vim/undodir")  -- Undo directory
vim.opt.updatetime = 300                           -- Faster completion
vim.opt.timeoutlen = 500                           -- Key timeout duration
vim.opt.ttimeoutlen = 0                            -- Key code timeout
vim.opt.autoread = true                            -- Auto reload files changed outside vim
vim.opt.autowrite = false                          -- Don't auto save

-- Behavior settings
vim.opt.hidden = true                              -- Allow hidden buffers
vim.opt.errorbells = false                         -- No error bells
vim.opt.backspace = "indent,eol,start"             -- Better backspace behavior
vim.opt.autochdir = false                          -- Don't auto change directory
vim.opt.iskeyword:append("-")                      -- Treat dash as part of word
vim.opt.path:append("**")                          -- include subdirectories in search
vim.opt.selection = "exclusive"                    -- Selection behavior
vim.opt.mouse = "a"                                -- Enable mouse support
vim.opt.clipboard:append("unnamedplus")            -- Use system clipboard
vim.opt.modifiable = true                          -- Allow buffer modifications
vim.opt.encoding = "UTF-8"                         -- Set encoding

-- Cursor settings
vim.opt.guicursor = "n-v-c:block,i-ci-ve:block,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"

-- Folding settings
vim.opt.foldmethod = "expr"                        -- Use expression for folding
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"    -- Use treesitter for folding
vim.opt.foldlevel = 99                             -- Start with all folds open

-- Split behavior
vim.opt.splitbelow = true                          -- Horizontal splits go below
vim.opt.splitright = true                          -- Vertical splits go right

-- Key mappings
vim.g.mapleader = " "                              -- Set leader key to space
vim.g.maplocalleader = " "                         -- Set local leader key (NEW)

-- Normal mode mappings
vim.keymap.set("n", "<leader>c", ":nohlsearch<CR>", { desc = "Clear search highlights" })

-- Y to EOL
vim.keymap.set("n", "Y", "y$", { desc = "Yank to end of line" })

-- Center screen when jumping
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result (centered)" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search result (centered)" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Half page down (centered)" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Half page up (centered)" })

-- Better paste behavior
vim.keymap.set("x", "<leader>p", '"_dP', { desc = "Paste without yanking" })

-- Delete without yanking
--vim.keymap.set({ "n", "v" }, "<leader>d", '"_d', { desc = "Delete without yanking" })

-- Buffer navigation
vim.keymap.set("n", "<Tab>", ":bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", { desc = "Previous buffer" })
vim.keymap.set("n", "<leader>bd", ":bd! <CR>", { desc = "Delete current buffer"})

-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to bottom window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to top window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

-- Splitting & Resizing
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sh", ":split<CR>", { desc = "Split window horizontally" })
vim.keymap.set("n", "<C-Up>", ":resize +2<CR>", { desc = "Increase window height" })
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>", { desc = "Decrease window height" })
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", { desc = "Increase window width" })

-- Move lines up/down
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down" })
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" })
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Better indenting in visual mode
vim.keymap.set("v", "<", "<gv", { desc = "Indent left and reselect" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent right and reselect" })

-- Search and replace stuff
vim.keymap.set("v", "<leader>ra", "\"hy:%s/<C-r>h//g<left><left>", { desc = "Search and replace highlighted word" })
vim.keymap.set("v", "<leader>rs", ":s/", { desc = "Search and replace within highlighted area" })

-- Quick file navigation
-- vim.keymap.set("n", "<leader>e", ":Explore<CR>", { desc = "Open file explorer" })
vim.keymap.set("n", "<leader>e", ":25Lex<CR>", { desc = "Open file explorer" })
vim.keymap.set("n", "<leader>ff", ":find ", { desc = "Find file" })

-- Netrw config (Vim's file explorer)
vim.g.netrw_banner = 0	    			-- gets rid of the annoying banner for netrw
vim.g.netrw_browse_split = 4
vim.g.netrw_altv = 0					-- change from left splitting to right splitting
vim.g.netrw_liststyle = 3				-- tree style view in netrw
vim.g.netrw_sizestyle = "H"
vim.g.netrw_sort_sequence = [[[\/]$,*]] -- sort directories first
vim.g.netrw_keepdir = 0
vim.g.netrw_sort_sequence = [[[\/]$,*]]
vim.g.netrw_sizestyle = "H"
vim.g.netrw_localcopydircmd = "cp -r"
vim.g.netrw_localmkdir = "mkdir -p"
vim.g.netrw_localrmdir = "rm -r"
vim.g.netrw_compress = "gzip"
vim.g.netrw_cursor = 2
vim.g.netrw_preview = 0
vim.g.netrw_alto = 1
vim.api.nvim_set_hl(0, "netrwDir", { fg = "#83a598" })
vim.api.nvim_set_hl(0, "netrwClassify", { fg = "#b8bb26" })
vim.api.nvim_set_hl(0, "netrwExe", { fg = "#fabd2f" })
vim.api.nvim_set_hl(0, "netrwExe", { fg = "#d3869b" })

-- Better J behavior
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join lines and keep cursor position" })

-- Quick config editing
vim.keymap.set("n", "<leader>rc", ":e $MYVIMRC<CR>", { desc = "Edit config" })
vim.keymap.set("n", "<leader>rl", ":so $MYVIMRC<CR>", { desc = "Reload config" })

-- Session configs
vim.keymap.set('n', '<leader>ss', ':mksession!' .. vim.fn.stdpath('config') .. "/session/mysession.vim<CR>", { desc = 'Save current session'})
vim.keymap.set('n', '<leader>sl', ':source ' .. vim.fn.stdpath('config') .. "/session/mysession.vim<CR>", { desc = 'Save current session'})

-- Formatting
vim.keymap.set('n', '<leader>fo', function()
  vim.lsp.buf.format()
end)



-- ============================================================================
-- USEFUL FUNCTIONS
-- ============================================================================

-- Copy Full File-Path
vim.keymap.set("n", "<leader>pa", function()
	local path = vim.fn.expand("%:p")
	vim.fn.setreg("+", path)
	print("file:", path)
end)

-- Basic autocommands
local augroup = vim.api.nvim_create_augroup("UserConfig", {})

-- Highlight yanked text
vim.api.nvim_create_autocmd("TextYankPost", {
  group = augroup,
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Return to last edit position when opening files
vim.api.nvim_create_autocmd("BufReadPost", {
  group = augroup,
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local lcount = vim.api.nvim_buf_line_count(0)
    local line = mark[1]
    local ft = vim.bo.filetype
    if line > 0 and line <= lcount
      and vim.fn.index({ "commit", "gitrebase", "xxd" }, ft) == -1
      and not vim.o.diff then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
})

-- Set filetype-specific settings
vim.api.nvim_create_autocmd("FileType", {
  group = augroup,
  pattern = { "lua", "python" },
  callback = function()
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  group = augroup,
  pattern = { "javascript", "typescript", "json", "html", "css" },
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
  end,
})

-- Auto-close terminal when process exits
vim.api.nvim_create_autocmd("TermClose", {
  group = augroup,
  callback = function()
    if vim.v.event.status == 0 then
      vim.api.nvim_buf_delete(0, {})
    end
  end,
})

-- Disable line numbers in terminal
vim.api.nvim_create_autocmd("TermOpen", {
  group = augroup,
  callback = function()
    vim.opt_local.number = false
    vim.opt_local.relativenumber = false
    vim.opt_local.signcolumn = "no"
  end,
})

-- Auto-resize splits when window is resized
vim.api.nvim_create_autocmd("VimResized", {
  group = augroup,
  callback = function()
    vim.cmd("tabdo wincmd =")
  end,
})

-- Create directories when saving files
vim.api.nvim_create_autocmd("BufWritePre", {
  group = augroup,
  callback = function()
    local dir = vim.fn.expand('<afile>:p:h')
    if vim.fn.isdirectory(dir) == 0 then
      vim.fn.mkdir(dir, 'p')
    end
  end,
})

-- Command-line completion
vim.opt.wildmenu = true
vim.opt.wildmode = "longest:full,full"
vim.opt.wildignore:append({ "*.o", "*.obj", "*.pyc", "*.class", "*.jar" })

-- Better diff options
vim.opt.diffopt:append("linematch:60")

-- Performance improvements
vim.opt.redrawtime = 10000
vim.opt.maxmempattern = 20000

-- Create undo directory if it doesn't exist
local undodir = vim.fn.expand("~/.vim/undodir")
if vim.fn.isdirectory(undodir) == 0 then
  vim.fn.mkdir(undodir, "p")
end

-- ============================================================================
-- START SCREEN
-- ============================================================================

--local intro_logo = {
--	" ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
--	" ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
--	" ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
--	" ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
--	" ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
--	" ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝"
--} size: 55

--local intro_logo = {
--    "⠀⠀⢀⡄⠀⠀⡄⠀⠀⠀⠀⠀⠀⠁⠀⣾⣿⣿⣷⣿⣿⣿⣿⢣⢎⡺⠋⠀⠇⡷⣙⢃⢺⡱⢎⡞⡼⣧⣳⠈⢺⡱⢎⡶⣩⠶⣹⡭⣛⢬⡛⣼⠶⣹⢹⡀⠀⠀⠀⠀⠀⠀⠀",
--    "⢀⠂⠀⠀⠀⠀⠠⠀⠀⠀⡀⠀⠀⠘⣰⣿⣿⢿⣿⣿⠻⣿⡟⡜⢮⠋⠀⠀⠈⡷⣹⠀⢀⢏⠷⣸⡱⢿⣏⡀⠀⠹⣇⡞⣥⢛⡴⣏⠳⣎⡵⢎⣷⢣⢧⢣⠀⠀⠀⠀⠀⠀⠀",
--    "⠀⠀⠀⠁⠀⠀⢃⠀⠀⠀⡇⠀⠀⠀⢹⣿⣿⣿⣿⣿⣷⣄⡙⠭⡇⠀⠁⠄⠀⢱⣹⠀⠀⠨⣯⠵⣩⢛⣯⡇⠀⠀⠙⢜⠶⣩⠶⣩⢗⡣⢞⣱⢚⡧⡞⣭⠀⠀⠀⠀⠀⠀⠀",
--    "⠀⠀⠀⡃⠀⠀⡤⠀⠀⠀⢇⠀⠀⠀⠈⣿⣿⣿⣷⣿⣿⣿⠜⡕⠀⠀⠀⠀⠀⠂⣿⡀⠀⠀⠀⠻⡥⣋⢿⡅⢠⠠⠂⠈⢛⠦⣏⠵⣪⠝⣮⣱⢋⣷⣙⠖⣆⠀⠀⠀⠀⠀⠀",
--    "⠀⠀⠀⡇⠀⠀⠸⠂⠀⠀⠉⠀⠀⠀⠀⢼⣿⣿⣾⣿⣿⣿⡞⡇⠀⠀⢀⣀⣤⣄⠸⡌⠀⠀⠀⠀⠘⢭⢖⣇⠀⣀⣠⣀⡈⠳⣎⢻⡥⣛⣼⡣⢏⣼⣹⡞⣱⣄⠀⠀⠀⠀⠀",
--    "⠀⠀⠐⠰⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠸⣿⣿⣿⣿⣿⣷⡿⠀⢠⣾⠟⢋⣭⣟⣆⠁⠀⠀⠀⠀⠀⠀⠙⢼⢰⣟⣯⣛⠻⢷⣽⣙⡶⢣⣾⣏⠳⣼⡇⣟⡴⢫⢦⠀⠀⠀⠀",
--    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠉⠿⠿⢿⣿⣻⣿⡇⠀⡿⠁⢠⣿⣽⣤⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣧⣧⠈⣿⠙⣽⢣⣿⣿⡳⣜⠯⣵⢺⡟⠚⢵⢠⡀⠀",
--    "⠀⠀⠀⠀⠀⠀⠀⢀⠠⠀⠀⠀⠀⠃⢀⠀⠀⠀⠀⢹⣿⣿⣷⠀⠘⠅⢸⣿⣿⢿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⢺⣿⣿⣿⡿⠀⠏⠰⣹⢾⡟⢿⣿⣎⡟⡼⣇⢿⠀⠀⠀⠉⠉",
--    "⠀⠀⠀⠀⡀⠄⠀⠀⠀⠀⠀⡀⢀⢀⠐⠀⠀⠀⠀⣼⡿⣸⢻⣧⠀⠀⠂⡣⣦⠾⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠾⠴⠾⠁⠀⠀⠀⡝⣾⢭⢻⣿⡜⣣⣝⡷⣊⡇⠀⠀⠀⠀",
--    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠀⠐⠁⠰⠀⠀⠀⢀⣿⡱⢣⢏⡞⣣⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡟⡧⢎⡳⣿⠼⡱⢎⡷⣩⢶⠀⠀⠀⠀",
--    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠀⠀⠀⠀⠀⠀⠀⠀⢸⣷⢭⡓⡞⡼⣕⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡟⣗⡫⣕⣻⢭⠳⣭⣿⣱⢺⠀⠀⠀⠀",
--    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⣷⣯⣼⣵⢎⢷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣵⣿⣇⡗⣎⢾⣍⠳⣖⣿⡧⢻⠀⠀⠀⠀",
--    "⠀⢢⠀⠀⠀⠀⠀⠀⢠⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣷⣞⣢⠀⠀⠀⠀⠀⠀⠔⠀⠐⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⣿⣿⡗⡼⣊⢶⢪⢽⣞⣿⣓⣻⠀⠀⠀⠀",
--    "⠀⠀⠣⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⣹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣟⣿⣱⠳⣍⢮⡓⢾⣿⡿⣒⠇⠀⠀⠀⠀",
--    "⠀⠀⢠⣆⠀⠀⠀⠀⠀⠀⠀⢀⡀⢀⠀⠔⠁⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⣀⢄⠀⠀⠀⠀⠀⠀⠀⠀⢀⢀⣴⣶⣿⣿⡿⣿⣿⣿⢔⡻⣜⢲⡙⢾⠟⢧⣹⠀⠀⠀⠀⠀",
--    "⠀⠀⠸⣿⡇⠤⠭⠀⠀⠁⠉⠁⠀⠀⠀⢀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣮⠒⢁⠀⠄⠀⢠⠐⠀⠀⢿⣿⣿⢿⡿⠁⣿⣿⣏⠮⣕⢎⢧⡻⡏⠀⢮⠁⠀⠀⠀⠀⠀",
--    "⠀⠀⠀⢹⣿⡀⠐⡀⠀⠀⠀⠀⠀⠀⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⡀⠐⠤⠀⠁⠀⠀⠱⠈⣿⣿⡟⠁⠀⣹⣿⢥⡛⡜⣎⢾⢳⠀⠀⠁⠀⠀⠀⠀⠀⠀",
--    "⠀⠀⠀⠀⣿⣿⠀⠣⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⣈⠔⠀⢠⣿⣿⣿⣦⠀⣿⡟⢦⣹⠕⠁⣸⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀",
--    "⠀⠀⠀⠀⢹⣿⡀⠀⠈⠠⢀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⣠⣆⠥⡀⠀⢸⣿⣿⣿⣿⣿⣤⠛⠊⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
--    "⠀⠀⠀⠀⠀⣿⣷⡀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠏⡖⡡⢯⡢⡌⣿⣿⣿⣿⣿⣿⣷⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
--    "⠀⠀⠀⠀⠀⠘⣿⣿⣶⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⡼⡁⣿⡄⣷⡹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
--    "⠀⠀⠀⠀⠀⠀⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠐⣻⠐⣿⣿⡌⢷⡘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
--    "⠀⠀⠀⠀⠀⠀⠀⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢨⡇⠎⡿⡿⣗⢨⢁⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
--    "⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠿⠿⠿⠿⠿⠿⠻⠟⠿⠟⠿⠟⠿⠿⠻⠿⠟⠿⠿⠻⠿⠟⠿⠿⠇⠘⠤⠇⠏⠜⠆⠣⠿⠻⠟⠿⠻⠟⠿⠻⠟⠿⠇⠀⠀⠀⠀⠀⠀⠀⠀  "
--} size: 62

local intro_logo = {
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⠃⠀⣠⣶⣾⣿⣷⢶⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢷⣦⣷⣶⣾⣿⣿⣿⣿⣿⠉⠉⠛⠓⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠻⣿⣿⣿⣿⣿⣿⣿⣤⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣶⣿⡆⠀⢹⣿⣿⣿⣿⣿⣿⣿⡿⠿⠿⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⢻⡀⣾⣿⣿⣿⣿⠉⠙⠊⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⢿⣿⣿⣿⣆⢀⣴⣾⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣩⡏⠘⣿⣿⣿⣿⣿⢿⣿⣿⣀⣀⣀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⠟⠀⠀⣸⣿⣿⣿⣿⣦⣽⣃⣉⣛⣛⣛⡯⠍⠀⠀⢀⣀⣀⣀⣀⣀⣀⡀⠀⠀⠀⠀",
"⣶⣶⣶⣶⣦⣤⣤⣤⣀⣀⣀⣀⣀⣀⣀⠀⠀⠀⠀⢀⣼⡏⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣂⠀⠀⠀",
"⠀⠉⠙⠻⠿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣷⣄",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢼⣿⣿⣿⣿⡿⣿⢿⣿⣿⡏⠛⠙⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠆",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠁⠀⠀⠀⠀⢸⡏⢿⣿⠀⠀⠀⠀⠉⠙⠛⠛⠿⠿⠿⣿⣿⣿⣿⣿⣿⡿⠛⠯⠃",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠃⠘⠿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠉⠛⠋⠀⠀⠀⠀"
} --size: 53

local HEADER_NAME = "Welcome."
local WELCOME_MSG = "✩₊˚.⋆☾⋆⁺₊✧‧₊˚♪ 𝄞₊˚⊹𓆩 𓂋 𓆪"
local DEFAULT_COLOR = "#98c379"
local INTRO_LOGO_HEIGHT = #intro_logo
local INTRO_LOGO_WIDTH = 53

local autocmd_group = vim.api.nvim_create_augroup(HEADER_NAME, {})
local highlight_ns_id = vim.api.nvim_create_namespace(HEADER_NAME)
local minintro_buff = -1

local function unlock_buf(buf)
	vim.api.nvim_set_option_value("modifiable", true, { buf = buf })
end

local function lock_buf(buf)
	vim.api.nvim_set_option_value("modifiable", false, { buf = buf })
end

local function draw_minintro(buf, logo_width, logo_height)
	local window = vim.fn.bufwinid(buf)
	local screen_width = vim.api.nvim_win_get_width(window)
	local screen_height = vim.api.nvim_win_get_height(window) - vim.opt.cmdheight:get()

	local start_col = math.floor((screen_width - logo_width) / 2)
	local start_row = math.floor((screen_height - logo_height) / 2)
	if (start_col < 0 or start_row < 0) then return end

	local top_space = {}
	for _ = 1, start_row do table.insert(top_space, "") end

	local col_offset_spaces = {}
	for _ = 1, start_col do table.insert(col_offset_spaces, " ") end
	local col_offset = table.concat(col_offset_spaces, '')

	local adjusted_logo = {}
	for _, line in ipairs(intro_logo) do
		table.insert(adjusted_logo, col_offset .. line)
	end

	unlock_buf(buf)
	vim.api.nvim_buf_set_lines(buf, 1, 1, true, top_space)
	vim.api.nvim_buf_set_lines(buf, start_row, start_row, true, adjusted_logo)
	lock_buf(buf)

	vim.api.nvim_buf_set_extmark(buf, highlight_ns_id, start_row, start_col, {
		end_row = start_row + INTRO_LOGO_HEIGHT,
		hl_group = "Default"
	})
end

local function create_and_set_minintro_buf(default_buff)
	local intro_buff = vim.api.nvim_create_buf("nobuflisted", "unlisted")
	vim.api.nvim_buf_set_name(intro_buff, WELCOME_MSG )
	vim.api.nvim_set_option_value("bufhidden", "wipe", { buf = intro_buff })
	vim.api.nvim_set_option_value("buftype", "nofile", { buf = intro_buff })
	vim.api.nvim_set_option_value("filetype", "minintro", { buf = intro_buff })
	vim.api.nvim_set_option_value("swapfile", false, { buf = intro_buff })

	vim.api.nvim_set_current_buf(intro_buff)
	vim.api.nvim_buf_delete(default_buff, { force = true })

	return intro_buff
end

local function set_options()
	vim.opt_local.number = false         -- disable line numbers
	vim.opt_local.relativenumber = false -- disable relative line numbers
	vim.opt_local.list = false           -- disable displaying whitespace
	vim.opt_local.fillchars = { eob = ' ' } -- do not display "~" on each new line
	vim.opt_local.colorcolumn = "0"      -- disable colorcolumn
end

local function redraw()
	unlock_buf(minintro_buff)
	vim.api.nvim_buf_set_lines(minintro_buff, 0, -1, true, {})
	lock_buf(minintro_buff)
	draw_minintro(minintro_buff, INTRO_LOGO_WIDTH, INTRO_LOGO_HEIGHT)
end

local function display_minintro()
--	local is_dir = vim.fn.isdirectory(payload.file) == 1

	local default_buff = vim.api.nvim_get_current_buf()
	local default_buff_name = vim.api.nvim_buf_get_name(default_buff)
	local default_buff_filetype = vim.api.nvim_get_option_value("filetype", { buf = default_buff })
	if not is_dir and default_buff_name ~= "" and default_buff_filetype ~= HEADER_NAME then
		return
	end

	minintro_buff = create_and_set_minintro_buf(default_buff)
	set_options()

	draw_minintro(minintro_buff, INTRO_LOGO_WIDTH, INTRO_LOGO_HEIGHT)

	vim.api.nvim_create_autocmd({ "WinResized", "VimResized" }, {
		group = autocmd_group,
		buffer = minintro_buff,
		callback = redraw
	})
end

local function setup(options)
	options = options or {}
	vim.api.nvim_set_hl(highlight_ns_id, "Default", { fg = options.color or DEFAULT_COLOR })
	vim.api.nvim_set_hl_ns(highlight_ns_id)

	vim.api.nvim_create_autocmd("VimEnter", {
		group = autocmd_group,
		callback = display_minintro,
		once = true
	})
end

vim.api.nvim_create_autocmd('VimEnter', {
    pattern = '*',
    group = autocmd_group,
    callback = function()
        if vim.fn.expand('%') == '' then -- Check if no file is opened
            display_minintro()
            -- Add more commands to create buffers, load plugins, etc.
        end
    end
})

-- ============================================================================
-- FLOATING TERMINAL
-- ============================================================================

-- terminal
local terminal_state = {
  buf = nil,
  win = nil,
  is_open = false
}

local function FloatingTerminal()
  -- If terminal is already open, close it (toggle behavior)
  if terminal_state.is_open and vim.api.nvim_win_is_valid(terminal_state.win) then
    vim.api.nvim_win_close(terminal_state.win, false)
    terminal_state.is_open = false
    return
  end

  -- Create buffer if it doesn't exist or is invalid
  if not terminal_state.buf or not vim.api.nvim_buf_is_valid(terminal_state.buf) then
    terminal_state.buf = vim.api.nvim_create_buf(false, true)
    -- Set buffer options for better terminal experience
    vim.api.nvim_buf_set_option(terminal_state.buf, 'bufhidden', 'hide')
  end

  -- Calculate window dimensions
  local width = math.floor(vim.o.columns * 0.8)
  local height = math.floor(vim.o.lines * 0.8)
  local row = math.floor((vim.o.lines - height) / 2)
  local col = math.floor((vim.o.columns - width) / 2)

  -- Create the floating window
  terminal_state.win = vim.api.nvim_open_win(terminal_state.buf, true, {
    relative = 'editor',
    width = width,
    height = height,
    row = row,
    col = col,
    style = 'minimal',
    border = 'rounded',
  })

  -- Set transparency for the floating window
  vim.api.nvim_win_set_option(terminal_state.win, 'winblend', 0)

  -- Set transparent background for the window
  vim.api.nvim_win_set_option(terminal_state.win, 'winhighlight',
    'Normal:FloatingTermNormal,FloatBorder:FloatingTermBorder')

  -- Define highlight groups for transparency
  vim.api.nvim_set_hl(0, "FloatingTermNormal", { bg = "none" })
  vim.api.nvim_set_hl(0, "FloatingTermBorder", { bg = "none", })

  -- Start terminal if not already running
  local has_terminal = false
  local lines = vim.api.nvim_buf_get_lines(terminal_state.buf, 0, -1, false)
  for _, line in ipairs(lines) do
    if line ~= "" then
      has_terminal = true
      break
    end
  end

  if not has_terminal then
    vim.fn.termopen(vim.o.shell)
  end

  terminal_state.is_open = true
  vim.cmd("startinsert")

  -- Set up auto-close on buffer leave 
  vim.api.nvim_create_autocmd("BufLeave", {
    buffer = terminal_state.buf,
    callback = function()
      if terminal_state.is_open and vim.api.nvim_win_is_valid(terminal_state.win) then
        vim.api.nvim_win_close(terminal_state.win, false)
        terminal_state.is_open = false
      end
    end,
    once = true
  })
end

-- Function to explicitly close the terminal
local function CloseFloatingTerminal()
  if terminal_state.is_open and vim.api.nvim_win_is_valid(terminal_state.win) then
    vim.api.nvim_win_close(terminal_state.win, false)
    terminal_state.is_open = false
  end
end

-- Key mappings
vim.keymap.set("n", "<leader>t", FloatingTerminal, { noremap = true, silent = true, desc = "Toggle floating terminal" })
vim.keymap.set("t", "<Esc>", function()
  if terminal_state.is_open then
    vim.api.nvim_win_close(terminal_state.win, false)
    terminal_state.is_open = false
  end
end, { noremap = true, silent = true, desc = "Close floating terminal from terminal mode" })


-- ============================================================================
-- TABS
-- ============================================================================

-- Tab display settings
vim.opt.showtabline = 1  -- Always show tabline (0=never, 1=when multiple tabs, 2=always)
vim.opt.tabline = ''     -- Use default tabline (empty string uses built-in)

-- Transparent tabline appearance
vim.cmd([[
  hi TabLineFill guibg=NONE ctermfg=242 ctermbg=NONE
]])

-- Alternative navigation (more intuitive)
vim.keymap.set('n', '<leader>tn', ':tabnew<CR>', { desc = 'New tab' })
vim.keymap.set('n', '<leader>tx', ':tabclose<CR>', { desc = 'Close tab' })

-- Tab moving
vim.keymap.set('n', '<leader>tm', ':tabmove<CR>', { desc = 'Move tab' })
vim.keymap.set('n', '<leader>t>', ':tabmove +1<CR>', { desc = 'Move tab right' })
vim.keymap.set('n', '<leader>t<', ':tabmove -1<CR>', { desc = 'Move tab left' })

-- Function to open file in new tab
local function open_file_in_tab()
  vim.ui.input({ prompt = 'File to open in new tab: ', completion = 'file' }, function(input)
    if input and input ~= '' then
      vim.cmd('tabnew ' .. input)
    end
  end)
end

-- Function to duplicate current tab
local function duplicate_tab()
  local current_file = vim.fn.expand('%:p')
  if current_file ~= '' then
    vim.cmd('tabnew ' .. current_file)
  else
    vim.cmd('tabnew')
  end
end

-- Function to close tabs to the right
local function close_tabs_right()
  local current_tab = vim.fn.tabpagenr()
  local last_tab = vim.fn.tabpagenr('$')

  for i = last_tab, current_tab + 1, -1 do
    vim.cmd(i .. 'tabclose')
  end
end

-- Function to close tabs to the left
local function close_tabs_left()
  local current_tab = vim.fn.tabpagenr()

  for i = current_tab - 1, 1, -1 do
    vim.cmd('1tabclose')
  end
end

-- Enhanced keybindings
vim.keymap.set('n', '<leader>tO', open_file_in_tab, { desc = 'Open file in new tab' })
vim.keymap.set('n', '<leader>td', duplicate_tab, { desc = 'Duplicate current tab' })
vim.keymap.set('n', '<leader>tr', close_tabs_right, { desc = 'Close tabs to the right' })
vim.keymap.set('n', '<leader>tL', close_tabs_left, { desc = 'Close tabs to the left' })

-- ============================================================================
-- LSP
-- ============================================================================

-- Lua LSP
vim.lsp.config['lua-language-server'] = {
  cmd = { 'lua-language-server' },
  filetypes = { 'lua' },
  root_markers = { '.luarc.json' },
  settings = {
    diagnostics = {
      globals = {
        'vim',
        'require',
      },
    },
  },
}
vim.lsp.enable('lua-language-server')

-- Typescript/Javascript LSP
vim.lsp.config['typescript-language-server'] = {
    cmd = { 'typescript-language-server', "--stdio" },
    filetypes = { 'javascript', 'typescript' },
    root_markers = { '.git' },
}
vim.lsp.enable('typescript-language-server')

-- Cpp LSP
vim.lsp.config['clangd'] = {
    cmd = { 'clangd' },
    filetypes = { 'cpp', 'c', 'h' },
    root_markers = { 'makefile', '.ccls', 'compile_commands.json', '.git' },
}
vim.lsp.enable('clangd')

-- Godot LSP
local port = os.getenv 'GDScript_Port' or '6005'
vim.lsp.config['gdscript'] = {
    cmd = vim.lsp.rpc.connect('127.0.0.1', tonumber(port)),
    filetypes = { 'gd', 'gdscript', 'gdscript3' },
    root_markers = { 'project.godot', '.git' },
}
vim.lsp.enable('gdscript')

-- Godot server wrap
local paths_to_check = {'/', '/../'}
local is_godot_project = false
local cwd = vim.fn.getcwd()
local godot_project_path = ''

for key, value in pairs(paths_to_check) do
    if vim.uv.fs_stat(cwd .. value .. 'project.godot') then
        is_godot_project = true
        godot_project_path = cwd .. value
        break
    end
end

local is_server_running = vim.uv.fs_stat(godot_project_path .. '/server.pipe')
if is_godot_project and not is_server_running then
    vim.fn.serverstart(godot_project_path .. 'server.pipe')
end


-- Treesitter
vim.treesitter.language.add('gdscript', { path = vim.fn.stdpath('config') .. "/parser/gdscript/gdscript.so" })
vim.treesitter.language.add('cpp', { path = vim.fn.stdpath('config') .. "/parser/cpp/cpp.so" })

vim.api.nvim_create_autocmd('FileType', {
    pattern = { 'gd' },
    callback = function()
        vim.treesitter.start()
    end,
})

-- TODO: Remove : from autocompletion if in godot
-- Autocompletion
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    if client:supports_method('textDocument/completion') then
      -- This makes it so it checks autocompletion on every char typed. slow. but i like it.
      local chars = {}; for i = 32, 126 do table.insert(chars, string.char(i)) end
      client.server_capabilities.completionProvider.triggerCharacters = chars
      vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
    end
  end,
})

--vim.api.nvim_create_autocmd("InsertCharPre", {
--  callback = function()
--    -- Only trigger completion if popup is not already visible
--    if vim.fn.pumvisible() == 0 then
--      vim.schedule(function()
--        -- Trigger completion (e.g., via omni)
--        -- vim.cmd('call feedkeys("\\<C-x>\\<C-o>", "n")')
--        vim.lsp.completion.get()
--      end)
--    end
--  end,
--})


-- Show diagnostic as popup
vim.api.nvim_set_keymap('n', '<leader>g', '<cmd>lua vim.diagnostic.open_float()<CR>',{ silent=true })
--vim.api.nvim_set_keymap('n', '<leader>sg', '<cmd>lua vim.diagnostic.hide()<CR>', {})


-- ============================================================================
-- STATUSLINE
-- ============================================================================

-- Git branch function TODO: Fix this, rewriting would probably be easier
local function git_branch()
  return ""
end
  --local branch = vim.fn.system("git branch --show-current 2>/dev/null | tr -d '\n'")
  --if branch ~= "" then
  --  return "  " .. branch .. " "
  --end
  --return ""
--end

-- File type with icon
local function file_type()
  local ft = vim.bo.filetype
  local icons = {
    lua = "[LUA]",
    python = "[PY]",
    javascript = "[JS]",
    html = "[HTML]",
    css = "[CSS]",
    json = "[JSON]",
    markdown = "[MD]",
    vim = "[VIM]",
    sh = "[SH]",
    gdscript = "[GD]",
  }

  if ft == "" then
    return "  "
  end

  return (icons[ft] or ft)
end

-- Word count for text files
--local function word_count()
--  local ft = vim.bo.filetype
--  if ft == "markdown" or ft == "text" or ft == "tex" then
--    local words = vim.fn.wordcount().words
--    return "  " .. words .. " words "
--  end
--  return ""
--end

-- File size
local function file_size()
  local size = vim.fn.getfsize(vim.fn.expand('%'))
  if size < 0 then return "" end
  if size < 1024 then
    return size .. "B "
  elseif size < 1024 * 1024 then
    return string.format("%.1fK", size / 1024)
  else
    return string.format("%.1fM", size / 1024 / 1024)
  end
end

-- Mode indicators with icons
local function mode_icon()
  local mode = vim.fn.mode()
  local modes = {
    n = "NORMAL",
    i = "INSERT",
    v = "VISUAL",
    V = "V-LINE",
    ["\22"] = "V-BLOCK",  -- Ctrl-V
    c = "COMMAND",
    s = "SELECT",
    S = "S-LINE",
    ["\19"] = "S-BLOCK",  -- Ctrl-S
    R = "REPLACE",
    r = "REPLACE",
    ["!"] = "SHELL",
    t = "TERMINAL"
  }
  return modes[mode] or "  " .. mode:upper()
end

_G.mode_icon = mode_icon
_G.git_branch = git_branch
_G.file_type = file_type
_G.file_size = file_size

vim.cmd([[
  highlight StatusLineBold gui=bold cterm=bold
]])

-- Function to change statusline based on window focus
local function setup_dynamic_statusline()
  vim.api.nvim_create_autocmd({"WinEnter", "BufEnter"}, {
    callback = function()
    vim.opt_local.statusline = table.concat {
      "  ",
      "%#StatusLineBold#",
      "%{v:lua.mode_icon()}",
      "%#StatusLine#",
      " │ %f %h%m%r",
      "%{v:lua.git_branch()}",
      " │ ",
      "%{v:lua.file_type()}",
      " | ",
      "%{v:lua.file_size()}",
      "%=",                     -- Right-align everything after this
      "%l:%c  %P ",             -- Line:Column and Percentage
    }
    end
  })
  vim.api.nvim_set_hl(0, "StatusLineBold", { bold = true })

  vim.api.nvim_create_autocmd({"WinLeave", "BufLeave"}, {
    callback = function()
      vim.opt_local.statusline = "  %f %h%m%r │ %{v:lua.file_type()} | %=  %l:%c   %P "
    end
  })
end

setup_dynamic_statusline()



--------------------------------------------------------------------------------
-- UNITY LSP SETUP
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
-- NEOVIM UNITY GLOBALS
--------------------------------------------------------------------------------

-- these globals are set by Neovim Unity plugin: com.walcht.ide.neovim upon the
-- instantiation of a Neovim server instance. These are set to themselves
-- because they are expected to be set via "nvim --cmd '<var> = <value>'" and
-- we want to keep LuaLS happy.

---@type string? this is only set in case of Unity projects
_G.nvim_unity_curr_unity_project_root_dir = nil

---@type string? an optional user-supplid project root. If this is set, then
---any opened C# files will always use this as their LS root dir (regardless
---of whether it actually is).
_G.nvim_unity_user_supplied_project_root_dir =
  _G.nvim_unity_user_supplied_project_root_dir

---@type boolean if true, textDocument/diagnostic requests completion times for
---initially opened buffers are logged and notified.
_G.nvim_unity_benchmark_roslyn_ls = _G.nvim_unity_benchmark_roslyn_ls or false

---@type "openFiles" | "fullSolution" | "none"
_G.nvim_unity_analyzer_diagnostic_scope = _G.nvim_unity_analyzer_diagnostic_scope
  or "openFiles"

---@type "openFiles" | "fullSolution" | "none"
_G.nvim_unity_compiler_diagnostic_scope = _G.nvim_unity_compiler_diagnostic_scope
  or "openFiles"

--------------------------------------------------------------------------------
-- ROSLYN LS BENCHMARKING
--------------------------------------------------------------------------------

---@type integer solution/project initialization start time in ms
local start_time

local function log_benchmarking_settings()
  local benchmark_settings = {
    ---@diagnostic disable-next-line: undefined-field
    ["os"] = vim.loop.os_uname().sysname,
    ["dotnet_analyzer_diagnostics_scope"] = _G.nvim_unity_analyzer_diagnostic_scope,
    ["dotnet_compiler_diagnostics_scope"] = _G.nvim_unity_compiler_diagnostic_scope,
  }
  local indent = vim.bo.expandtab and (" "):rep(vim.o.shiftwidth) or "\t"
  local stringified = vim.json.encode(benchmark_settings, { indent = indent })
  local msg = "[benchmark] started textDocument/diagnostic with settings: "
    .. stringified
  vim.notify(msg, vim.log.levels.INFO)
  vim.lsp.log.error(msg)
end

--------------------------------------------------------------------------------
-- MISC SHIT
--------------------------------------------------------------------------------

local fs = vim.fs

-- current solution target (can be a solution file .sln(x) or a C# file for
-- single-file projects).
local sln_target = nil

--------------------------------------------------------------------------------
-- INITIALIZATION CALLBACKS
--------------------------------------------------------------------------------

--- This will be called on LS initialization to request Roslyn to open the
--- provided solution
---
---@param client vim.lsp.Client
---@param target string absolute path to .sln[x] solution file or a single C#
---document in case of single-file projects.
---
---@return nil
local function on_init_sln(client, target)
  vim.notify("Initializing: solution" .. target, vim.log.levels.INFO)
  ---@diagnostic disable-next-line: param-type-mismatch
  client:notify("solution/open", {
    solution = vim.uri_from_fname(target),
  })
end

--- This will be called on LS initialization to request Roslyn to open the
--- provided project (usually when no solution (.sln) file was found this is
--- used as a fallback).
---
---@param client vim.lsp.Client LSP client (this neovim instance)
---@param project_files string[] set of absolute paths to project files
---(.csproj) that will be requested to be opened by Roslyn LS.
---
---@return nil
local function on_init_project(client, project_files)
  vim.notify("Initializing: projects", vim.log.levels.INFO)
  ---@diagnostic disable-next-line: param-type-mismatch
  client:notify("project/open", {
    projects = vim.tbl_map(function(file)
      return vim.uri_from_fname(file)
    end, project_files),
  })
end

--- Tries to find the solution/project root directory using the provided buffer
--- id. This is done by trying to look up the directories until finding a one
--- that contains a .sln(x) file. If that fails, this looks instead for the
--- first .csproj file it encounters. Finally, if that also fails, the absolute
--- path to this buffer is sent for single-file C# project LSP functionality.
---
---@param bufnr integer
---@param on_dir fun(root_dir?:string)
---
---@return nil
local function project_root_dir_discovery(bufnr, on_dir)
  -- if there is a user-supplied project root, then simply use it.
  if _G.nvim_unity_user_supplied_project_root_dir then
    vim.notify(
      "[C# LS] using user-supplied Unity project root dir: "
        .. _G.nvim_unity_user_supplied_project_root_dir,
      vim.log.levels.INFO
    )
    on_dir(_G.nvim_unity_user_supplied_project_root_dir)
    return
  end

  -- otherwise, we check if this C# file is part of a Unity project
  local bufname = vim.api.nvim_buf_get_name(bufnr)
  local root_dir = nil
  for dir in vim.fs.parents(bufname) do
    if vim.fn.isdirectory(vim.fs.joinpath(dir, "/Assets")) then
      root_dir = dir
      break
    end
  end

  -- this means this is part of a Unity project
  if root_dir then
    -- if there is already a currently running Unity LS session
    if _G.nvim_unity_curr_unity_project_root_dir then
      -- is the Unity session the same?
      if _G.nvim_unity_curr_unity_project_root_dir == root_dir then
        on_dir(root_dir)
        return
      -- only a single client + Roslyn LS is created/maintained
      -- throughout the whole session (as to why: performance reasons. Running
      -- a LS + client for a Unity project is usually very resource intensive).
      else
        vim.notify(
          string.format(
            "[C# LSP] you have opened a C# file that belong to different Unity "
              .. "project (%s) than the one currently in use (%s). LS support "
              .. "for this buffer is disabled.",
            root_dir,
            _G.nvim_unity_curr_unity_project_root_dir
          ),
          vim.log.levels.WARN
        )
        return
      end
    -- otherwise, this is the first time we instantiate this Unity session
    else
      _G.nvim_unity_curr_unity_project_root_dir = root_dir
      on_dir(root_dir)
      return
    end
  end

  -- at this point we are not dealing with C# file that belongs to Unity project
  -- and nor has the user manually supplied a project root

  -- try find '.sln[xf]' file (which resides in root dir)
  root_dir = vim.fs.root(bufnr, function(fname, _)
    return fname:match("%.sln[x]?$") ~= nil
  end)

  -- in case no '.sln[xf]' file was found then look for the first '.csproj'
  if not root_dir then
    root_dir = vim.fs.root(bufnr, function(fname, _)
      return fname:match("%.csproj$") ~= nil
    end)
  end

  if root_dir then
    -- this means that we have found a root (either from .sln[xf] or .csproj)
    on_dir(root_dir)
  else
    -- this means that we have NOT found a root - use single-file mode
    on_dir(bufname)
    vim.notify(
      "[C# LSP] failed to find root directory - LS is running in "
        .. "single-file mode.",
      vim.log.levels.WARN
    )
  end

  vim.notify(
    "[C# LSP] failed to find root directory - LS is disabled for this buffer.",
    vim.log.levels.WARN
  )
end

--- set Roslyn LS handlers. Each handler corresponds to a request that might be
--- sent by Roslyn LS - you can get the set of Roslyn LSP method names from:
--- https://github.com/dotnet/roslyn/tree/main/src/LanguageServer/Protocol
---
---@type table<string, function>?
local roslyn_handlers = {
  -- once Roslyn LS has finished initializing the project, we request
  -- diagnostics for the current opened buffers
  ["workspace/projectInitializationComplete"] = function(_, _, ctx)
    vim.notify("Roslyn project initialization complete", vim.log.levels.INFO)

    local buffers = vim.lsp.get_buffers_by_client_id(ctx.client_id)
    local client = assert(vim.lsp.get_client_by_id(ctx.client_id))
    local method = vim.lsp.protocol.Methods.textDocument_diagnostic

    if _G.nvim_unity_benchmark_roslyn_ls then
      local msg = string.format(
        "[benchmark] textDocument/diagnostics request completion "
          .. "time for %i buffers",
        #buffers
      )
      -- it's set to error because any lower level and the log simply gets
      -- full of nonsense logs...
      vim.notify(msg, vim.log.levels.INFO)
      vim.lsp.log.error(msg)
    end

    for _, buf in ipairs(buffers) do
      --- @type lsp.Handler Response |lsp-handler| for this method.
      local handler = nil

      if _G.nvim_unity_benchmark_roslyn_ls then
        handler = function(_err, _res, _ctx)
          -- call the default handler
          (client.handlers[method] or vim.lsp.handlers[method])(
            _err,
            _res,
            _ctx
          )
          ---@diagnostic disable-next-line: undefined-field
          local secs, ms = vim.uv.gettimeofday()
          local diff = (secs + ms * 0.001 * 0.001) - start_time
          local msg = string.format(
            "[benchmark] textDocument/diagnostics request for bufnr %i done in: %.3fs",
            _ctx.bufnr,
            diff
          )
          vim.notify(msg, vim.log.levels.INFO)
          -- it's set to error because any lower level and the log simply gets
          -- full of nonsense logs...
          vim.lsp.log.error(msg)
        end -- end handler
      end

      local success = client:request(method, {
        textDocument = vim.lsp.util.make_text_document_params(buf),
      }, handler, buf)

      if not success then
        vim.notify(
          string.format(
            "failed to send request to Roslyn LS for textDocument_diagnostic "
              .. "for buf: %s",
            vim.api.nvim_buf_get_name(buf)
          ),
          vim.log.levels.ERROR
        )
      end
    end -- end for buf
  end,

  -- This is only kept for backwards compatibility and is no longer needed for
  -- latest Roslyn versions: https://github.com/dotnet/roslyn/pull/81233
  --
  -- this means that `dotnet restore` has to be ran on the project/solution
  -- we can do that manually or, better, request the Roslyn LS instance to do it
  -- for us using the "workspace/_roslyn_restore" request which invokes the
  -- `dotnet restore <PATH-TO-SLN>` cmd
  ["workspace/_roslyn_projectNeedsRestore"] = function(_, result, ctx)
    local client = assert(vim.lsp.get_client_by_id(ctx.client_id))

    -- request the Roslyn LS to run dotnet restore (better than doing it
    -- ourselves).
    ---@diagnostic disable-next-line: param-type-mismatch
    client:request("workspace/_roslyn_restore", result, function(err, response)
      if err then
        vim.notify(err.message, vim.log.levels.ERROR)
        vim.lsp.log.error(err.message)
      end
      local no_errors = true
      if response then
        for _, v in ipairs(response) do
          -- an error could be reported in the message string, if found log it
          if string.find(v.message, "error%s*MSB%d%d%d%d") then
            vim.lsp.log.warn(v.message)
            vim.notify(v.message, vim.log.levels.WARN)
            no_errors = false
          end
        end
      end
      if no_errors then
        vim.notify("dotnet restore completed successfully", vim.log.levels.INFO)
      else
        vim.notify(
          "dotnet restore completed with errors - see LSP log",
          vim.log.levels.WARN
        )
      end
    end)

    return vim.NIL
  end,

  ["workspace/_roslyn_projectHasUnresolvedDependencies"] = function()
    if sln_target ~= nil then
      vim.notify(
        string.format(
          "Detected missing dependencies. Run `dotnet restore %s` command.",
          sln_target
        ),
        vim.log.levels.ERROR
      )
      return vim.NIL
    end
    vim.notify(
      "Detected missing dependencies. Run `dotnet restore` command.",
      vim.log.levels.ERROR
    )
  end,

  -- Razor stuff that we do not care about
  ["razor/provideDynamicFileInfo"] = function(_, _, _)
    vim.notify(
      "Razor is not supported.\nPlease use https://github.com/tris203/rzls.nvim",
      vim.log.levels.WARN
    )
  end,
}

-- Roslyn-LS-specific settings
local roslyn_ls_specific_settings = {
  ["csharp|background_analysis"] = {
    -- Option to turn configure background analysis scope for the current
    -- user. Note: setting this to "fullSolution" may result in significant
    -- performance degradation, see: https://github.com/dotnet/vscode-csharp/issues/8145#issuecomment-2784568100
    ---@type "openFiles" | "fullSolution" | "none"
    dotnet_analyzer_diagnostics_scope = _G.nvim_unity_analyzer_diagnostic_scope,

    -- Option to configure compiler diagnostics scope for the current user.
    -- Note: setting this to "fullSolution" may result in significant
    -- performance degradation, see: https://github.com/dotnet/vscode-csharp/issues/8145#issuecomment-2784568100
    ---@type "openFiles" | "fullSolution" | "none"
    dotnet_compiler_diagnostics_scope = _G.nvim_unity_compiler_diagnostic_scope,
  },
  ["csharp|inlay_hints"] = {
    ---@type boolean
    dotnet_enable_inlay_hints_for_parameters = true,
    ---@type boolean
    dotnet_enable_inlay_hints_for_literal_parameters = true,
    ---@type boolean
    dotnet_enable_inlay_hints_for_indexer_parameters = true,
    ---@type boolean
    dotnet_enable_inlay_hints_for_object_creation_parameters = true,
    ---@type boolean
    dotnet_enable_inlay_hints_for_other_parameters = true,
    ---@type boolean
    dotnet_suppress_inlay_hints_for_parameters_that_differ_only_by_suffix = true,
    ---@type boolean
    dotnet_suppress_inlay_hints_for_parameters_that_match_method_intent = true,
    ---@type boolean
    dotnet_suppress_inlay_hints_for_parameters_that_match_argument_name = true,
    ---@type boolean
    csharp_enable_inlay_hints_for_types = true,
    ---@type boolean
    csharp_enable_inlay_hints_for_implicit_variable_types = true,
    ---@type boolean
    csharp_enable_inlay_hints_for_lambda_parameter_types = true,
    ---@type boolean
    csharp_enable_inlay_hints_for_implicit_object_creation = true,
    ---@type boolean
    csharp_enable_inlay_hints_for_collection_expressions = true,
  },
  ["csharp|symbol_search"] = {
    ---@type boolean
    dotnet_search_reference_assemblies = true,
  },
  ["csharp|completion"] = {
    ---@type boolean
    dotnet_show_name_completion_suggestions = true,
    ---@type boolean
    dotnet_provide_regex_completions = true,

    -- Whether to show completion items from namespaces that are not imported.
    -- For example, if this is set to true, and you don't have the namespace
    -- `System.Net.Sockets` imported, then when you type "Sock" you will not
    -- get completion for `Socket` or other items in that namespace.
    ---@type boolean
    dotnet_show_completion_items_from_unimported_namespaces = false,

    ---@type boolean
    dotnet_trigger_completion_in_argument_lists = true,
  },
  ["csharp|code_lens"] = {
    ---@type boolean
    dotnet_enable_references_code_lens = true,
    ---@type boolean
    dotnet_enable_tests_code_lens = true,
  },
  ["csharp|projects"] = {
    -- A folder to log binlogs to when running design-time builds.
    ---@type string?
    dotnet_binary_log_path = nil,
    -- Whether or not automatic nuget restore is enabled.
    ---@type boolean
    dotnet_enable_automatic_restore = true,
    -- Whether to use the new 'dotnet run app.cs' (file-based programs)
    -- experience.
    ---@type boolean
    dotnet_enable_file_based_programs = true,
    -- Whether to use the new 'dotnet run app.cs' (file-based programs)
    -- experience in files where the editor is unable to determine with
    -- certainty whether the file is a file-based program.
    ---@type boolean
    dotnet_enable_file_based_programs_when_ambiguous = true,
  },
  ["csharp|navigation"] = {
    ---@type boolean
    dotnet_navigate_to_decompiled_sources = true,
    ---@type boolean
    dotnet_navigate_to_source_link_and_embedded_sources = true,
  },
  ["csharp|highlighting"] = {
    ---@type boolean
    dotnet_highlight_related_json_components = true,
    ---@type boolean
    dotnet_highlight_related_regex_components = true,
  },
}

local lsp_log_lvl_to_roslyn_log_lvl = {
  [vim.log.levels.OFF] = "None",
  [vim.log.levels.TRACE] = "Trace",
  [vim.log.levels.DEBUG] = "Debug",
  [vim.log.levels.INFO] = "Information",
  [vim.log.levels.WARN] = "Warning",
  [vim.log.levels.ERROR] = "Error",
}

---@type lsp.ClientCapabilities
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.diagnostic.dynamicRegistration = true

---@type vim.lsp.Config
local roslyn_ls_config = {
  name = "roslyn_ls",
  offset_encoding = "utf-8",
  cmd = {
    -- on Windows, you can simply directly call the executable:
    --  "<roslyn_ls_path>/Microsoft.CodeAnalysis.LanguageServer.exe",
    --  <roslyn-ls-path> is a placeholder for the path to the Roslyn LS dir
    "dotnet",
    "/usr/share/dotnet/roslyn/Microsoft.CodeAnalysis.LanguageServer.dll",

    -- Critical|Debug|Error|Information|None|Trace|Warning
    "--logLevel=" .. lsp_log_lvl_to_roslyn_log_lvl[vim.lsp.log.get_level()],

    -- here we supply same log path as the one used by current LSP client
    -- (hence why we use - somewhat - the same log level)
    "--extensionLogDirectory=" .. vim.fs.dirname(vim.lsp.log.get_filename()),

    "--stdio",
  },
  filetypes = { "cs" },
  handlers = roslyn_handlers,
  root_dir = project_root_dir_discovery,
  on_init = {
    function(client)
      local root_dir = client.config.root_dir

      if _G.nvim_unity_benchmark_roslyn_ls then
        -- vim.lsp.log.set_level(vim.log.levels.INFO)
        ---@diagnostic disable-next-line: undefined-field
        local seconds, microsecond = vim.uv.gettimeofday()
        start_time = seconds + microsecond * 0.001 * 0.001
        log_benchmarking_settings()
      end

      -- try load first solution we find
      for entry, type in fs.dir(root_dir) do
        if
          type == "file"
          and (vim.endswith(entry, ".sln") or vim.endswith(entry, ".slnx"))
        then
          on_init_sln(client, fs.joinpath(root_dir, entry))
          sln_target = entry
          return
        end
      end

      -- if no solution is found then load project
      local project_found = false
      for entry, type in vim.fs.dir(root_dir) do
        if type == "file" and vim.endswith(entry, ".csproj") then
          on_init_project(client, { vim.fs.joinpath(root_dir, entry) })
          project_found = true
        end
      end

      if not project_found then
        vim.notify(
          "[C# LSP] no solution/.csproj files were found",
          vim.log.levels.ERROR
        )
      end
    end,
  },
  capabilities = capabilities,
  settings = roslyn_ls_specific_settings,
  -- Roslyn LS is quite resource intensive... We want to be 100% sure that it
  -- is closed and not orphaned (e.g., if nvim crashes).
  detached = false,
}

-- then add Roslyn LS to core Neovim LSP and enable it
vim.lsp.config("roslyn_ls", roslyn_ls_config)
vim.lsp.enable("roslyn_ls")
