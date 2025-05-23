-- Binds that launch programs

globalkeys = Gears.table.join(
  globalkeys,

  Awful.key({ Modkey }, 'a', function()
    Awful.spawn 'arandr'
  end, {
    description = 'open arandr',
    group = 'launcher',
  }),

  Awful.key({ Modkey }, 'c', function()
    Awful.spawn 'caprine'
  end, {
    description = 'open caprine',
    group = 'launcher',
  }),

  Awful.key({ Modkey, 'Shift' }, 'c', function()
    Awful.spawn 'telegram-desktop'
  end, {
    description = 'open telegram-desktop',
    group = 'launcher',
  }),

  Awful.key({ Modkey }, 'd', function()
    Awful.spawn 'discord'
  end, {
    description = 'open discord',
    group = 'launcher',
  }),

  Awful.key({ Modkey, 'Shift' }, 'd', function()
    Awful.spawn 'element-desktop'
  end, {
    description = 'open element-desktop',
    group = 'launcher',
  }),

  Awful.key({ Modkey }, 'e', function()
    Awful.spawn(Email)
  end, {
    description = 'open editor',
    group = 'launcher',
  }),

  Awful.key({ Modkey, 'Shift' }, 'e', function()
    Awful.spawn 'thunderbird'
  end, {
    description = 'open thunderbird',
    group = 'launcher',
  }),

  Awful.key({ Modkey }, 'g', function()
    Awful.spawn 'steam-native'
  end, {
    description = 'open steam',
    group = 'launcher',
  }),

  Awful.key({ Modkey, 'Shift' }, 'g', function()
    Awful.spawn 'lutris'
  end, {
    description = 'open lutris',
    group = 'launcher',
  }),

  Awful.key({ Modkey }, 'i', function()
    Awful.spawn 'gimp'
  end, {
    description = 'open gimp',
    group = 'launcher',
  }),

  Awful.key({ Modkey }, 'm', function()
    Awful.spawn(Music)
  end, {
    description = 'open spotify',
    group = 'launcher',
  }),

  Awful.key({ Modkey, 'Shift' }, 'm', function()
    Awful.spawn 'lmms'
  end, {
    description = 'open lmms',
    group = 'launcher',
  }),

  Awful.key({ Modkey }, 'r', function()
    Awful.screen.focused().mypromptbox:run()
  end, {
    description = 'run prompt',
    group = 'launcher',
  }),

  Awful.key({ Modkey }, 'v', function()
    Awful.spawn 'virt-manager'
  end, {
    description = 'open virt-manager',
    group = 'launcher',
  }),

  Awful.key({ Modkey }, 'w', function()
    Awful.spawn(Browser)
  end, {
    description = 'open browser',
    group = 'launcher',
  }),

  Awful.key({ Modkey, 'Shift' }, 'w', function()
    Awful.spawn(Browser2)
  end, {
    description = 'open browser2',
    group = 'launcher',
  }),

  Awful.key({ Modkey }, 'Return', function()
    Awful.spawn(Terminal)
  end, {
    description = 'open a terminal',
    group = 'launcher',
  })
)
