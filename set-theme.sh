echo choose the theme u want to set
ls ~/.config/matugen/themes
echo
read -p "Enter the exact name: " choosed_theme 

matugen color hex "#ffffff" --import-json ~/.config/matugen/themes/$choosed_theme
pkill waybar && waybar &>/dev/null &
