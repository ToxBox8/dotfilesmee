-- Auto-start config
-- if you dont use UWSM add your auto start programs here, otherwise use XDG autostart

hl.on("hyprland.start", function ()
    hl.exec_cmd("dbus-update-activation-environment --systemd --all")

    if os.getenv("NOCTALIA_VERSION") == "5" then
        hl.exec_cmd("noctalia --daemon")
    else
        hl.exec_cmd("qs -c noctalia-shell")
    end

    hl.exec_cmd("xhost +SI:localuser:root")
end)
