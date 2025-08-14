-- =====================
-- Numeración de líneas
-- =====================
vim.opt.number = true                  -- Número de línea absoluto
vim.opt.relativenumber = true          -- Número relativo para moverse rápido
vim.opt.numberwidth = 1                -- Ancho mínimo de la columna de números

-- =====================
-- Tabulación e indentación
-- =====================
vim.opt.tabstop = 2                    -- Cada tab equivale a 2 espacios
vim.opt.shiftwidth = 2                 -- Espacios al indentar
vim.opt.expandtab = true               -- Convierte tabs en espacios
vim.opt.smartindent = true             -- Indentación inteligente

-- =====================
-- Texto y formato
-- =====================
vim.opt.wrap = false                   -- No dividir líneas largas
vim.opt.hidden = true                  -- Permite cambiar de buffer sin guardar
vim.opt.encoding = "utf-8"             -- Codificación interna
vim.opt.fileencoding = "utf-8"         -- Codificación de archivos

-- =====================
-- Colores y apariencia
-- =====================
vim.opt.termguicolors = true           -- Colores de 24 bits
vim.opt.background = "dark"            -- Fondo oscuro
vim.opt.cursorline = true              -- Resalta la línea actual
vim.opt.signcolumn = "yes"             -- Mantiene la columna de signos fija

-- =====================
-- Mouse y portapapeles
-- =====================
vim.opt.mouse = "a"                    -- Habilitar mouse en todos los modos
vim.opt.clipboard = "unnamedplus"      -- Portapapeles del sistema

-- =====================
-- Búsqueda
-- =====================
vim.opt.ignorecase = true              -- Ignorar mayúsculas al buscar
vim.opt.smartcase = true               -- Respeta mayúsculas si las escribes en la búsqueda
vim.opt.hlsearch = true                -- Resalta resultados de búsqueda
vim.opt.incsearch = true               -- Muestra coincidencias mientras escribes

-- =====================
-- Scroll y margen
-- =====================
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
