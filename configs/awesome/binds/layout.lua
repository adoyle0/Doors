-- Binds that affect layout

globalkeys = Gears.table.join(
    globalkeys,

    Awful.key(
        { Modkey, "Shift" }, "h",
        function() Awful.tag.incmwfact(-0.05) end,
        {
            description = "resize split -",
            group = "layout"
        }
    ),

    Awful.key(
        { Modkey, "Shift" }, "l",
        function() Awful.tag.incmwfact(0.05) end,
        {
            description = "resize split +",
            group = "layout"
        }
    ),

    Awful.key(
        { Modkey, }, "[",
        function() Awful.layout.inc(1) end,
        {
            description = "select next",
            group = "layout"
        }
    ),

    Awful.key(
        { Modkey, }, "]",
        function() Awful.layout.inc(-1) end,
        {
            description = "select previous",
            group = "layout"
        }
    )
)
