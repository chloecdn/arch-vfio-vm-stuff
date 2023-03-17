MODULES=(vfio_pci vfio vfio_iommu_type1)
BINARIES=()
FILES=(/usr/local/bin/vfio-pci-override.sh)
HOOKS=(base systemd autodetect keyboard sd-vconsole block filesystems modconf fsck)
