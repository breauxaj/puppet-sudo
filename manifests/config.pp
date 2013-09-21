define sudo::config (
  $priority,
  $rules
) {
  file { "/etc/sudoers.d/${priority}-${name}":
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0440',
    content => template('sudo/rule.erb'),
  }

}
