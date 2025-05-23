-- Binds related to the mouse

clientbuttons = Gears.table.join(
  Awful.button({}, 1, function(c)
    c:emit_signal('request::activate', 'mouse_click', { raise = true })
  end),

  Awful.button({ Modkey }, 1, function(c)
    c:emit_signal('request::activate', 'mouse_click', { raise = true })
    Awful.mouse.client.move(c)
  end),

  Awful.button({ Modkey }, 3, function(c)
    c:emit_signal('request::activate', 'mouse_click', { raise = true })
    Awful.mouse.client.resize(c)
  end)
)
