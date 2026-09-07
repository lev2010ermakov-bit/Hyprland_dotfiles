-- AUTOSTART
hl.on("hyprland.start", function ()
  hl.exec_cmd('mpvpaper -o "loop panscan=1" ALL "~/.local/share/wallpapers/Pacific-Northwest.jpg" &>/dev/null &') 
  hl.exec_cmd("waybar &>/dev/null &")
  hl.exec_cmd("mako")
end)
