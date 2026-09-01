-- ~/.config/nvim/lua/nconf/init.lua

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("nconf.lazy_init")
require("nconf.set")
require("nconf.remap")

