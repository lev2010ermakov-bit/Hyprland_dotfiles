-- AUTOSTART
hl.on("hyprland.start", function ()
  hl.exec_cmd('matugen color hex "#ffffff" --import-json "{{theme_path}}"')
  hl.exec_cmd('mpvpaper -o "loop panscan=1" ALL "~/.local/share/wallpapers/{{wallpapers}}" &>/dev/null &') 
  hl.exec_cmd("waybar &>/dev/null &")
  hl.exec_cmd("mako")
end)
