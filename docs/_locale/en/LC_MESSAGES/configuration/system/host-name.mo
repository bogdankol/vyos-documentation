��          �      \      �  4  �           �     k   �  �     �   �     �     �     �  	   �         
  
     0        L  $   d  �   �  o   +	  �   �	  4  v
    �     �  �   �  k   O  �   �  �   �     x          �  	   �     �    �  
   �  0   �     �  $   	  �   .  o   �     	      
                                                                                        A domain name is the label (name) assigned to a computer network and is thus unique. VyOS appends the domain name as a suffix to any unqualified name. For example, if you set the domain name `example.com`, and you would ping the unqualified name of `crux`, then VyOS qualifies the name to `crux.example.com`. A hostname is the label (name) assigned to a network device (a host) on a network and is used to distinguish one device from another on specific networks or over the internet. On the other hand this will be the name which appears on the command line prompt. Aliases Configure system domain name. A domain name must start and end with a letter or digit, and have as interior characters only letters, digits, or a hyphen. Create a static hostname mapping which will always resolve the name `<hostname>` to IP address `<address>`. Create named `<alias>` for the configured static mapping for `<hostname>`. Thus the address configured as :cfgcmd:`set system static-host-mapping host-name <hostname> inet <address>` can be reached via multiple names. Do *not* manually edit `/etc/hosts`. This file will automatically be regenerated on boot based on the settings in this section, which means you'll lose all your manual edits. Instead, configure static host mappings as follows. Domain Domain Name Host Information Host name Hostname How an IP address is assigned to an interface in :ref:`ethernet-interface`. This section shows how to statically map an IP address to a hostname for local (meaning on this VyOS instance) name resolution. This is the VyOS equivalent to `/etc/hosts` file entries. IP address Multiple aliases can pe specified per host-name. Static Hostname Mapping The default hostname used is `vyos`. The hostname can be up to 63 characters. A hostname must start and end with a letter or digit, and have as interior characters only letters, digits, or a hyphen. This section describes the system's host information and how to configure them, it covers the following topics: MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Localazy (https://localazy.com)
Project-Id-Version: 
Language: en
Plural-Forms: nplurals=2; plural=(n==1) ? 0 : 1;
 A domain name is the label (name) assigned to a computer network and is thus unique. VyOS appends the domain name as a suffix to any unqualified name. For example, if you set the domain name `example.com`, and you would ping the unqualified name of `crux`, then VyOS qualifies the name to `crux.example.com`. A hostname is the label (name) assigned to a network device (a host) on a network and is used to distinguish one device from another on specific networks or over the internet. On the other hand this will be the name which appears on the command line prompt. Aliases Configure system domain name. A domain name must start and end with a letter or digit, and have as interior characters only letters, digits, or a hyphen. Create a static hostname mapping which will always resolve the name `<hostname>` to IP address `<address>`. Create named `<alias>` for the configured static mapping for `<hostname>`. Thus the address configured as :cfgcmd:`set system static-host-mapping host-name <hostname> inet <address>` can be reached via multiple names. Do *not* manually edit `/etc/hosts`. This file will automatically be regenerated on boot based on the settings in this section, which means you'll lose all your manual edits. Instead, configure static host mappings as follows. Domain Domain Name Host Information Host name Hostname How an IP address is assigned to an interface in :ref:`ethernet-interface`. This section shows how to statically map an IP address to a hostname for local (meaning on this VyOS instance) name resolution. This is the VyOS equivalent to `/etc/hosts` file entries. IP address Multiple aliases can pe specified per host-name. Static Hostname Mapping The default hostname used is `vyos`. The hostname can be up to 63 characters. A hostname must start and end with a letter or digit, and have as interior characters only letters, digits, or a hyphen. This section describes the system's host information and how to configure them, it covers the following topics: 