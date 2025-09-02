-- local cmd = vim.cmd
local opt = vim.opt
local api = vim.api

-- opt.rtp:append(vim.fn.stdpath "config" .. "/lua/r/after")
-- print(vim.fn.stdpath "config" .. "/lua/r/after")

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = false
opt.updatetime = 50

opt.relativenumber = true
opt.number = true

opt.autoindent = true

-- search settings
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
opt.incsearch = true

opt.cursorline = true
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.scrolloff = 8

opt.clipboard:append("unnamedplus")

opt.showmode = false
opt.wrap = false

opt.swapfile = false
opt.backup = false

api.nvim_create_autocmd('TextYankPost', {
	desc = "Highlight when yanking (copying) text",
	group = api.nvim_create_augroup("highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})

