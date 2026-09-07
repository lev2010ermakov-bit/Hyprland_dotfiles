rm -rf ./hypr/*
rm -rf ./waybar/*
rm -rf ./cava/*
rm -rf ./kitty/*
rm -rf ./wallpapers/*

cp -r ~/.config/hypr/*            ./hypr
cp -r ~/.config/waybar/*          ./waybar
cp -r ~/.config/cava/*            ./cava
cp -r ~/.config/kitty/*           ./kitty
cp -r ~/.local/share/wallpapers/* ./wallpapers
echo -e "configs have been copied from ~/.config dir"
