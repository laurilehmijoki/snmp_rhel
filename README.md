# SNMP Puppet Forge module for RHEL

## Features

* Install SNMP (Simple Network Management Protocol)
* Add `exec` statements into `/etc/snmp/snmpd.conf`

## Install

    puppet module install llehmijo/snmp_rhel

## Usage

    # In site.pp
    node "superserver" {
      snmp_rhel::snmpd_exec { "my-monitoring-task":
        command => "/opt/monitoring-scripts/check_service_state.sh"
      }
    }

The above snippet will append the line `exec my-monitoring-task
/opt/monitoring-scripts/check_service_state.sh` into `/etc/snmp/snmpd.conf`. If
the line already exists, `snmp_rhel::snmpd_exec` will do nothing.

## Links

This project in Puppet Forge: <http://forge.puppetlabs.com/llehmijo/snmp_rhel>.

## License

MIT
