if [ "$#" -ne 2 ]; then
  echo "Specify machine id and env"
  exit 1
fi

config=/tmp/vcard1.yaml

echo "$2-oai-mme:
  eth: eth1
  branch: master
" > $config

juju deploy --to $1 --series trusty --config $config ./oai-mme $2-oai-mme

