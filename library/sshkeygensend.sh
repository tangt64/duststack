case "$1" in
  openstack)
    server=$(awk '{ print $2 }' /etc/hosts | grep ^node)
    password=openstack
    ;;
  kubernetes)
    server=$(awk '{ print $1 }' /etc/hosts | grep ^192.168.122)
    password=kubernetes
    ;;
  *)
    echo "Using: $1 {openstack|kubernetes}"
    exit 1
esac


function sendkeys(){
  for ipadr in ${server} ; do sshpass -p ${password} ssh-copy-id -o PubkeyAuthentication=no -o StrictHostKeyChecking=no root@${ipadr} > /dev/null 2>&1 ; done
exit
}

function genkeys(){
  ssh-keygen -t rsa -N '' -f ~/.ssh/id_rsa > /dev/null 2>&1 
}

if [ -f ~/.ssh/id_rsa ]; then
  echo "the file exist. passed it"
  sendkeys
else
  echo "make a keys and send key to hosts"
  genkeys
  sendkeys
fi
