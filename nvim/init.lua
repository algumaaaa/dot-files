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

-- Replaces all instances of highlighted words
vim.keymap.set("v", "<leader>r", "\"hy:%s/<C-r>h//g<left><left>")

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
