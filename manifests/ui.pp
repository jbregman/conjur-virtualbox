include 'docker'

docker::run { 'conjur-ui':
   image => 'conjurinc/conjur-ui',
   ports => ['8443:443'],
   env => ['CONJUR_APPLIANCE_URL=https://conjur.local','SERVER_HOSTNAME=conjur.local','SERVER_SSL_KEY="$(cat /vagrant/conjur.local.key)"','SERVER_SSL_CERT="$(cat /vagrant/conjur.local.crt)"'],
   links => ['conjur-solo:conjur.local']
}

