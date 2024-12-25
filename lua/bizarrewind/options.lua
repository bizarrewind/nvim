vim.g.have_nerd_font = true
vim.g.netrw_list_hide = ".class$"
-- Make line numbers default
vim.opt.number = true
-- You can also add relative line numbers, to help with jumping.
--  Experiment for yourself to see if you like it!
vim.opt.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = "a"

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

--For WINDOWS ONLY
vim.opt.shell = "pwsh.exe"
vim.opt.shellxquote = ""

vim.opt.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command"
vim.opt.shellquote = ""
vim.opt.shellpipe = "| Out-File -Encoding UTF8 %s"
vim.opt.shellredir = "| Out-File -Encoding UTF8 %s"
-- Sync clipboard between OS and Neovim.
--[[
vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)
]]
--
vim.opt.tabstop = 2 -- Number of spaces a <Tab> counts for
vim.opt.shiftwidth = 2 -- Number of spaces for each indentation level
vim.opt.expandtab = true -- Use spaces instead of tabs
-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = "yes"

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = false
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 15

--Show copied Text

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

local job_id = 0
vim.api.nvim_create_autocmd("TermOpen", {
	group = vim.api.nvim_create_augroup("custom-term-open", { clear = true }),
	callback = function()
		vim.opt.number = false
		vim.opt.relativenumber = false
	end,
})

-- Make Netrw more user-friendly
vim.g.netrw_banner = 1 -- Disable the banner
vim.g.netrw_altv = 1 -- Open splits to the right
vim.g.netrw_preview = 1 -- Enable preview mode

vim.o.wildignore = vim.o.wildignore .. ",*.class"
