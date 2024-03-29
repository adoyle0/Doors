client.connect_signal('manage', function(c)
  -- Set the windows at the slave,
  -- i.e. put it at the end of others instead of setting it master.
  -- if not awesome.startup then awful.client.setslave(c) end

  if awesome.startup and not c.size_hints.user_position and not c.size_hints.program_position then
    -- Prevent clients from being unreachable after screen count changes.
    Awful.placement.no_offscreen(c)
  end
end)

-- Add a titlebar if titlebars_enabled is set to true in the rules.
client.connect_signal('request::titlebars', function(c)
  -- buttons for the titlebar
  local buttons = Gears.table.join(
    Awful.button({}, 1, function()
      c:emit_signal('request::activate', 'titlebar', { raise = true })
      Awful.mouse.client.move(c)
    end),
    Awful.button({}, 3, function()
      c:emit_signal('request::activate', 'titlebar', { raise = true })
      Awful.mouse.client.resize(c)
    end)
  )

  Awful.titlebar(c):setup {
    { -- Left
      Awful.titlebar.widget.iconwidget(c),
      buttons = buttons,
      layout = Wibox.layout.fixed.horizontal,
    },
    { -- Middle
      { -- Title
        align = 'center',
        widget = Awful.titlebar.widget.titlewidget(c),
      },
      buttons = buttons,
      layout = Wibox.layout.flex.horizontal,
    },
    { -- Right
      Awful.titlebar.widget.floatingbutton(c),
      Awful.titlebar.widget.maximizedbutton(c),
      Awful.titlebar.widget.stickybutton(c),
      Awful.titlebar.widget.ontopbutton(c),
      Awful.titlebar.widget.closebutton(c),
      layout = Wibox.layout.fixed.horizontal(),
    },
    layout = Wibox.layout.align.horizontal,
  }
end)

client.connect_signal('focus', function(c)
  c.border_color = Beautiful.border_focus
end)

client.connect_signal('unfocus', function(c)
  c.border_color = Beautiful.border_normal
end)

awesome.connect_signal('exit', function(reason_restart)
  if not reason_restart then
    return
  end

  local file = io.open('/tmp/awesomewm-last-selected-tags', 'w+')

  for s in screen do
    file:write(s.selected_tag.index, '\n')
  end

  file:close()
end)

awesome.connect_signal('startup', function()
  local file = io.open('/tmp/awesomewm-last-selected-tags', 'r')
  if not file then
    return
  end

  local selected_tags = {}

  for line in file:lines() do
    table.insert(selected_tags, tonumber(line))
  end

  for s in screen do
    local i = selected_tags[s.index]
    local t = s.tags[i]
    t:view_only()
  end

  file:close()
end)
