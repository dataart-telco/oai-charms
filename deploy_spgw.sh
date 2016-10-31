if [ "$#" -ne 2 ]; then
  echo "Specify machine id and env"
  exit 1
fi

config=/tmp/spgw.yaml

echo "$2-spgw:
  sgw-eth: eth1
  pgw-eth: eth0
  branch: master
" > $config

juju deploy --to $1 --series trusty --config $config ./oai-spgw $2-spgw

