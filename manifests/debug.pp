class dozendserver::debug (

  # class arguments
  # ---------------
  # setup defaults

  $zend_port = 10081,

  # end of class arguments
  # ----------------------
  # begin class

) {

  # set apache/PHP to show errors
  augeas { 'zend-php-ini-display-errors' :
    context => '/files/usr/local/zend/etc/php.ini/PHP',
    changes => [
     'set display_errors On',
    ],
    require => Package['zend-web-pack'],
    before => Service['zend-server-startup'],
  }

  # open up Zend Server ports
  @docommon::fireport { "${zend_port} Zend Server debugging port":
    protocol => 'tcp',
    port => $zend_port,
  }
  # if we've got a message of the day, include Zend
  @domotd::register { "Zend(${zend_port})" : }

}
