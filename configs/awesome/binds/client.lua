-- Binds that affect the current window

-- Increment variable used by move and resize
inc = 50

clientkeys = Gears.table.join(
    clientkeys,

    Awful.key(
        { Modkey, }, "f",
        function(c)
            c.fullscreen = not c.fullscreen
            c:raise()
        end,
        {
            description = "toggle fullscreen",
            group = "client"
        }
    ),

    Awful.key(
        { Modkey, "Mod1" }, "h",
        function(c)
            c:relative_move(-inc, 0, 0, 0)
        end,
        {
            description = "move floating left",
            group = "client"
        }
    ),

    Awful.key(
        { Modkey, "Mod1", "Shift" }, "h",
        function(c)
            c:relative_move(-inc, 0, inc, 0)
        end,
        {
            description = "resize floating horizontal +",
            group = "client"
        }
    ),

    Awful.key(
        { Modkey, }, "j",
        function()
            Awful.client.focus.byidx(1)
        end,
        {
            description = "focus next by index",
            group = "client"
        }
    ),

    Awful.key(
        { Modkey, "Mod1" }, "j",
        function(c)
            c:relative_move(0, inc, 0, 0)
        end,
        {
            description = "move floating down",
            group = "client"
        }
    ),

    Awful.key(
        { Modkey, "Shift" }, "j",
        function()
            Awful.client.swap.byidx(1)
        end,
        {
            description = "swap next by index",
            group = "client"
        }
    ),

    Awful.key(
        { Modkey, "Mod1", "Shift" }, "j",
        function(c)
            c:relative_move(0, inc, 0, -inc)
        end,
        {
            description = "resize floating vertical -",
            group = "client"
        }
    ),

    Awful.key(
        { Modkey, }, "k",
        function()
            Awful.client.focus.byidx(-1)
        end,
        {
            description = "focus previous by index",
            group = "client"
        }
    ),

    Awful.key(
        { Modkey, "Mod1" }, "k",
        function(c)
            c:relative_move(0, -inc, 0, 0)
        end,
        {
            description = "move floating up",
            group = "client"
        }
    ),

    Awful.key(
        { Modkey, "Shift" }, "k",
        function()
            Awful.client.swap.byidx(-1)
        end,
        {
            description = "swap previous by index",
            group = "client"
        }
    ),

    Awful.key(
        { Modkey, "Mod1", "Shift" }, "k",
        function(c)
            c:relative_move(0, -inc, 0, inc)
        end,
        {
            description = "resize floating vertical +",
            group = "client"
        }
    ),

    Awful.key(
        { Modkey, "Mod1" }, "l",
        function(c)
            c:relative_move(inc, 0, 0, 0)
        end,
        {
            description = "move floating right",
            group = "client"
        }
    ),

    Awful.key(
        { Modkey, "Mod1", "Shift" }, "l",
        function(c)
            c:relative_move(inc, 0, -inc, 0)
        end,
        {
            description = "resize floating horizontal -",
            group = "client"
        }
    ),

    Awful.key(
        { Modkey, "Shift" }, "n",
        function(c)
            c.maximized = not c.maximized
            c:raise()
        end,
        {
            description = "(un)maximize",
            group = "client"
        }
    ),

    Awful.key(
        { Modkey, }, "o",
        function(c) c:move_to_screen() end,
        {
            description = "move focused to next screen",
            group = "client"
        }
    ),

    Awful.key(
        { Modkey, }, "q",
        function(c) c:kill() end,
        {
            description = "close",
            group = "client"
        }
    ),

    Awful.key(
        { Modkey, }, "t",
        function(c) c.ontop = not c.ontop end,
        {
            description = "toggle keep on top",
            group = "client"
        }
    ),

    Awful.key(
        { Modkey, "Shift" }, "Return",
        function(c)
            c:swap(Awful.client.getmaster())
        end,
        {
            description = "move focused to master",
            group = "client"
        }
    ),

    Awful.key(
        { Modkey, }, "space",
        Awful.client.floating.toggle,
        {
            description = "toggle floating",
            group = "client"
        }
    ),

    Awful.key(
        { Modkey, }, "Tab",
        function()
            Awful.client.focus.history.previous()
            if client.focus then client.focus:raise() end
        end,
        {
            description = "focus previous",
            group = "client"
        }
    )
)
