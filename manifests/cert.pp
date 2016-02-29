$certdir="/vagrant"

exec {'create_self_signed_sslcert':
  command => "openssl req -newkey rsa:2048 -nodes -keyout ${::fqdn}.key  -x509 -days 365 -out ${::fqdn}.crt -subj '/CN=${::fqdn}'",
  cwd     => $certdir,
  creates => [ "${certdir}/${::fqdn}.key", "${certdir}/${::fqdn}.crt", ],
  path    => ["/usr/bin", "/usr/sbin"]
}
