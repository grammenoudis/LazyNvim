vim.g.mapleader = ' '
local keymap = vim.keymap.set
--
-- vim.cmd [[
-- nnoremap <silent> <Leader>ff :Telescope find_files<CR>
-- nnoremap <silent> <Leader>fc :Telescope colorscheme<CR>
-- nnoremap <silent> <Leader>fh :Telescope oldfiles<CR>
-- nnoremap <silent> <Leader>fb :Telescope file_browser<CR>
-- nnoremap <silent> <Leader>ft :ToggleTerm<CR
-- nnoremap <silent> <Leader>fp :e ~/.config/nvim<CR>
-- nnoremap <silent> <leader>gg :LazyGit<CR>
-- nnoremap <silent> <leader>q :q!<CR>
-- nnoremap <silent> <leader>r :RunProject<CR>- nnoremap <silent> <Leader>fw :Telescope live_grep<CR>
-- ]]

keymap("n", "<leader>r", "<cmd>RunProject<CR>")
keymap("n", "<leader>q", "<cmd>q!<CR>")
keymap("n", "<leader>gg", "<cmd>LazyGit<CR>")
keymap("n", "<leader>fp", "<cmd>e ~/.config/nvim<CR>")
keymap("n", "<leader>ft", "<cmd>ToggleTerm<CR>")
keymap("n", "<leader>fb", "<cmd>Telescope file_browser<CR>")
keymap("n", "<leader>fw", "<cmd>Telescope live_grep<CR>")
keymap("n", "<leader>fh", "<cmd>Telescope oldfiles<CR>")
keymap("n", "<leader>fc", "<cmd>Telescope colorscheme<CR>")
keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
