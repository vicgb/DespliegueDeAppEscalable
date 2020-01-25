sudo scp fw.fw root@fw:/root
sudo scp fw.fwb root@fw:/root
sudo lxc-attach --clear-env -n fw -- sudo sh /root/fw.fw