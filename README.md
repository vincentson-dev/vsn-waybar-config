# vsn-waybar-config

run in terminal

git clone https://github.com/vincentson-dev/vsn-waybar-config.git && \
cp vsn-waybar-config/config.jsonc ~/.config/waybar/config.jsonc && \
cp svn-waybar-config/style.css ~/.config/waybar/style.css && \
mkdir -p ~/.config/waybar/scripts && \
cp vsn-waybar-config/scripts/*.sh ~/.config/waybar/scripts/ && \
chmod +x ~/.config/waybar/scripts/*.sh && \
omarchy-restart-waybar
