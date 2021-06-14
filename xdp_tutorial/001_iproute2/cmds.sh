#compile 
clang -O2 -target bpf -c xdp01.c -o xdp01.o

#load ( ifname: enp1s0 )
ip link set dev enp1s0 xdp obj xdp01.o sec mysection

#verify
ip a show enp1s0

#unload
ip link set dev enp1s0 xdp off


