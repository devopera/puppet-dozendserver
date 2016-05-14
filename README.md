[devopera](http://devopera.com)-[dozendserver](http://devopera.com/module/dozendserver)
============

Zend Server setup for devopera puppet config

Changelog
---------

2014-06-04

  * Using docommon::seport for SELinux ports

2014-04-01

  * Added timeouts for SELinux operations on slow (VPS) machines

2013-10-16

  * Moved across to Zend Server 6.1, left default PHP as 5.3 but this can be changed to 5.4

2013-10-04

  * Extended ::dev manifest to open Zend Server firewall ports for debugger/console access

2013-08-27

  * Changed firewall resources to use docommon::fireport alias, for compatibility with both puppetlabs/firewall and example42/iptables

2013-04-30

  * Moved firewall out to firewall.pp and over to example42 standard

2013-02-25

  * Modified zendserver-selinux-fix to write notifier to parameterized ${notifier_dir}
  * Converted selinux-fix to use && instead of ;

2013-02-19 

  * Included PEAR

Usage
-----

Copyright and License
---------------------

Copyright (C) 2012 Lightenna Ltd

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
