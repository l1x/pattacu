# pattacu

CLI for AWS Firecracker

[பட்டாசு](https://tamildictionary.org/tamil_english.php?id=13396)

## Why

I wanted to learn more about Firecracker and I could not compile Firectl on ARM easily so I started to write a CLI in Python that is much easier to use on any CPU architecture.

## How

Most of the functionality is implemented as a simpple Python function. It is a single file using few imports. The HTTP calls are implemented using http.client and urllib.parse.


## Status

This is the current status in alphabetical order. All API methods are implemented that are required to start up a guest instance with networking.

* [ ] createSnapshot
* [x] createSyncAction
* [ ] describeBalloonConfig
* [ ] describeBalloonStats
* [x] describeInstance
* [ ] getMachineConfiguration
* [ ] loadSnapshot
* [ ] mmdsConfigPut
* [ ] mmdsGet
* [ ] mmdsPatch
* [ ] mmdsPut
* [ ] patchBalloon
* [ ] patchBalloonStatsInterval
* [ ] patchGuestDriveByID
* [ ] patchGuestNetworkInterfaceByID
* [x] patchMachineConfiguration
* [ ] patchVm
* [ ] putBalloon
* [x] putGuestBootSource
* [x] putGuestDriveByID
* [x] putGuestNetworkInterfaceByID
* [ ] putGuestVsock
* [ ] putLogger
* [ ] putMachineConfiguration
* [ ] putMetrics

## The complete workflow

This is the complete workflow:

### Giving access

We need to access /dev/kvm with our user and be able to bind on port 80 as well (using socat). Socat is required because Firecracker uses a unix socket and I wanted to just being able to use a normal network socket instead. 

```bash
sudo setfacl -m u:$USER:rw /dev/kvm
sudo setcap cap_net_bind_service=+ep /usr/bin/socat
```

### Starting up socat and Firecracker

```bash
socat -v -v TCP-LISTEN:80,reuseaddr,fork UNIX-CLIENT:/data/fc/firecracker.socket &
rm -f /data/fc/firecracker.socket 
./firecracker --api-sock /data/fc/firecracker.socket --level Debug --log-path /data/fc/firecracker.log --show-log-origin --id fc-test
```

### Configuring host networking

```bash
sudo ip addr add 172.16.0.1/24 dev tap0
sudo ip link set tap0 up
sudo sh -c "echo 1 > /proc/sys/net/ipv4/ip_forward"
sudo iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
sudo iptables -A FORWARD -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT
sudo iptables -A FORWARD -i tap0 -o eth0 -j ACCEPT
```

### Starting the guest VM

```bash
./bin/pattacu put-boot-source \
	--boot-args "keep_bootcon console=ttyS0 reboot=k panic=1 pci=off ip=172.16.0.42::172.16.0.1:255.255.255.0::eth0:off" \
	--kernel-image-path /data/fc/arm64/kernel/4.14.210.image

./bin/pattacu put-drives \
	--drive-id rootfs \
	--path /data/fc/arm64//rootfs/alpine.rootfs.ext4 \
	--read-only false \
	--root-device true

./bin/pattacu put-machine-config --mem-size-mib 128 --vcpu-count 2 --ht-enabled false

./bin/pattacu put-network-interfaces --iface-id eth0 --guest-mac "AA:FC:00:00:00:01" --host-dev-name tap0

./bin/pattacu put-actions --action-type InstanceStart
```

Enjoy! PRs are welcome.


