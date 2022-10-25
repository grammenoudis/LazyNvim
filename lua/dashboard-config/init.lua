local home = os.getenv('HOME')
local db = require('dashboard')
-- macos
db.preview_command = 'cat | lolcat -F 0.3'
--
db.preview_file_path = home .. '/.config/nvim/static/neovim.cat'
db.preview_file_height = 11
db.preview_file_width = 70
db.custom_center = {
  {
    icon = '📝  ',
    desc = 'Find  File                              ',
    action = 'Telescope find_files find_command=rg,--hidden,--files',
    shortcut = 'SPC f f'
  }, {
    icon = '🎨  ',
    desc = 'Change Theme                            ',
    action = 'Telescope colorscheme',
    shortcut = 'SPC f c'
  }, {
    icon = '🅰️   ',
    desc = 'Find  word                              ',
    action = 'Telescope live_grep',
    shortcut = 'SPC f w'
  }, {
    icon = '📂  ',
    desc = 'File Browser                            ',
    action = 'Telescope file_browser',
    shortcut = 'SPC f b'
  }, {
    icon = '💻  ',
    desc = 'Terminal                                ',
    action = 'ToggleTerm',
    shortcut = 'SPC f t'
  }, {
    icon = '🧰  ',
    desc = 'Open ~/.config/nvim/                    ',
    action = 'Telescope dotfiles path=' .. home .. '/.dotfiles',
    shortcut = 'SPC f p'
  }
}
