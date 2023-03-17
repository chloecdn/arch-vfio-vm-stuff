# arch-vfio-vm-stuff

This contains a few scripts i created to automate creating a vfio-setup on arch.
Use these scripts with caution. They may break.

My Hardware:
- Ryzen 7 5800X3D
- Gigabyte Aorus Elite v2 B450 Rev1.x
- AMD Radeon RX 6900 XT (Used for the VM)
- AMD Radeon RX 6600 XT (Used for the Host)

1: Run the script `isolate.sh` **as root-user. Sudo isn't enough!**: ``
- This will put the overide-script onto your system, and add the required kernel-modules and files.
