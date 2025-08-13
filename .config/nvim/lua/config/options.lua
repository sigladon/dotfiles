local options = {
	number = true,
	relativenumber = true,

	smarttab = true,
	cindent = true,
	autoindent = false,
	tabstop = 4,
	termguicolors = true,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.diagnostic.config({
	signs = false,
})
