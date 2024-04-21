-- Set line numbers
vim.wo.number = true
vim.wo.relativenumber = true

-- Enable syntax highlighting
vim.cmd('syntax enable')

-- Configure indentation
vim.bo.expandtab = true
vim.bo.tabstop = 4
vim.bo.shiftwidth = 4

-- Set the leader key
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Key mapping example
-- vim.api.nvim.set_keymap('n', '<Leader>ff, '<Cmd>Telescode find_files<CR>, { noremap = true, silent = true})

local lazypath = vim.fn.stdpath("data") .. "lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	
		"folke/which-key.nvim",
		"folke/neodev.nvim",
		"tpope/vim-surround",
		"easymotion/vim-easymotion"
})


