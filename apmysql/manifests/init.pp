# Class: apmysql
# ===========================
#
# Full description of class apmysql here.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'apmysql':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2019 Your name here, unless otherwise noted.
#
class apmysql {

	$apache = $osfamily ? {
	'redhat' => 'httpd',
        'debian' => 'apache2',
         default => 'apache2',	
	}
	package{ $apache:
		
		ensure => 'present',
	}
	service{ $apache:
		ensure => 'running',
		enable => 'true',
	
	}
class cmd{
        exec{ 'rum a command':
		path => '/bin',
                command => 'echo helo1 > /tmp/hello.txt',
		user => root,	
        }
}

#class php {

 #       $php = $osfamily ? {

 #              'redhat' => 'php5',
 #               'debian' => 'php5',
#                default => 'php5',
#        }
#
#        package { $php:
#
#                ensure => 'installed',
#                version => '5',
#        }
#
#}
#class mysql {
#
#        $sql = $osfamily ? {
#                'redhat' => 'mariadb-server',
#                'debian' => 'mariadb-server',
#                default => 'mariadb-server',
#
#        }
#
#        package { $sql:
#              # ensure => 'present',
#
#       }
#       service { mariadb:
#                ensure => 'running',
#                enable => 'true',
#
#
#        }
#}
}
