class sudo {
  $required = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => 'sudo',
  }

  package { $required: ensure => latest }

  file { '/etc/sudoers.d':
    ensure  => directory,
    owner   => 'root',
    group   => 'root',
    mode    => '0750',
    recurse => true,
    force   => true,
    purge   => true,
  }

}
