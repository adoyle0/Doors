-- Binds related to media

globalkeys = Gears.table.join(
  globalkeys,

  -- Media
  Awful.key({}, 'XF86AudioLowerVolume', function()
    os.execute 'pamixer -d 3'
  end, {
    description = 'lower volume',
    group = 'media',
  }),

  Awful.key({}, 'XF86AudioMicMute', function()
    os.execute 'pactl set-source-mute @DEFAULT_SOURCE@ toggle'
  end, {
    description = 'mute mic',
    group = 'media',
  }),

  Awful.key({}, 'XF86AudioMute', function()
    os.execute 'pamixer -t'
  end, {
    description = 'mute audio',
    group = 'media',
  }),

  Awful.key({}, 'XF86AudioNext', function()
    os.execute 'playerctl next'
  end, {
    description = 'next',
    group = 'media',
  }),

  Awful.key({}, 'XF86AudioPlay', function()
    os.execute 'playerctl play-pause'
  end, {
    description = 'play/pause',
    group = 'media',
  }),

  Awful.key({}, 'XF86AudioPrev', function()
    os.execute 'playerctl previous'
  end, {
    description = 'previous',
    group = 'media',
  }),

  Awful.key({}, 'XF86AudioRaiseVolume', function()
    os.execute 'pamixer -i 3'
  end, {
    description = 'raise volume',
    group = 'media',
  }),

  Awful.key({}, 'XF86AudioStop', function()
    os.execute 'playerctl stop'
  end, {
    description = 'stop',
    group = 'media',
  })
)
