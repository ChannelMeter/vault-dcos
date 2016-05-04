listener "tcp" {
  address = "0.0.0.0:8200"
  tls_cert_file = "/etc/ssl/private/server-cert.pem"
  tls_key_file = "/etc/ssl/private/server-key.pem"
}

telemetry {
	statsd_address = "statsd.marathon.mesos:8125"
}

backend "zookeeper" {
  address = "zoo1:2181,zoo2:2181,zoo3:2181"
  path = "vault"
  advertise_addr = "vault.channelmeter.com:8200"
}

disable_mlock = true