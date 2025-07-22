local cmd = vim.cmd
local opt = vim.opt
local api = vim.api

-- opt.rtp:append(vim.fn.stdpath "config" .. "/lua/r/after")
-- print(vim.fn.stdpath "config" .. "/lua/r/after")

opt.shiftwidth = 4

opt.relativenumber = true
opt.number = true

opt.autoindent = true

-- search settings
opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true
opt.termguicolors = false
opt.background = "dark"
opt.signcolumn = "yes"

opt.clipboard:append("unnamedplus")

opt.showmode = false

api.nvim_create_autocmd('TextYankPost', {
	desc = "Highlight when yanking (copying) text",
	group = api.nvim_create_augroup("highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})

