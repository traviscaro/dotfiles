-- Basic settings
vim.opt.number = true              -- Show line numbers
vim.opt.relativenumber = true      -- Show relative line numbers
vim.opt.expandtab = true           -- Use spaces instead of tabs
vim.opt.shiftwidth = 4             -- Size of an indent
vim.opt.tabstop = 4                -- Number of spaces tabs count for
vim.opt.mouse = 'a'                -- Enable mouse support
vim.opt.clipboard = 'unnamedplus'  -- Use system clipboard

-- Bootstrap Packer
local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  vim.cmd [[packadd packer.nvim]]
end

-- Packer configuration
require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Example plugin (add/remove plugins as needed)
  use 'tpope/vim-sensible'

  -- Add more plugins here
end)

-- Key mappings, autocommands, and more can go below
