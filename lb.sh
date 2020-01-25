sudo lxc-attach --clear-env -n lb -- sudo apt-get update
sudo lxc-attach --clear-env -n lb -- sudo apt-get install haproxy
sudo scp haproxy.py root@lb:/root
sudo lxc-attach --clear-env -n lb -- sudo python3 root/haproxy.py