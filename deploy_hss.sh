if [ "$#" -ne 1 ]; then
  echo "Specify machine id"
  exit 1
fi

config=/tmp/vcard1.yaml

echo "oai-hss:
  eth: eth1
  branch: master
" > $config

juju deploy --to $1 --series trusty --config $config ./oai-hss

