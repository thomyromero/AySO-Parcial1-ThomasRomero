lsblk
NAME   MAJ:MIN RM  SIZE RO TYPE MOUNTPOINTS
loop0    7:0    0   87M  1 loop /snap/lxd/29351
loop1    7:1    0   64M  1 loop /snap/core20/2379
loop2    7:2    0 38.8M  1 loop /snap/snapd/21759
loop3    7:3    0 74.2M  1 loop /snap/core22/1621
loop4    7:4    0  4.4M  1 loop /snap/tree/54
sda      8:0    0   40G  0 disk
└─sda1   8:1    0   40G  0 part /
sdb      8:16   0   10M  0 disk
sdc      8:32   0   10G  0 disk
├─sdc1   8:33   0    1G  0 part
├─sdc2   8:34   0    1G  0 part
├─sdc3   8:35   0    1G  0 part
└─sdc4   8:36   0    1K  0 part
sdd      8:48   0    2G  0 disk

 lsblk
   64  ls /dev/
   65  sudo fdisk /dev/sdc
   66  lsblk
   67  vim puntob.sh
   68  ll /mt/
   69  ll /mnt/
   70  mkdir /mnt/sdc1
   71  sudo mkdir /mnt/sdc1
   72  ll /mnt/
   73  sudo mount -t ext4/dev/sdc1 /mnt/sdc1
   74  sudo mkfs.ext4 /dev/sdc1
   75  sudo mount /dev/sdc1 /mnt/sdc1
   76  ll /m
   77  ll /mnt/sdc1/
   78  /dev
