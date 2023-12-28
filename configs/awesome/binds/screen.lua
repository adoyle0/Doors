-- Binds related to screens

globalkeys = Gears.table.join(
    globalkeys,

    Awful.key(
        { Modkey, }, "h",
        function() Awful.screen.focus_relative(-1) end,
        {
            description = "focus previous screen",
            group = "screen"
        }
    ),

    Awful.key(
        { Modkey, }, "l",
        function() Awful.screen.focus_relative(1) end,
        {
            description = "focus next screen",
            group = "screen"
        }
    )
)
