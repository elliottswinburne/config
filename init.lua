vim.g.mapleader = " "

-- Options
vim.opt.number = true
vim.opt.cursorcolumn = false
vim.opt.signcolumn = "yes"
vim.opt.wrap = false

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
vim.opt.ignorecase = true

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.termguicolors = true
vim.opt.showtabline = 2

vim.opt.undofile = true

vim.pack.add({
	"https://github.com/projekt0n/github-nvim-theme",
	"https://github.com/stevearc/oil.nvim",
	"https://github.com/nvim-lua/plenary.nvim",
	"https://github.com/neovim/nvim-lspconfig",
})

vim.lsp.enable({ "lua_ls", "clangd", "pyright" })

require("oil").setup({
	lsp_file_methods = {
		enabled = true,
		timeout_ms = 1000,
		autosave_changes = true,
	},
	columns = { "icon" },
	float = {
		max_width = 0.3,
		max_height = 0.6,
		border = "rounded",
	},
})

require("github-theme").setup({
	options = {
		transparent = true,
	},
})

vim.cmd.colorscheme("github_dark")

-- Keymaps
local map = vim.keymap.set

-- Clipboard (system)
map({ "n", "v" }, "<leader>y", '"+y', { desc = "Yank to system clipboard" })
map({ "n", "v" }, "<leader>p", '"+p', { desc = "Paste from system clipboard" })

-- Better paste (doesn't yank replaced text)
map("x", "<leader>p", '"_dP', { desc = "Paste without yanking" })

-- File operations
map("n", "<leader>e", "<cmd>Oil<cr>", { desc = "Open file explorer" })
map("n", "<leader>w", "<cmd>update<cr>", { desc = "Save file" })
map("n", "<leader>q", "<cmd>quit<cr>", { desc = "Quit" })

-- Tabs
map({ "n", "t" }, "<leader>t", "<cmd>tabnew<cr>", { desc = "New tab" })
map({ "n", "t" }, "<leader>x", "<cmd>tabclose<cr>", { desc = "Close tab" })

-- Terminal
map({ "n", "t" }, "<leader>'", "<cmd>vsplit | term<cr>", { desc = "Terminal in vsplit" })

-- Split navigation
map("n", "<C-h>", "<C-w>h", { desc = "Move to left split" })
map("n", "<C-j>", "<C-w>j", { desc = "Move to split below" })
map("n", "<C-k>", "<C-w>k", { desc = "Move to split above" })
map("n", "<C-l>", "<C-w>l", { desc = "Move to right split" })

-- Terminal mode split navigation
map("t", "<C-h>", "<C-\\><C-n><C-w>h", { desc = "Move to left split" })
map("t", "<C-j>", "<C-\\><C-n><C-w>j", { desc = "Move to split below" })
map("t", "<C-k>", "<C-\\><C-n><C-w>k", { desc = "Move to split above" })
map("t", "<C-l>", "<C-\\><C-n><C-w>l", { desc = "Move to right split" })

-- Terminal mode exit
map("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Move lines in visual mode
map("v", "J", ":m '>+1<cr>gv=gv", { desc = "Move line down" })
map("v", "K", ":m '<-2<cr>gv=gv", { desc = "Move line up" })

-- Center screen on scroll
map("n", "<C-d>", "<C-d>zz", { desc = "Scroll down and center" })
map("n", "<C-u>", "<C-u>zz", { desc = "Scroll up and center" })
