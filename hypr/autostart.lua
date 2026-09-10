-- AUTOSTART
hl.on("hyprland.start", function ()
  hl.exec_cmd('matugen color hex "#ffffff" --import-json "~/.config/matugen/themes/mountain-sunset.json"')
  hl.exec_cmd('mpvpaper -o "loop panscan=1" ALL "~/.local/share/wallpapers/autumn-mountain-sunset.mp4" &>/dev/null &') 
  hl.exec_cmd("waybar &>/dev/null &")
  hl.exec_cmd("mako")
end)
