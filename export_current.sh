rm -rf ./hypr/*
rm -rf ./waybar/*
rm -rf ./cava/*
rm -rf ./kitty/*
rm -rf ./wallpapers/*
rm -rf ./matugen/*

cp -r ~/.config/hypr/*            ./hypr
cp -r ~/.config/waybar/*          ./waybar
cp -r ~/.config/cava/*            ./cava
cp -r ~/.config/kitty/*           ./kitty
cp -r ~/.local/share/wallpapers/* ./wallpapers
cp -r ~/.config/matugen/*         ./matugen
echo -e "configs have been copied from ~/.config dir"
