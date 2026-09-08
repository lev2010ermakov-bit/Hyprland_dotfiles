read -p "Are you sure? (y/n): " -n 1 -r
echo

if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "Operation canceled"
    exit 1
fi


mkdir -p ~/.config/hypr ~/.config/waybar ~/.config/cava ~/.config/kitty ~/.local/share/wallpapers

echo -e "removing current configs"
rm -rf ~/.config/hypr/*
rm -rf ~/.config/waybar/*
rm -rf ~/.config/cava/*
rm -rf ~/.config/kitty/*
rm -rf ~/.config/wallpapers/*
rm -rf ~/.config/matugen/*

echo -e "coping local configs"
cp -r ./hypr/*       ~/.config/hypr
cp -r ./waybar/*     ~/.config/waybar
cp -r ./cava/*       ~/.config/cava
cp -r ./kitty/*      ~/.config/kitty
cp -r ./wallpapers/* ~/.local/share/wallpapers
cp -r ./matugen/*    ~/.config/matugen
echo -e "done"
