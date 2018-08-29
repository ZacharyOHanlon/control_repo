class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAACAQDDq/FujqxtovnXdlwC/IyFHPEWtRzvHp5o8qD3hIXmXVGHcxz3JK7ModVx1XEbHXq51+AxqcKpPMS/IC7vqowSVDDxYxkph/bSDZwHgXMjasdND1WM4qTjQ6H8m0vnZBvVKepYRIIwOk6NIsK+mtOPm0gp2AZjrgzEBcg8mhpegp3aQ/Pxn+GlvhDicaQ24J0f2pklMkTco9roc5uLyPjlefdguZQxvVYomDwXo0YJBAXPAJNByKmIf4tgrVlR79kZtFWlRdineLj9LolDieXSXcn9j2Szjt7YWQu7d/jbE2DPRstbgYde8cgesRm89ab/InJqwAY0w6+AU/oQ7dPVHQt14pnBMbc5IQt77z70lr4O26Uuo0oHkglHXBelEM53lP6/XJU64CosKCZeg0stdeXT54ILdxuZoWsQ4pTDCusIsz1/8u4A7MEZ1TyjnDp/3RxO3bM5x6/wEaZaEsmoAgg3ilp2BfuXJzQNOZCBgj97DYNI43kpAK6j6DEN/yAJUI0rUjMh4CMPmuAjAGOTpdLPTmq7Ukwz+qDpbw0Vt5mnp3D6CBe3ihIs8XqP7fhm+2HBdHvfBQ94/0NfEsxec823mjEmG+csAGW0vh+WmOofFu7TJCnktYelLyuJ1iWkAAXaoIGU92O1S4RKUVV9BVrsemU3rLRJoEF0IOA4dw==',
	}  
}
