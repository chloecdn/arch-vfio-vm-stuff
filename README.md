# ONLY FOR AMD CPU's & GPU's

# Some Tutorial for creating a Windows-VM on Archlinux and passing it your GPU, so you can play all Games you want while still daily-driving arch.


First of all, you will need to have some Requirements:
- An AMD-CPU and Motherboard that support Virtualization (Most half-modern Hardware) It's possible with Intel CPU's, but i dont have that Hardware.
- TWO AMD-Graphics cards. Again, i dont have any Nvidia Hardware. Also, you will need two gpu's because one of them will be passed through while the other one stays on your host-system, so you can still use it.
- A spare monitor (Or Looking-Glass, but this has some cons like a little bit of input-delay etc.)

When you have all of this, go into your BIOS and enable both `IOMMU` and `AMD-Vi`. These may be located in different places, and AMD-Vi may even be called `Virtualization support` or similar.

After Booted, you can then check if it's enabled by running:<br>
`sudo dmesg | grep IOMMU`

if you see something like this, you can be sure it is supported and enabled:<br>

