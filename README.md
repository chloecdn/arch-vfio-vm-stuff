# arch-vfio-vm-stuff

# DONT USE THIS - ITS STILL IN WORK!

This contains a few scripts i created to automate creating an amd-vfio-setup on arch.
Use these scripts with caution. They are made for my specific hardware, and while they should work on most other AMD-Hardware, they will most likely break on Intel/Nvidia.

My Hardware:
- Ryzen 7 5800X3D
- Gigabyte Aorus Elite v2 B450 Rev1.x
- AMD Radeon RX 6900 XT (Used for the VM)
- AMD Radeon RX 6600 XT (Used for the Host)

1: Enable IOMMU and Virtualization (AMD-V) in your Motherboard's BIOS.

2: Run the script `isolate.sh` **as root-user. Sudo isn't enough!**:<br>
`bash <(curl -s https://raw.githubusercontent.com/chloecdn/arch-vfio-vm-stuff/main/isolate)`<br>
- This will put the overide-script onto your system, add the required kernel-modules and files and then rebuild the modules.
- When done, reboot your system. Your Other GPU's should now be isolated.

3: Download all the Required packages for Virtualization:<br>
`sudo pacman -S qemu libvirt edk2-ovmf virt-manager virt-viewer swtpm iptables-nft dnsmasq`
- If prompted, choose `qemu-full` and replace the default iptables-package.

4: Enable Libvirt and add yourself to the libvirt group:<br>
`sudo systemctl enable --now libvirtd virtlogd`<br>
`sudo usermod -aG libvirt yourusername`
- Virtlogd isn't required, but recommended if you care about error logging.

5: Create a Virtual Machine inside `Virtual Machine Manager`
- Click `Create a new Virtual Machine`
- Give it a win10/win11 iso
- Give it about half of your memory, and about 60-80% of your cpu threads.
- Give it as much space as you want, i'm giving it 512GB on my 1TB drive
- **KEEP THE NAME EITHER win10 OR win11, depending on what you use.**
