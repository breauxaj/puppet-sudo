sudo
====

Control the /etc/sudoers file, specifically to make sure that the include of the
contents of /etc/sudoers.d is enabled. The sudo::config creates files in the
/etc/sudoers.d folder.

Samples
-------
```
include sudo
```
```
sudo::config { 'admin':
  priority => '000',
  rules    => '%admin    ALL=(ALL)    NOPASSWD: ALL',
}
```
```
sudo::config { 'httpd':
  priority => '993',
  rules    => 'Cmnd_Alias HTTPD = /sbin/service httpd *, /etc/init.d/httpd *'
}
```
