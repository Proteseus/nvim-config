local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local keymap = vim.api.nvim_set_keymap

-- Leader
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<c-down>", ":resize +2<cr>", opts)
keymap("n", "<c-right>", ":vertical resize -2<cr>", opts)
keymap("n", "<c-left>", ":vertical resize +2<cr>", opts)

-- Buffers
keymap("n", "<tab>", ":bnext<cr>", opts)
keymap("n", "<s-tab>", ":bprevious<cr>", opts)
keymap("n", "<leader>h", ":nohlsearch<cr>", opts)

-- Move text
keymap("n", "<a-j>", "<esc>:m .+1<cr>==gi", opts)
keymap("n", "<a-k>", "<esc>:m .-2<cr>==gi", opts)

-- Insert mode escape
keymap("i", "jk", "<esc>", opts)
keymap("i", "kj", "<esc>", opts)

-- Visual indent stay
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Visual move text
keymap("v", "<a-j>", ":m .+1<cr>==", opts)
keymap("v", "<a-k>", ":m .-2<cr>==", opts)

-- Visual Block move text
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- Simple native auto-pairs
local auto_pairs = { ["("] = ")", ["["] = "]", ["{"] = "}", ['"'] = '"', ["'"] = "'" }
for open, close in pairs(auto_pairs) do
    vim.keymap.set("i", open, open .. close .. "<Left>", { silent = true })
end
