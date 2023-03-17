wget -O /usr/local/bin/vfio-pci-override.sh https://raw.githubusercontent.com/chloecdn/arch-vfio-vm-stuff/main/vfio-pci-override.sh

chmod +x /usr/local/bin/vfio-pci-override.sh

read -p 'Are you using Btrfs? [y/n] ' isBtrfs

if [ "$isBtrfs" = "y" ]; then
  wget -O /etc/mkinitcpio.conf https://raw.githubusercontent.com/chloecdn/arch-vfio-vm-stuff/main/etc/mkinitcpio.conf.btrfs
elif [ "$isBtrfs" = "n" ]; then
  wget -O /etc/mkinitcpio.conf https://raw.githubusercontent.com/chloecdn/arch-vfio-vm-stuff/main/etc/mkinitcpio.conf
fi
