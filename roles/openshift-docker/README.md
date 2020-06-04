# run for test

```
# yum install libguestfs-tools-c
# yum install virt-install
```
```
# virt-builder centos-7.7 --root-password password:openshift --size 20G --format qcow2 -o /var/lib/libvirt/images/ocp-docker.qcow2 
```

# In OCP VM
```
# hostnamectl set-hostname ocp.example.com
```

```
# yum install docker 
```

```
# docker run -d --name oc-cluster-up -it -p 9000:9000 -v /tmp/:/tmp/ -v /var/run/docker.sock:/var/run/docker.sock gustavonalle/oc-cluster-up
```

## account information

**admin id:** system

**admin pw:** admin

## use "oc" command out side of container
```
# export KUBECONFIG=/tmp/openshift-dind-cluster/openshift/openshift.local.config/master/admin.kubeconfig
```