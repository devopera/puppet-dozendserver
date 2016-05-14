class dozendserver::firewall (

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
    @docommon::fireport { "000${port} HTTP web service":
      protocol => 'tcp',
      port     => $port,
    }
  }
  
  if ($port_https) {
    @docommon::fireport { "00${port_https} HTTPS web service":
      protocol => 'tcp',
      port     => $port_https,
    }
  }
  
}
