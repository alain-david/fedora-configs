local lspconfig = require("lspconfig")

-- Go
lspconfig.gopls.setup {}

-- C#
lspconfig.omnisharp.setup {
    cmd = { "omnisharp" }, -- Asegúrate de tenerlo instalado
    enable_roslyn_analyzers = true,
    organize_imports_on_format = true,
}

-- Diagnóstico en línea
vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    update_in_insert = false,
})
