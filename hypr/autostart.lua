-- AUTOSTART
default_theme = "forest.json"
hl.on("hyprland.start", function ()
  hl.exec_cmd('matugen color hex "#ffffff" -j "~/.config/matugen/themes/ .." + default-theme')
  hl.exec_cmd('mpvpaper -o "loop panscan=1" ALL "~/.local/share/wallpapers/Autumn-River.png &>/dev/null &') 
  hl.exec_cmd("waybar &>/dev/null &")
  hl.exec_cmd("mako")
end)
