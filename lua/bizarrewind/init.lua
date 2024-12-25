--
print("Hello, you are using Neovim!")
-- Ensure lazy.nvim is installed
-- Load other configurations like keymaps, options, etc.
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	local lazy_repo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazy_repo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end

-- Add lazy.nvim to runtime path
vim.opt.rtp:prepend(lazypath)
-- Now you can load plugins with Lazy.nvim
require("lazy").setup({
	-- Add more plugin configs as needed
	require("bizarrewind/plugins/gitsigns"),

	require("bizarrewind/plugins/which-key"),

	require("bizarrewind/plugins/telescope"),

	require("bizarrewind/plugins/lspconfig"),

	require("bizarrewind/plugins/conform"),

	--	require("bizarrewind/plugins/autocmp"),

	require("bizarrewind/plugins/blink-cmp"),

	require("bizarrewind/plugins/tokyonight"),

	require("bizarrewind/plugins/todo-comments"),

	require("bizarrewind/plugins/mini"),

	require("bizarrewind/plugins/treesitter"),

	require("bizarrewind.plugins.debug"),

	require("bizarrewind.plugins.indent_line"),

	--require("bizarrewind.plugins.lint"),

	require("bizarrewind.plugins.autopairs"),

	require("bizarrewind.plugins.harpoon"),
	--More plugins
}, {
	ui = {
		icons = vim.g.have_nerd_font and {} or {
			cmd = "⌘",
			config = "🛠",
			event = "📅",
			ft = "📂",
			init = "⚙",
			keys = "🗝",
			plugin = "🔌",
			runtime = "💻",
			require = "🌙",
			source = "📄",
			start = "🚀",
			task = "📌",
			lazy = "💤 ",
		},
	},
})
require("bizarrewind.options") -- General options (e.g., tab settings)
require("bizarrewind.keymaps") -- Key mappings (if applicable)
require("bizarrewind.transparent_bg")
require("bizarrewind.autoexec")
require("bizarrewind.floaterminal")
