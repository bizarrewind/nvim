vim.g.mapleader = " "
vim.g.maplocalleader = " "

local harpoon = require("harpoon")
--[[My keympas ]]
--
--
--Create buffer with leader b
vim.keymap.set("n", "<leader>b", "<cmd>enew<CR>", { desc = "buffer new" })
--Scroll with TAB
--vim.api.nvim_set_keymap("n", "<leader><left>", ":tabprevious<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", ";", ":")
vim.keymap.set("i", "jk", "<Esc>")
--vim.keymap.set("i", "gh", " sdfasdf asdfasdffjhor(int i = 0; i < n; i++){}")

--

-- Copy to clipboard (ys) in normal mode
vim.keymap.set("v", "ys", '"+y', { noremap = true, silent = false })

-- Paste from clipboard (yp) in normal mode
vim.keymap.set("n", "yp", '"+p', { noremap = true, silent = false })
--
vim.keymap.set("n", "fj", function()
	print("You are Stupid")
	print("You are very very Stupid")
end)

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

--[[Move Between Splits]]
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>a", function()
	harpoon:list():add()
end)
vim.keymap.set("n", "<C-e>", function()
	harpoon.ui:toggle_quick_menu(harpoon:list())
end)
vim.keymap.set("n", "<C-1>", function()
	harpoon:list():select(1)
end)
vim.keymap.set("n", "<C-2>", function()
	harpoon:list():select(2)
end)
vim.keymap.set("n", "<C-3>", function()
	harpoon:list():select(3)
end)
vim.keymap.set("n", "<C-4>", function()
	harpoon:list():select(4)
end)
-- Toggle previous & next buffers stored within Harpoon li
vim.keymap.set("n", "<C-S-P>", function()
	harpoon:list():prev()
end)
vim.keymap.set("n", "<C-S-N>", function()
	harpoon:list():next()
end)
