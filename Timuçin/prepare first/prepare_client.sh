#Interface isimleri

ip link set enp0s3 down
ip link set enp0s3 name cg0
ip link set cg0 up

#Interface ipleri

ip addr add 10.1.0.2/24 dev cg0

#Routing

#iptables
