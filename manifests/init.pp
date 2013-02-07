class snmp {
  package { "net-snmp":
    ensure => installed
  }

  service { "snmpd":
    ensure    => running,
    hasstatus => true
  }
}
