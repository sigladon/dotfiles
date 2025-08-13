-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
	spec = {
		{ "catppuccin/nvim", name = "catppuccin", priority = 1000},
		{
			"mikavilpas/yazi.nvim",
			event = "VeryLazy",
			dependencies = {
				{ "nvim-lua/plenary.nvim", lazy = true },
			},
			keys = {
				-- 👇 in this section, choose your own keymappings!
				{
					"<leader>-",
					mode = { "n", "v" },
					"<cmd>Yazi<cr>",
					desc = "Open yazi at the current file",
				},
				{
					-- Open in the current working directory
					"<leader>cw",
					"<cmd>Yazi cwd<cr>",
					desc = "Open the file manager in nvim's working directory",
				},
				{
					"<c-up>",
					"<cmd>Yazi toggle<cr>",
					desc = "Resume the last yazi session",
				},
			},
			---@type YaziConfig | {}
			opts = {
				-- if you want to open yazi instead of netrw, see below for more info
				open_for_directories = true,
				keymaps = {
					show_help = "<f1>",
				},
			},
			-- 👇 if you use `open_for_directories=true`, this is recommended
			init = function()
				-- mark netrw as loaded so it's not loaded at all.
				--
				-- More details: https://github.com/mikavilpas/yazi.nvim/issues/802
				vim.g.loaded_netrwPlugin = 1
			end,
		}
	},
	-- Configure any other settings here. See the documentation for more details.
	-- colorscheme that will be used when installing plugins.
	-- install = { colorscheme = { "habamax" } },
	-- automatically check for plugin updates
})
