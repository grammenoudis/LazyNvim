require('plugins')
require('format')
require('colorize')
-- require('indent')
require('keymaps')
require('settings')
require('dashboard-config')
require('explorer')
require('completion-cmp')
require('notifications')
require('lspsaga-config')
require('coderunner-config')
require('dressing-config')
vim.cmd([[colorscheme tokyonight]])
vim.notify = require('notify')
