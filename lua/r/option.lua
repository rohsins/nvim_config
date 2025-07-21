local cmd = vim.cmd
local opt = vim.opt

-- opt.rtp:append(vim.fn.stdpath "config" .. "/lua/r/after")
-- print(vim.fn.stdpath "config" .. "/lua/r/after")

opt.relativenumber = true
opt.number = true

opt.autoindent = true

-- search settings
opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true
-- opt.termguicolors = false
opt.background = "dark"
opt.signcolumn = "yes"

opt.clipboard:append("unnamedplus")

