require("markview").setup({
    modes = { "n", "i", "no", "c" },
    hybrid_modes = { "i" },
    -- Filetypes where the plugin is enabled
    filetypes = { "markdown", "quarto", "rmd", "Avante" },

    -- This is nice to have
    callbacks = {
        on_enable = function (_, win)
            vim.wo[win].conceallevel = 2;
            vim.wo[win].concealcursor = "nc";
        end
    }
})
