class dozendserver::monitor (

  # class arguments
  # ---------------
  # setup defaults
  
  $port = 80,
  $port_https = 443,

  # end of class arguments
  # ----------------------
  # begin class

) {

  if ($port) {
    # if we've named a port, setup the check against that port
    @nagios::service { "http:${port}-dozendserver-${::fqdn}":
      check_command => "http_port!${port}",
    }
  }

  if ($port_https) {
    # if we've named a secure port, setup the check against that port
    @nagios::service { "https:${port_https}-dozendserver-${::fqdn}":
      check_command => "check_https_nocert",
    }
  }

}
