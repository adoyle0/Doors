-- Binds that affect awesome

globalkeys = Gears.table.join(
    globalkeys,

    Awful.key(
        { Modkey, "Shift" }, "e", awesome.quit,
        {
            description = "quit awesome",
            group = "awesome"
        }
    ),

    Awful.key(
        { Modkey, }, "BackSpace",
        awesome.restart,
        {
            description = "reload awesome",
            group = "awesome"
        }
    ),

    Awful.key(
        { Modkey, }, "F1",
        Hotkeys_popup.show_help,
        {
            description = "show help",
            group = "awesome"
        }
    ),

    Awful.key(
        {}, "Print",
        function()
            os.execute("maimpick")
        end,
        {
            description = "run screenshot script",
            group = "awesome"
        }
    )
)
