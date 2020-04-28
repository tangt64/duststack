declare -a ext_ipaddrs

ext_ipaddrs=(192.168.122.110 192.168.122.120 192.168.122.130 192.168.122.140)
ssh-keygen -t rsa -N '' -f ~/.ssh/id_rsa
for ipadr in ${ext_ipaddrs[*]}; do sshpass -p openstack ssh-copy-id -o PubkeyAuthentication=no -o StrictHostKeyChecking=no root@${ipadr} ; done
