#!/bin/bash
set -e

echo "Inicializando"
vagrant up dns-server dhcp-server --no-provision

echo "Provisionando DNS"
ansible-playbook playbooks/dns-server.yaml

echo "Provisionando DHCP"
ansible-playbook playbooks/dhcp-server.yaml

echo "Esperando unos segundos para que los servicios arranquen"
sleep 10

echo "Levantando cliente"
vagrant up c1 --provision

echo "HECHO"