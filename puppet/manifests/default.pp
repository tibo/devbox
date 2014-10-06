# Postgres
class install_postgres {

  class { 'postgresql::server':
    ip_mask_allow_all_users    => '0.0.0.0/32',
    listen_addresses           => '*',
    postgres_password          => 'secret',
  }

  postgresql::server::db { 'myrailsapp_dev':
    user     => 'rails',
    password => postgresql_password('rails', 'secret'),
  }

  package { 'libpq-dev':
    ensure => installed
  }

  package { 'postgresql-contrib':
    ensure  => installed,
    require => Class['postgresql::server'],
  }
}

class { 'install_postgres': }

# Redis

class { 'redis': }

# Utils

package { 'curl':
  ensure => installed
}

package { 'git-core':
  ensure => installed
}

package { ['libxml2', 'libxml2-dev', 'libxslt1-dev']:
  ensure => installed
}

# Ruby

class { 'rvm': }
rvm::system_user { 'vagrant': }
rvm_system_ruby {
  'ruby-2.1.3':
    ensure      => 'present',
    default_use => true,
}