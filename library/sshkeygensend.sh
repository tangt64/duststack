declare -a servers
servers=$(awk '{ print $1 }' /etc/hosts | grep ^192.168.122)

function sendkeys(){
  for ipadr in ${servers[*]}; do sshpass -p openstack ssh-copy-id -o PubkeyAuthentication=no -o StrictHostKeyChecking=no root@${ipadr} ; done
exit
}

function genkeys(){
  ssh-keygen -t rsa -N '' -f ~/.ssh/id_rsa
}

if [ -f ~/.ssh/id_rsa ]; then
  echo "the file exist. passed it"
  sendkeys
else
  genkeys
  sendkeys
fi


