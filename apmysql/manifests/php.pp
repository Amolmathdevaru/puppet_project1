#class php {

#	$php = $osfamily ? {

#	'redhat' => 'php5',
#		'debian' => 'php5',
#		default => 'php5',
#	}
#	
#	package { $php:
#		
#		ensure => 'installed',
#		version => '5',
#	}
#	
#}
