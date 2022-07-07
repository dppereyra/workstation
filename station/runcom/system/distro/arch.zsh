update-system() {
  sudo pacman -Syu
  yay -Syu --aur
}

update-mirrors() {
  sudo reflector \
    -a 24 \
    -f 50 \
    -l 200 \
    --verbose \
    --threads 10 \
    -p https,http,ftp \
    --download-timeout 60 \
    --connection-timeout 30 \
    --save /etc/pacman.d/mirrorlist
}
