local has_ts, ts = pcall(require, "nvim-treesitter")
if has_ts then
  ts.setup {
    install_dir = vim.fn.stdpath("data") .. "/site"
  }
  ts.install {"python", "typescript", "javascript", "prisma", "lua", "dockerfile", "yaml", "toml", "markdown", "markdown_inline", "json", "bash", "regex"}
end

-- Enable treesitter highlighting for specified filetypes
vim.api.nvim_create_autocmd("FileType", {
  pattern = {"python", "typescript", "javascript", "prisma", "lua", "dockerfile", "yaml", "toml", "markdown", "markdown_inline", "json", "bash", "regex"},
  callback = function()
    pcall(vim.treesitter.start)
  end,
})

-- Enable indentation (except for yaml)
vim.api.nvim_create_autocmd("FileType", {
  pattern = {"python", "typescript", "javascript", "prisma", "lua", "dockerfile", "toml", "markdown", "json", "bash", "regex"},
  callback = function()
    if has_ts then
      vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end
  end,
})
