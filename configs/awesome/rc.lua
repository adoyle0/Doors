require 'core'

-- Set up key remaps
os.execute 'setxkbmap -option "caps:escape,altwin:menu_win,altwin:meta_win"'

-- Key repeat rate
os.execute 'xset r rate 200 100'

-- Some defaults
Browser = 'firefox-developer-edition'
Browser2 = 'chromium'
Editor = 'nvim'
Email = 'thunderbird'
Modkey = 'Mod4'
Music = 'spotify-launcher'
Terminal = 'alacritty'
Beautiful.init '.config/awesome/theme.lua'

-- Define layouts
Awful.layout.layouts = {
  Awful.layout.suit.tile.right,
  Awful.layout.suit.tile.bottom,
  Awful.layout.suit.tile.left,
  Awful.layout.suit.tile.top,
}

-- Set the terminal for applications that require it
Menubar.utils.terminal = Terminal

-- Split up the rest for readability
require 'binds' -- keyboard/mouse
require 'rules' -- client specific rules
require 'signals' -- client signals
require 'wibar' -- bar/screen/wallpaper stuff

-- Collect garbage to prevent memory leaks from widgets
Gears.timer.start_new(10, function()
  collectgarbage('step', 20000)
  return true
end)
