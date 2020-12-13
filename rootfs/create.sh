wget https://raw.githubusercontent.com/alpinelinux/alpine-make-rootfs/v0.5.1/alpine-make-rootfs -O alpine-make-rootfs \
  && echo 'a7159f17b01ad5a06419b83ea3ca9bbe7d3f8c03  alpine-make-rootfs' | sha1sum -c \
  || exit 1
chmod +x alpine-make-rootfs
sudo ./alpine-make-rootfs \
  --branch v3.12 \
  --packages 'openrc util-linux' \
  --timezone 'Europe/Budapest' \
  --script-chroot \
    rootfs-$(date +%Y%m%d).tar.gz - <<'SHELL'
    ln -s agetty /etc/init.d/agetty.ttyS0
    echo ttyS0 > /etc/securetty
    echo 'nameserver 1.1.1.1' > /etc/resolv.conf
    rc-update add agetty.ttyS0 default
    rc-update add devfs boot
    rc-update add procfs boot
    rc-update add sysfs boot
SHELL

dd if=/dev/zero of=alpine.ext4 bs=1 count=1 seek=256M
mkfs.ext4 alpine.ext4
sudo mkdir /tmp/alpine-rootfs
sudo mount alpine.ext4 /tmp/alpine-rootfs
sudo tar xzvf rootfs-$(date +%Y%m%d).tar.gz -C /tmp/alpine-rootfs
sudo umount /tmp/alpine-rootfs
 

