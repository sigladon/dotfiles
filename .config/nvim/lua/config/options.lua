local options = {
	number = true,
	relativenumber = true,

  mouse = "a",
  showmode = false,
  breakindent = true,
  undofile = true,

  ignorecase = true,
  smartcase = true,

  signcolumn = "yes",
  updatetime = 250,
  timeoutlen = 3000,
  splitright = true,
  splitbelow = true,
  cursorline = true,
  scrolloff = 10,
  confirm = true,
	expandtab = true, -- Tabs to spaces
	shiftwidth = 2, -- Amount of characters for indentation
	tabstop = 2, -- How many spaces replace a tab
	softtabstop = 2,
	smarttab = true,
  smartindent = true,
	autoindent = true,
	cindent = true,

  background = "dark",
}

vim.g.have_nerd_font = true
for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.diagnostic.config({
	signs = false,
})

vim.schedule(function()
  vim.o.clipboard = "unnamedplus"
end)
