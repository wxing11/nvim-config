-- lazy.nvim bootstrap
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

local plugins = {
    require("plugins.telescope"),
    require("plugins.catppuccin"),
    require("plugins.treesitter"),
    require("plugins.lspzero"),
    require("plugins.neoformat"),
    require("plugins.nvim-tree"),
    require("plugins.trouble")
}

require("remappings")
require("settings")
require("clipboard")

require("lazy").setup(plugins)

