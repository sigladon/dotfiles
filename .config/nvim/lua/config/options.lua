local options = {
	number = true,
	relativenumber = true,
	smarttab = true,
	cindent = true,
	autoindent = false,
	tabstop = 2,
	softtabstop = 2,
	shiftwidth = 2,
	expandtab = true,
	termguicolors = true,
	
	hlsearch = false
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.diagnostic.config({
	signs = false,
})
