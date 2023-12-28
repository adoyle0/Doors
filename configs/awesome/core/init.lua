-- Handle startup errors
if awesome.startup_errors then
    Naughty.notify(
        {
            preset = naughty.config.presets.critical,
            title = "Oops, there were errors during startup!",
            text = awesome.startup_errors
        }
    )
end

-- Handle runtime errors after startup
do
    local in_error = false

    awesome.connect_signal(
        "debug::error",
        function(err)
            -- Make sure we don't go into an endless error loop
            if in_error then
                return
            end

            in_error = true

            Naughty.notify(
                {
                    preset = naughty.config.presets.critical,
                    title = "Oops, an error happened!",
                    text = tostring(err)
                }
            )
            in_error = false
        end
    )
end

require("awful.autofocus")
require("awful.hotkeys_popup.keys")

Awful         = require("awful")
Beautiful     = require("beautiful")
Gears         = require("gears")
Hotkeys_popup = require("awful.hotkeys_popup")
Menubar       = require("menubar")
Naughty       = require("naughty")
Wibox         = require("wibox")
