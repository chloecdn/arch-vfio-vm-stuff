# Arch VFIO AMD-GPU Isolation

This contains a few scripts i created to automate isolating your GPU on a **fresh** Arch Installation. Don't blame me if something breaks your already working system.
Use these scripts with caution. They are made for my specific hardware, and while they should work on most other AMD-Hardware, they will most likely break on Intel/Nvidia.

My Hardware:
- Ryzen 7 5800X3D
- Gigabyte Aorus Elite v2 B450 Rev1.x
- AMD Radeon RX 6900 XT (Used for the VM)
- AMD Radeon RX 6600 XT (Used for the Host)

1: Enable IOMMU and Virtualization (AMD-V) in your Motherboard's BIOS.

2: Run the script `isolate.sh` **as root-user. Sudo isn't enough!**:<br>
`bash <(curl -s https://raw.githubusercontent.com/chloecdn/arch-vfio-vm-stuff/main/isolate)`
- This will put the overide-script onto your system, add the required kernel-modules and files and then rebuild the modules.
- When done, reboot your system. Your Other GPU's should now be isolated.

3: Download all the Required packages for Virtualization:<br>
`sudo pacman -S qemu libvirt edk2-ovmf virt-manager virt-viewer swtpm iptables-nft dnsmasq`
- If prompted, choose `qemu-full` and replace the default iptables-package.

4: Enable Libvirt and add yourself to the libvirt group:<br>
`sudo systemctl enable --now libvirtd virtlogd`<br>
`sudo usermod -aG libvirt yourusername`

5: Create a Virtual Machine inside `Virtual Machine Manager`. At this point, you should be able to figure stuff out yourself. If not, [here](https://www.youtube.com/watch?v=rA5iLjRTiZQ&t=311s) is some tutorial that i found very helpful. Thanks Skaii!

# Additions:
- I personally don't use stuff like CPU-Pinning, all games i played yet were fine without it.
- I don't own any Intel or NVIDIA-Hardware. Don't ask me about it, i can't provide any help.
