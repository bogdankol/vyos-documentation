��          �      �           	  A     "   ]  !   �  3   �     �  O   �     4     N     b  �   k     C  J   Q     �     �     �  ;   �  2     N   C     �  E   �     �  �   �     �  A   �  "     !   ?  3   a     �  O   �     �          !  �   *     	  J   	     [	     `	     {	  ;   �	  2   �	  N   
     Q
  E   ^
     �
                  
                                                               	                       Accept minion key At this step we can get some op-mode information from VyOS nodes: Check salt-keys on the salt master Check that proxy minion is alive: Check that salt master can communicate with minions Configuration Example of configuration commands from the file "/srv/salt/states/commands.txt" Example of configuration: Example of op-mode: Examples It is possible to configure VyOS via netmiko_ proxy module. It requires a minion with installed packet  ``python3-netmiko`` module who has a connection to VyOS nodes. Salt-minion have to communicate with salt master Netmiko-proxy Please take a look at the Contributing Guide for our :ref:`documentation`. Salt Salt master configuration: Structure of /srv/salt: This section needs improvements, examples and explanations. VyOS supports op-mode and configuration via salt_. Without proxy it requires VyOS minion configuration and supports op-mode data: commands.txt r11-proxy.sls Includes parameters for connecting to salt-proxy minion top.sls MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Localazy (https://localazy.com)
Project-Id-Version: 
Language: en
Plural-Forms: nplurals=2; plural=(n==1) ? 0 : 1;
 Accept minion key At this step we can get some op-mode information from VyOS nodes: Check salt-keys on the salt master Check that proxy minion is alive: Check that salt master can communicate with minions Configuration Example of configuration commands from the file "/srv/salt/states/commands.txt" Example of configuration: Example of op-mode: Examples It is possible to configure VyOS via netmiko_ proxy module. It requires a minion with installed packet  ``python3-netmiko`` module who has a connection to VyOS nodes. Salt-minion have to communicate with salt master Netmiko-proxy Please take a look at the Contributing Guide for our :ref:`documentation`. Salt Salt master configuration: Structure of /srv/salt: This section needs improvements, examples and explanations. VyOS supports op-mode and configuration via salt_. Without proxy it requires VyOS minion configuration and supports op-mode data: commands.txt r11-proxy.sls Includes parameters for connecting to salt-proxy minion top.sls 