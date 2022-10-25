vim.g.mapleader = ' '

vim.cmd [[
nnoremap <silent> <Leader>ff :Telescope find_files<CR>
nnoremap <silent> <Leader>fc :Telescope colorscheme<CR>
nnoremap <silent> <Leader>fh :Telescope oldfiles<CR>
nnoremap <silent> <Leader>fw :Telescope live_grep<CR>
nnoremap <silent> <Leader>fb :Telescope file_browser<CR>
nnoremap <silent> <Leader>fp :e ~/.config/nvim<CR>
nnoremap <silent> <Leader>ft :ToggleTerm<CR>
]]
