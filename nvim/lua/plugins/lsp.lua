local on_attach = function(_, bufnr)
    vim.keymap.set('n','<C-i>', '<cmd>lua vim.lsp.buf.hover()<CR>', {buffer = bufnr})
end

-- Define la función on_omnisharp_attach
local function on_omnisharp_attach(client, bufnr)
    -- Mapea atajo de teclado para mostrar información flotante
    local opts = { noremap = true, silent = true }
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-i><C-o>', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
end

-- Clangd
require'lspconfig'.clangd.setup ({
    on_attach = on_attach,
})

--Csharp
require'lspconfig'.omnisharp.setup ({
    on_attach = on_omnisharp_attach,
})

-- Lua
require("lspconfig").lua_ls.setup({
    on_attach = on_attach,
    settings = {
        Lua = {
            telemetry = {enable = false},
            workspace = {checkThirdParty = false},
        },
    },
})
