require("mason").setup({
    ui = {
        border = "rounded",
        icons = {
            package_installed = "◍",
            package_pending = "◍",
            package_uninstalled = "◍",
        },
    },
    log_level = vim.log.levels.INFO,
    max_concurrent_installers = 4,
})

require("mason-lspconfig").setup({
    ensure_installed = {
        "pyright",
        "ts_ls",
        "biome",
        "prismals",
        "lua_ls",
        "dockerls",
        "jsonls",
        "yamlls",
        "taplo",
    },
    automatic_installation = true,
})

-- Shared capabilities for nvim-cmp integration
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Default capabilities for all LSPs
vim.lsp.config("*", {
    capabilities = capabilities,
})

-- Lua LSP specific config (recognize vim global)
vim.lsp.config("lua_ls", {
    capabilities = capabilities,
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" },
            },
            workspace = {
                library = {
                    [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                    [vim.fn.stdpath("config") .. "/lua"] = true,
                },
            },
        },
    },
})

local servers = {
    "pyright",
    "ts_ls",
    "biome",
    "prismals",
    "lua_ls",
    "dockerls",
    "jsonls",
    "yamlls",
    "taplo",
}

for _, server in ipairs(servers) do
    vim.lsp.enable(server)
end
