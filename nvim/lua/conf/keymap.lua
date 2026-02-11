local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local keymap = vim.api.nvim_set_keymap

keymap("", "<space>", "<nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- auto centre screen
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)

-- window resize arrow keys
keymap("n", "<C-Up>", ":resize +1<CR>", opts)
keymap("n", "<C-Down>", ":resize -1<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -1<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +1<CR>", opts)

-- navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

keymap("n", "Q", "<nop>", opts)
keymap("n", "<Esc>", ":noh<CR>", opts)

-- keep selection after indent
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- system clipboard
keymap("v", "<leader>y", '"+y', opts)
keymap("v", "<leader>y", '"+y', opts)

-- move selected text
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- visual block
keymap("x", "J", ":m '>+1<CR>gv==gv", opts)
keymap("x", "K", ":m '<-2<CR>gv==gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv=gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv=gv", opts)
keymap("x", "p", '"_dP', opts)

--terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
