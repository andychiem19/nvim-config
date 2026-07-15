local opt = vim.opt

opt.nu = true
opt.relativenumber = true

opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true

opt.wrap = false
opt.sidescrolloff = 8
opt.sidescroll = 1

opt.clipboard = "unnamedplus"
opt.termguicolors = true

require("config.lazy")

vim.cmd[[colorscheme tokyonight]]
