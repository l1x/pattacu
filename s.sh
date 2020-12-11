#!/usr/bin/env bash

sudo setfacl -m u:$USER:rw /dev/kvm
sudo setcap cap_net_bind_service=+ep /usr/bin/socat

rm -f /data/fc/firecracker.socket 

./build/cargo_target/aarch64-unknown-linux-musl/release/firecracker --api-sock /data/fc/firecracker.socket --level Debug --log-path /data/fc/firecracker.log --show-log-origin --id fc-test

socat -v -v TCP-LISTEN:80,reuseaddr,fork UNIX-CLIENT:/data/fc/firecracker.socket &

sudo ip addr add 172.16.0.1/24 dev tap0
sudo ip link set tap0 up
sudo sh -c "echo 1 > /proc/sys/net/ipv4/ip_forward"
sudo iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
sudo iptables -A FORWARD -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT
sudo iptables -A FORWARD -i tap0 -o eth0 -j ACCEPT

./bin/pattacu put-boot-source \
	--boot-args "keep_bootcon console=ttyS0 reboot=k panic=1 pci=off ip=172.16.0.42::172.16.0.1:255.255.255.0::eth0:off" \
	--kernel-image-path /firecracker/arm64/kernel/4.14.210.image

./bin/pattacu put-drives \
	--drive-id rootfs \
	--path /firecracker/arm64/rootfs/alpine.rootfs.ext4 \
	--read-only false \
	--root-device true

./bin/pattacu put-machine-config --mem-size-mib 128 --vcpu-count 2 --ht-enabled false

./bin/pattacu put-network-interfaces --iface-id eth0 --guest-mac "AA:FC:00:00:00:01" --host-dev-name tap0

./bin/pattacu put-actions --action-type InstanceStart
