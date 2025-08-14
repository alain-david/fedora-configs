vim.g.mapleader = " " -- Espacio como <Leader>
local keymap = vim.keymap

-- =====================
-- Guardar / Salir
-- =====================
keymap.set("n", "<C-s>", ":w<CR>")              -- Guardar
keymap.set("n", "<C-q>", ":wq!<CR>")            -- Guardar y salir

-- =====================
-- Navegación de ventanas
-- =====================
keymap.set("n", "<C-h>", "<C-w>h")              -- Mover a la ventana izquierda
keymap.set("n", "<C-l>", "<C-w>l")              -- Mover a la ventana derecha
keymap.set("n", "<C-j>", "<C-w>j")              -- Mover a la ventana abajo
keymap.set("n", "<C-k>", "<C-w>k")              -- Mover a la ventana arriba
keymap.set("n", "<leader>sv", "<C-w>v")         -- Dividir ventana verticalmente
keymap.set("n", "<leader>sh", "<C-w>s")         -- Dividir ventana horizontalmente
keymap.set("n", "<leader>se", "<C-w>=")         -- Igualar tamaño de ventanas
keymap.set("n", "<leader>sc", "<cmd>close<CR>") -- Cerrar ventana actual

-- =====================
-- Navegación de buffers
-- =====================
keymap.set("n", "<S-l>", ":bnext<CR>")          -- Siguiente buffer
keymap.set("n", "<S-h>", ":bprevious<CR>")      -- Buffer anterior
keymap.set("n", "<leader>bd", ":bdelete<CR>")   -- Cerrar buffer

-- =====================
-- Mover líneas y bloques
-- =====================
keymap.set("v", "J", ":m '>+1<CR>gv=gv")        -- Mover selección hacia abajo
keymap.set("v", "K", ":m '<-2<CR>gv=gv")        -- Mover selección hacia arriba
-- " Mover text
-- vnoremap J :m '>+1<CR>gv=gv
-- vnoremap K :m '<-2<CR>gv=gv
-- nnoremap <M-j> :m .+1<CR>==
-- nnoremap <M-k> :m .-2<CR>==

-- =====================
-- Búsqueda
-- =====================
keymap.set("n", "<leader>nh", ":nohl<CR>")      -- Quitar highlight de búsqueda
keymap.set("n", "n", "nzzzv")                   -- Centrar resultados al buscar
keymap.set("n", "N", "Nzzzv")                   -- Centrar resultados al buscar (reverse)

-- =====================
-- Pegar sin perder el portapapeles
-- =====================
keymap.set("x", "<leader>p", [["_dP]])

-- =====================
-- Copiar al portapapeles del sistema
-- =====================
keymap.set("n", "<leader>y", [["+y]])
keymap.set("v", "<leader>y", [["+y]])
keymap.set("n", "<leader>Y", [["+Y]])

-- =====================
-- Eliminar sin copiar al portapapeles
-- =====================
keymap.set("n", "<leader>d", [["_d]])
keymap.set("v", "<leader>d", [["_d]])

-- Abrir / cerrar explorador
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- Terminal integrada
keymap.set("n", "<leader>t", ":ToggleTerm<CR>")

-- Telescope estilo VS Code
keymap.set("n", "<C-p>", "<cmd>Telescope find_files<CR>")
keymap.set("n", "<leader>sp", "<cmd>Telescope commands<CR>")
keymap.set("n", "<leader>sb", "<cmd>Telescope buffers<CR>")
keymap.set("n", "<leader>st", "<cmd>Telescope live_grep<CR>")

-- Remapear escape en modo insetar
keymap.set("i", "jk", "<Esc>")
keymap.set("i", "kj", "<Esc>")
keymap.set("i", "jj", "<Esc>")
keymap.set("i", "kk", "<Esc>")

-- Remapear escape en modo visual
keymap.set("v", "jk", "<Esc>")
keymap.set("v", "kj", "<Esc>")
keymap.set("v", "jj", "<Esc>")
keymap.set("v", "kk", "<Esc>")

-- Comentar
keymap.set("n", "<leader>/", ":Commentary<CR>")
keymap.set("v", "<leader>/", ":Commentary<CR>")

-- " run current file
-- " nnoremap <Leader>x :!node %<cr>
