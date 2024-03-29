#interface isimleri

ip link set enp0s3 down
ip link set enp0s8 down
ip link set enp0s3 name gc0
ip link set enp0s8 name gr0
ip link set gc0 up
ip link set gr0 up

#interface ipleri

ip addr add 10.1.0.1/24 dev gc0
ip addr add 10.2.0.1/24 dev gr0

#routing

ip route add default via 10.2.0.2 dev gr0
sysctl net.ipv4.ip_forward=1

#iptables


