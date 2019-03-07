## ISPconfigure script ##
  
 there are 2 different scripts: 1) install/install.sh installs a full ISPconfig system under a fresh minimal debian 9 install, 2) ./configure configures SSL certificates with letsencrypt, postfix, pureftp, dovecot on the ispconfig server. The ./configure script also creates and activates swapfile. The result is a fully configured debian 9 ispconfig server.

# steps to follow

- set a FQDN for example: mx999.servers.li . Wait for dns refresh before launching scripts
- set the PTR of such domain
- give this name to the server
- install a fresh debian 9 as the minimal from denali (denali.eu or denali.swiss)
- set colors in .bashrc and fix paste on vim on file: /usr/share/vim/vim80/defaults.vim
- set ssh public key for connection
- apt-get update && apt-get upgrade
- run the script for installing ispconfig: cd ispconfigure/install && ./install.sh  (nb: run install.sh from inside its directory, important)
- at this point run cd ispconfigure && ./configure

if all the above went fine, remember to:

- change ispconfig password
- set a firewall inside ispconfig
- reboot

### Who had contributed to this work? ###

* The scripts and instructions have been produced by Matteo Temporini for install script
* The scripts for additional configurations "configure" script by Massimo Musumeci massimo (at) denali.swiss
* Special thanks to Travis CI for adding support to Raspberry and a big number of Bugs
* Special thanks to Torsten Widmann for contribution to the code
* Special thanks to Michiel Kamphuis for contribution to Multiserver Setup integration
* Special thanks to Bartłomiej Gajda for the bug fixes to multiserver setup and beta installation
* The code is based on the "Automatic Debian System Installation for ISPConfig 3" of Author: Mark Stunnenberg
* Howtoforge community
