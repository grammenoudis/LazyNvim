vim.g.mapleader = ' '
local keymap = vim.keymap.set
keymap("n", "<leader>r", "<cmd>RunProject<CR>")
keymap("n", "<leader>q", "<cmd>q!<CR>")
keymap("n", "<leader>w", "<cmd>w<CR>")
keymap("n", "<leader>gg", "<cmd>LazyGit<CR>")
keymap("n", "<leader>fp", "<cmd>e ~/.config/nvim<CR>")
keymap("n", "<leader>ft", "<cmd>ToggleTerm<CR>")
keymap("n", "<leader>fb", "<cmd>Telescope file_browser<CR>")
keymap("n", "<leader>fw", "<cmd>Telescope live_grep<CR>")
keymap("n", "<leader>fh", "<cmd>Telescope oldfiles<CR>")
keymap("n", "<leader>fc", "<cmd>Telescope colorscheme<CR>")
keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
vim.cmd [[inoremap jk <Esc>]]
vim.cmd [[inoremap kj <Esc>]]
