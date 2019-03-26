#class mysql {
#	
#	$sql = $osfamily ? {
#		'redhat' => 'mysql-server',
#		'debian' => 'mysql-server',
#		default => 'mysql-server',
#	
#	}
#	
#	package { $sql:
#		ensure => 'present',
#		
#	}
#	service { $sql:
#		ensure => 'running',
#		enable => 'true',
#		
#	
#	}
##}
