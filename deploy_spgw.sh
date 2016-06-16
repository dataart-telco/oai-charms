if [ "$#" -ne 1 ]; then
  echo "Specify machine id"
  exit 1
fi

config=/tmp/spgw.yaml

echo "spgw:
  sgw-eth: eth1
  pgw-eth: eth0
  branch: master
" > $config

juju deploy --to $1 --series trusty --config $config ./oai-spgw spgw

