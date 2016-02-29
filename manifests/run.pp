include 'docker'

docker::run { 'conjur-solo':
   image => 'registry.tld/conjur-appliance',
   ports => ['443:443','636:636','5432:5432'],
}

docker::exec { 'configure-master':
   container => 'conjur-solo',
   command => 'evoke configure master -h conjur.local -p conjur dev', 
   require => Docker::Run['conjur-solo']
}

