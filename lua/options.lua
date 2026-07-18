local opt = vim.opt

opt.autowrite = true
opt.background = "dark"
opt.clipboard = "unnamedplus"
opt.completeopt = "menu,menuone,noselect"
opt.conceallevel = 3
opt.confirm = true
opt.cursorline = true
opt.expandtab = true
opt.formatoptions = "jcroqlnt"
opt.grepformat = "%f:%l:%c:%m"
opt.grepprg = "rg --vimgrep"
opt.ignorecase = true
opt.inccommand = "nosplit"
opt.incsearch = true
opt.laststatus = 3
opt.list = true
opt.mouse = "a"
opt.number = true
opt.pumblend = 10
opt.pumheight = 10
opt.relativenumber = true
opt.scrolloff = 5
opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize" }
opt.shiftround = true
opt.shiftwidth = 4
opt.shortmess:append { W = true, I = true, c = true }
opt.showmode = false
opt.sidescrolloff = 8
opt.signcolumn = "yes"
opt.smartcase = true
opt.smartindent = true
opt.spelllang = { "en" }
opt.splitbelow = true
opt.splitright = true
opt.tabstop = 4
opt.termguicolors = true
opt.timeoutlen = 150
opt.undofile = true
opt.undolevels = 10000
opt.updatetime = 200
opt.wildmode = "longest:full,full"
opt.wrap = false
opt.linebreak = true

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown", "md" },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.linebreak = true
  end,
})

vim.g.markdown_recommended_style = 0
vim.lsp.inlay_hint.enable(true)
vim.o.termguicolors = true
vim.cmd'colorscheme catppuccin-mocha'

-- Native lightweight statusline with devicons
vim.o.statusline = "%!v:lua.Statusline()"
_G.Statusline = function()
    local devicons = require("nvim-web-devicons")
    local icon, _ = devicons.get_icon(vim.fn.expand("%:t"), vim.bo.filetype, { default = true })
    local mode = vim.api.nvim_get_mode().mode
    local mode_map = {
        n = "N", i = "I", v = "V", V = "V-L",
        ["\22"] = "V-B", c = "C", t = "T", s = "S"
    }
    return string.format(" %s | %s %s %s%%= %s | %s:%s %s%% ",
        mode_map[mode] or mode:upper(),
        icon or "",
        vim.fn.expand("%:t"),
        "%m%r%h%w",
        vim.bo.filetype,
        "%l",
        "%c",
        "%p%%")
end
