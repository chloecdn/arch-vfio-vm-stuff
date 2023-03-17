wget -O /usr/local/bin/vfio-pci-override.sh https://raw.githubusercontent.com/chloecdn/arch-vfio-vm-stuff/main/vfio-pci-override.sh

chmod +x /usr/local/bin/vfio-pci-override.sh

while true; do
    read -p "Are you using Btrfs? [y/n]" yn
    case $yn in
        [Yy]* ) wget -O /etc/mkinitcpio.conf https://raw.githubusercontent.com/chloecdn/arch-vfio-vm-stuff/main/etc/mkinitcpio.conf.btrfs;;
        [Nn]* ) wget -O /etc/mkinitcpio.conf https://raw.githubusercontent.com/chloecdn/arch-vfio-vm-stuff/main/etc/mkinitcpio.conf;;
        * ) echo "Are you using Btrfs? [y/n]";;
    esac
done
