#!/bin/sh
# Set the root password to guest
sudo mount /dev/sda1 /mnt
sudo sed -i 's#root:.*:$#root:$6$aY4k4wkeu8OgIL.y$5JH3/VNXdLbvwU1rJAiXgcbMTmCKpIPcJZt8Xk4Kcx71DEOWPhfiQvbdyAka0gJ0d3u9dymmSE85ZNvhKRE4E1:17206:0:99999:7:::#' /mnt/etc/shadow
/sbin/poweroff -f
