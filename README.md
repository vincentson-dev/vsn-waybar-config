run in terminal

git -C ~/vsn-waybar-config pull && \
cp ~/vsn-waybar-config/config.jsonc ~/.config/waybar/config.jsonc && \
cp ~/vsn-waybar-config/style.css ~/.config/waybar/style.css && \
mkdir -p ~/.config/waybar/scripts && \
cp ~/vsn-waybar-config/scripts/*.sh ~/.config/waybar/scripts/ && \
chmod +x ~/.config/waybar/scripts/*.sh && \
omarchy-restart-waybar
