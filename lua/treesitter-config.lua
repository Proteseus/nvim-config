local configs = require("nvim-treesitter.configs")
configs.setup {
  ensure_installed = {"python", "typescript", "javascript", "prisma", "lua", "dockerfile", "yaml", "toml", "markdown", "markdown_inline", "json", "bash", "regex"},
  sync_install = false,
  ignore_install = { "" },
  highlight = {
    enable = true,
    disable = { "" },
  },
  indent = { enable = true, disable = { "yaml" } },
}
