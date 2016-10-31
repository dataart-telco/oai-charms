if [ "$#" -ne 2 ]; then
  echo "Specify machine id and env"
  exit 1
fi

config=/tmp/$2-spgw.yaml

echo "$2-spgw:
  sgw-eth: eth1
  pgw-eth: eth0
  branch: master
  revision: 6a6ee500ce13df3ae37dc6671ffc9e144df92f45
" > $config

juju deploy --to $1 --series trusty --config $config ./oai-spgw $2-spgw

