
##Kubernetes Cluster Setup

You can set up kubernetes cluster easily with this ansible playbooks. 

This playbook contains:

* K8s 1.20.x
* Flannel network plugin
* Nginx ingress with daemonset
* Prometheus monitoring tool
* Helm 3.5.x

## Requirements

These playbooks tested on Centos 7.x VM, and you can play also equivalent RHEL instances.

* For accessing vm via ssh, you must add ssh key pair on instance and the user which is setted on playbooks must have sudo permissions and passwordless access to taking sudo competencies. (You can edit this access via visudo)
* You should set same hostname on instances and inventory file.

## Important Note

Worker1 node comes with *taint* label. If you want to deploy pods on worker1 node you must add tolerations (containing monitoringnode=true:NoSchedule). It is necessity for deployments or daemonsets.

You can add tolerations like this:

```
  tolerations:
  - key: "monitoringnodee"
    operator: "Equal"
    value: "true"
    effect: "NoSchedule"
```



## Ansible example commands

Using playbook with inventory :
```
ansible-playbook main.yml -v -i inventory
```

and also you can seperately play roles;

```
ansible-playbook <playbook> -v -i inventory 
```

You can use -vvv or -vvvv for debugging playbook.

