vim.g.mapleader = " "
local keymap = vim.keymap

keymap.set("n", "<leader>pv", vim.cmd.Ex) -- abre netrw
keymap.set("n", "<leader>w", ":w<CR>")     -- guardar con <leader>w
keymap.set("n", "<leader>q", ":q<CR>")     -- salir con <leader>q
