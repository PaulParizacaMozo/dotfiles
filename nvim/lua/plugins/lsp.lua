
local on_attach = function(_, bufnr)
    vim.keymap.set('n', '<C-i>', function()
        vim.lsp.buf.hover()
    end, { buffer = bufnr })
end

-- Clangd
require'lspconfig'.clangd.setup ({
    on_attach = on_attach,
})

--Csharp
require'lspconfig'.csharp_ls.setup {}

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
